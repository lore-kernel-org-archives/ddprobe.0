Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BE94C9DFE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791213034; cv=none; b=V9i7BJV2pj+SRRwcDKXxeWYOSNo91Q13q9NQ2VL3EsHpN8ViEyGCED8jmVEMC8YJ/+YNOQ7RxmKWB+8ATukRP8iSZ3O00NrOJnRPEQJnlAOWaSFwanYGIN/9bloa5lPUQgPkEcGwT1fw/XUGKQYmZXdQ4YXhmXC1Z1MCmyu/PcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791213034; c=relaxed/simple;
	bh=1ArgelBQeh0FkdqM1BXOusJdY2jDAQThc9XtrkJBEfs=;
	h=To:Subject:From:Message-Id:Date; b=KEk3hHIWh6VGTcovw+45zSfLNB5lxqwVNzvH5vrlB8WJG6IgspPYMtJaQYxmSf9g2K4P7eImNFdOzXi4tR9gKmqL4WbBNnXcPA0QR4iAnEKQrQ8Nyya6rn1gx4ab1xAZ5TGvIl39jT8ZM54vmwfRGlH+oFXepY1Qe986ILa62sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJv0TQtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJv0TQtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD61EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791213033;
	bh=1ArgelBQeh0FkdqM1BXOusJdY2jDAQThc9XtrkJBEfs=;
	h=To:Subject:From:Date:From;
	b=gJv0TQtR2kJAMoXKzKLq0nYgT16abCZQm/35ymnNGdVpb6QsGIPNYwBOBAbZO/Nbw
	 T//kBSBaw9Pucuj5jF8EJvi3NSpetskz5vl6RusfqMZhJV9MWNf78tqjIzarQX1tJe
	 ddEs+rX4pioUpRrtAyAV7yClqOxyxAsnmWfJlU3bygeDaSphmt1rD/iEiEYv1ZKQja
	 dEB18J9hZnFh4mKTDaRsTy/DhBlKTM9SL3g+wSMoYjMz1I3nTuFLZaucwybDX19i7b
	 SLxjOF/Y6jgo1CbwgGwmehC6OA+QICWRfrHhnvAucspK4AprXg7KQT3YvcQuPI5+mX
	 ZHcKYOKhWeANA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACEDCA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121303369.15655.15683992790110069527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c6cfb88cc25fdb6f42f1b028272cda8199d4b8675760a2f022aa19ec37311f
Date: Mon, 05 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791213033
