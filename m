Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3D8171B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787422834; cv=none; b=DJmLkk0wKaUv5Z5T0MmboL1itDOjx1R+YlO4z8YIqreoFURLxLBK57Iyyo1NgAuEOmG+HlgCq4ujGsr/3hr2Ln8nzsXHO/eRe1c93A3sNktHERDy2iBdmISZQFjVQnc7dVOYBfp06rCQhm/J0ikaW9l4Tr6rWoIR8cq0JPSPm50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787422834; c=relaxed/simple;
	bh=9+TTtb2O6Qd60IZwn4k23D/qIReLMFXVufPIwvkTs7M=;
	h=To:Subject:From:Message-Id:Date; b=u3iQ91gw4AR8lM8KSvLNkJJJRf7wtkQnQdvs+dIIYFTQEWUS6wGZXM77sHkEoAlrY7qbjXdNcZ1kZ3JMazqHTQcvcKaG6ivMb0TbDEj2vAdnl3hp8/O8rZFEluyjQ9bQY3v6xlwBlhAlrNq4ckflql1k/k4ABpv0lRPDoHn8u8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlRD5era; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlRD5era"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D950EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787422833;
	bh=9+TTtb2O6Qd60IZwn4k23D/qIReLMFXVufPIwvkTs7M=;
	h=To:Subject:From:Date:From;
	b=mlRD5era1U24SBoMQmYa3U+GHrPyYBjnJDrUCTKTfPtQMMEsf2kq66shgd7ZFI6DN
	 E4nnE6hDpSKYLEnr7Z5g0hMQN2VU2q7uamgtWPhRKMYZv7WCN+shl59pIW8Mx8CLzi
	 eeTFB6cbkq4EsIAh4vvf2JP10LrKAgI1CKR36h0tQyTvfBevBuG1fm5dg6LnvipakM
	 BYE9qmVS/nC9YZ5dnlgySG7mQKGlVUMbqxRffbi7V2KyVz4dajgSHPJG+vUyUX7CAC
	 c9R1DgUBduqi6k4BIS7sNYOhCV7ijPDzi3C/+64YXPvR1URQIESnqvvJ2h86IKT6Aj
	 17WHo2CsuS2HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5211C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742283370.17508.10640477466293129195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a7e999faf7cc991e649b441110d04f0df3c0492536b8d7b1ae7f1d7aa5f4eb
Date: Sat, 22 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787422833
