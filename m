Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4590825CC7A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762762794; cv=none; b=qUzd3z5JbzEzEG9pqtOgj5ebh5AztXXLccsueTJQ2fhwmxwRC/g+MhTTJ/kJDefV9tixH+W1wAxV0TwbPMYaO54I3QdNTLBzyuK5MFmXPNW0Ned7FPDl2BnceM/WS3na0f3py+VMuavBsbFzFmiF1rG7i6aFMOz5R1zsYorv7mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762762794; c=relaxed/simple;
	bh=U5E973bU0LEjqp7mlJKNzHRZwFM1eL6gi+YrS08Ju5I=;
	h=To:Subject:From:Message-Id:Date; b=BdOhpN10orXgw55rEWZ8vxUHTycxMzzpHpYqoiyv1kIl8h1zx983pE03i1QKz6qx5AZSlEQQLtAfAp848u3ONVwep1Vt2QWWPAtX6oRvbQ6QGMoxyxFiuzsyITRs87no8pVihD8iEj/wvuQ/gaPiwTVj4lIARX97IwTTgR3NcHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmjfDNce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmjfDNce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9517C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762762793;
	bh=U5E973bU0LEjqp7mlJKNzHRZwFM1eL6gi+YrS08Ju5I=;
	h=To:Subject:From:Date:From;
	b=jmjfDNceybnYC5eT/d2CHYRGGA56uGKxjoSa90a03Edc+Q/spBulKV41kalp47umk
	 5BDel/gM8pC1+dwzKSyxiBoNCEjDyjyYCcFLVW3b6M+k1suRyhKJ4PwaB+V7DIOtyM
	 9TTd/4mxfy9xiampaNuGToYiU+YbOxSwrx9O2hLfCgi7tP4vX3o9ny6fUGiawFULDM
	 LLhp2/+Yx6DahmFI0m89u8BVBG/LyEpedSvub68qXwVZccWpcfYpkj6eX9Xpa355bY
	 KBGBSi1Epjk/gGEPQO4bYkjLpeQ+1Qf3xn+WBQRLDnvGFUTxlYlFIsnoUlmE3NURn9
	 O/rL7Q6F3tSTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91455CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276279358.4943.1459563149556794163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23d17aa402338f120da5e60b45bf6c22f3995beb8f44307f40d6fe999e4f083
Date: Mon, 10 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762762793
