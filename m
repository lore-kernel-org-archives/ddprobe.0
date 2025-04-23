Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416122701A3
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745450994; cv=none; b=UfJ9e8hKQ/5UHd/gYvBak3YJzviNkSp+cMi/7tQpaU9lCAwsaIcmUFANiZPcMqgUZGVswsfPA08Idd8lsFnB37b+Wh5j1V92FbbKWMCma2+ywInGhe50Oew1qOmmab9mL8XnFN56iR7iC1rV9qr3JptLFNvCGcRXLU135h00a5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745450994; c=relaxed/simple;
	bh=6p634qLoBc5dVSC/XlJ6jOEvg0rKWeKW28rrLqgFToQ=;
	h=To:Subject:From:Message-Id:Date; b=iwoCc4rc1+tEbFhN810V6TlCIde6J6cseOmavOgbetjNpfSqcL83Rzf/Vla40kjNdX9hDxbAkbS0V06vAOnXdns/sHAIRAnKFsZMpauykrczIuQg1r46JFuytU8pKMiRL8fI8qc6dl3HOCcTHByHb2LvXTwfQDFK31ZKbekFBhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXIy22W7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXIy22W7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC9EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745450993;
	bh=6p634qLoBc5dVSC/XlJ6jOEvg0rKWeKW28rrLqgFToQ=;
	h=To:Subject:From:Date:From;
	b=EXIy22W7FvcHEP4f+btku2Y3rrCEWh/ZC0H4AcnCOylf3k+2M0RcWSmeN6n5uM3c4
	 ssYnLSmg07rci8NqGQEguTVKkJYPXnRHLT3AtbrR1obw+0g3gaOz3Eq2ldKBXJQOvD
	 FjWhDm6G/6L7j7NyHbbXwEMHSZJeZ1AWUhuF/ma7Au5zeWdwczI4H4ZWKu+A1Oe0Nj
	 neaVWNBKbH1zxNaHM0GSU49LFl1aHy5Jiln2tuE9zKapWp2yaP4Zcu7VerAJsq/TTo
	 nA1PbvOwEBVU45FMtS5bIYIDRNSilVHHg5qcIeMBPL2xCKDfw5tb1sHt5b9fvVZbVW
	 3uN1pDLeWJeRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B1C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545099357.11200.7334971614741456472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7773719cf8e2b4c0113b3a5b8a6826c2575f44622158444b5b1e3ce1e7fdbd88
Date: Wed, 23 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745450993
