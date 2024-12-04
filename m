Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3726B14A4E9
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733284554; cv=none; b=tGdO5Rial0ASilR6Unmqo7wW8ZJYT7frh0bKQyTiclATsNPl+N8S50yns1JLY68uVZsM1S5IgfGL9iWT8UMKgWU/0zjon14azOsNiRFHKKZ7ooOkchJzYUsloS/6YLBvQzzRaZqdK7dpGNJayvGfuNqXYsEBbjJ7e5oDfhC2ENk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733284554; c=relaxed/simple;
	bh=IAXmNgewNHf0PzGhJLYo3V4JorNxWNbP6oOrjViWOYM=;
	h=To:Subject:From:Message-Id:Date; b=cSQuViP6q8LTixEhJ6Pt6mU+KdspcvSk7HeIO9Xj52HVBHul/6AUOsSzxnlfLbAdXn9V3AG3DTqzy+HxS11U119ZO3Y/ReaFFeJSMtgjxoITYPvMbEAkiaqje2ymxludCLB7HtqrfaKEznYomHg0fLjKaIo81aMzHRFmrm6ftmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CL6acEp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CL6acEp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9EEC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733284553;
	bh=IAXmNgewNHf0PzGhJLYo3V4JorNxWNbP6oOrjViWOYM=;
	h=To:Subject:From:Date:From;
	b=CL6acEp/+LAFGVoMQYGj24jow2EXtI0hY+N2G+AGlA5jVQ+usSGuPiuWrVQrC/6n+
	 +ohTX946XDRwSqav3qYBWQ3I7GGozNkpVk8co9R+U4WLoJz435N28rbZu2VG+8IxKA
	 /9H9WPNZ77VWKdAE/gCSE7pmrP2uAC+HTO2QZnScUewiGHeR6mYQAhmXzm4QlAzDaf
	 0O86DjAwBE9DlIzNq3muJ5zxcJImAYGseNK1tzIjl9XMNS6F8M2e6OTZMG+ngOmRCX
	 Nly1cQVLncZXK4gkxw31kGKQToIjTQAvH+LpgT5Y3gFYubDRH6+SUGtjIr+QEUl82U
	 okkBF3ZBKjU4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E52E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173328455361.30184.11820875773485037794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40724a63ada094c3ff42e6f2c8e8880b1b43fa3e907196dda6bdcb257e37a835
Date: Wed, 04 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733284553
