Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23624238C0D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752617994; cv=none; b=GWNSfTVWeVMt/VfJ3y7OqH/5iAmTT7o65ljLDk2L74n8eC914dgKlakyMfK6UWOrzlVpXvix7/FazGDr5mcZcARcgN1O69w34mt0mKE6cUG4384gLD5HmENPWDAFzLuOLBGEsn7BOTYJy3LfusHlNvoZh28i3kPvYBP5kUOZEdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752617994; c=relaxed/simple;
	bh=JoJ9UfCwyU+XG1Fssfo311iQwC6ZYBrF0CR/81b0Ryo=;
	h=To:Subject:From:Message-Id:Date; b=fyETvAbgNTcvtgTlgMrgE2esM/zjk5A0cAo0rRr0qcHW6VtNkJFb1jB/Ihhrjh+viRRnfbVo3Wrbj2qfRfdEd/9d+RvyHxLbylcZmw2rtdj4PjkhStlg82PSwah2bJMxSIcOysWlOeaErxT1ZgDV3XPcYgw8siMRPu5rv0DeU/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZgNWqn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZgNWqn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6494C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752617993;
	bh=JoJ9UfCwyU+XG1Fssfo311iQwC6ZYBrF0CR/81b0Ryo=;
	h=To:Subject:From:Date:From;
	b=eZgNWqn/qYKzQeGzTHVtMs67t7uhrIiFM4KJUraHCuxcZ1KEgkjwGG07GK38ZUVwp
	 aZjwY3ULOd+6MxS7HkqYAlxZkWR1fpmx8CZawhG5RVqTE2eMZBWi6iNVCC9ZTgeVpb
	 SkC/DlyZ4unXLAxUoByroleB65NdZdse0rMNnjmQULmOTMc/2rQwP87neSuHUvdRVs
	 +NrNjoghhU90A4cRDXLG6Y3XMu5dx4EjkudY2v73vJSS5IPszHgLAHGPA1HOQlyrS0
	 nSU2/GlrNtztzpcCCVqJXoT0DuorH4ygg7s93F1l0zdemOPijFj8MAyPq5bWhg28cw
	 OrdnELDs3zV0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C7FC83F27
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261799358.32145.9751962099574321305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1f60486e27f2c2c9c818381dc783f53ffe565a5e7af04ec2e1e4b2b383ec9e
Date: Tue, 15 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752617993
