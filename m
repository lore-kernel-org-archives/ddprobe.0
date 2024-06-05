Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EBFC60263
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717571183; cv=none; b=HXZ42QgVDmFP5zo2i3QT3Y2H+XE5yX+azkANU4DHn1Mzf1XUKP/23d/3MZNseKnbVUFQKMMMBC3lj7xG382Gl+MRq9CWsB4sQkpOxHOGjb2JV/PHhVOVnWa1BZ50SHsBjZ6y7YnSQ6ggt3ET+Fkq5wGmkVVrEVWnH453gHDLZos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717571183; c=relaxed/simple;
	bh=3OzRRPDtrGM5jKwINS7kk+8oUlwo9dK3fGPWyXsTO1I=;
	h=To:Subject:From:Message-Id:Date; b=IyHn7Wn+ljRuShMM5NpOE5ug8AGfXrawq/3MBXk11V/BK5kK4ECCJemLm6psyNXOYOAXT3ZR+UqMnSk4wgAAXM9QgFZDml7w87VcXPyYseoV3RW0VcbRHEOqUR4oF/laE40kOCJ8dLEAr7YFllR9PTwuvfXg0WLybIgIfT805wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ily6850c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ily6850c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9F33C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717571182;
	bh=3OzRRPDtrGM5jKwINS7kk+8oUlwo9dK3fGPWyXsTO1I=;
	h=To:Subject:From:Date:From;
	b=ily6850czzPApwwb8t2paDEWn6VTgPryyjdb3Ti9Q2ZdOmnj2oBQZeHs6dicX++5V
	 WtGiddYWeC3jD9okf2CYEDLCH9qgBFEwH+dyIMvuUNOEmhfRUrrVxt0Y1N6illCQ7g
	 UAk6tIml2MIY2rmhOmNF36gFgeG/0DdRTVgIIC17/tCsZhHrepovWMIUn/biEa1gO2
	 s/SetmH/MfUZzr/Ih1bJkMZtnzJeChnt06VaoyGdvVnwb44r34wWlz6FZhPII9VDbo
	 ghZExAQVf2hvA1lWZi5HPNcLMKKU0YbjYCCCMkT7v0L2wFgrzlm8fQ9M3sJE3DN3sT
	 ItsGwpY6Q3Mzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6345C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757118286.16200.13450777283987575006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b356b673adce5d86c46ea431ff3180ee05fed77885b9b8031162c90e385ac54
Date: Wed, 05 Jun 2024 07:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717571182
