Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613FB8BFA
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716716063; cv=none; b=Ba2V7rW9y0Tm57q8N5qUmTc/bUEijqxhw2DcOHTHlqWRERfYUQnY6XaieGAYO6uc761YJVSHjTa71TfDkWVqmGXv35ZnIwO99g/H6tpTR8PfJZHxM+Xca2ukPkSOXBciQGtDF1I84cRTtql1N2pTgFVGiKyxsHzX7VVbSfHTjKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716716063; c=relaxed/simple;
	bh=bIfbwB1MRuKxWiVWKYJ2UaocaTydXOqOXZggSDbGNhg=;
	h=To:Subject:From:Message-Id:Date; b=gZIFvABHRdcU9uFJgXz2pxKCJdX5sojyLQWOKAOMOuRubHsYJlcV+0ZWXhmROleC4Jkj7HdHZ/eMP2t84BPQ7VJWornz8jxW4KmJj+L5duav4Gkx5WyuXUoJcA6S9/R5VTqs3YnPsJW7CACdcqgiE8EigPI5EsfsZEykYW3WULI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVyBdgnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVyBdgnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3DCBC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716716062;
	bh=bIfbwB1MRuKxWiVWKYJ2UaocaTydXOqOXZggSDbGNhg=;
	h=To:Subject:From:Date:From;
	b=WVyBdgnzDEekuXQUvwNL7JeoPNDsxa8GZX3O5xQfPVzJxBhgM0Go2N5Sj4Di5DEaH
	 m2wXV6gb5w5H1ZdwSZl5u/kiSUt+xI6HrPu29xtZv3Opbnger5eLPfe/GUaP1nTjW2
	 Cp5C7pNGA21l9EgQuvEdaHUT8zSuot3GP3J7u/8Som98ECD8LGxecrwYus2iHHHYMA
	 C/hAV8wngHKP50ImuV4lgLl9BgR0ko36WIbm/NNhOY6Kb4Adfb6YdeWLaehdW1pNie
	 8UGq842C/9HMjol9plKAv+ywjOo2q/O0tatURoXUSeNGaHSEMTSsB0JYVzHUqWvHfJ
	 CzcLHqxBZOXrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E17C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671606276.16344.12862478452684626779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f157b0cab56ce45f344fbc205821f5782407d742d42245194646f2e473f984e
Date: Sun, 26 May 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716716062
