Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346DA305666
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783102714; cv=none; b=k1NfILvab+a730UQKGcwMoHAoq64jPjO6fXRgZK/0y25gvUJVTuiI3gQuEdfgPYVbzsVOCWS44tfxirqrXqfHOp0WpGLFEo/EaAzBw1PKhnwydtCCZ81mDOS0n4w86QDEcOiJ7pfciidQvr0LqDHuNM0gRv/o1HzVPyeg2Fd1hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783102714; c=relaxed/simple;
	bh=q4xqWhb+23iQ0WAQyn/U218oznm0vGYZevPZ0kyfa7A=;
	h=To:Subject:From:Message-Id:Date; b=EzBVGroSR6aA6erPHP2bicOgiWRcOJ1XnIYxUjJAbD490pe5lw5Vo3VM4EBhnIsC2vpxgD6YhW6ciuCjyNp/dr53na8bAiM1UC6xQ71wrXCGcfGgSd7HEUuCrjifP0TeNQc9icmeSZ4/QMrIo55efPlS3cEdfWP/vDvvYJryUgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKM5HinC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKM5HinC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1563C2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783102713;
	bh=q4xqWhb+23iQ0WAQyn/U218oznm0vGYZevPZ0kyfa7A=;
	h=To:Subject:From:Date:From;
	b=MKM5HinCAp2Pfazg7f+n7eKwW5U6u6rNVXKpZVoguXcCnCSawJcuj/ZCneoShZzqQ
	 4zm5nZ+mzdfg3Qzh9PVgR+rO/4wh56mokfjnxvS+kYqPXLmmqF0XyuPYsLp9BmmuN+
	 cL18yHb1iT/RIU6KvK1EM5Sp9ObYszlvvWUIpbk9xINvsYyvXL3nXxiCgfd57VTr35
	 YXOSkVs5wnfsGHOmUn0EG73UCXswsS3DadDekbnFFIuZFi/4HbT9+U50YR3OTcznYR
	 GvfuMs2JiMp9RarMGXt2VRc6r7jqWaCTVJ3bKCeH9gxvJMxtppmfJhG+oPjvhSQ2Uz
	 T6gVIhJi5mFxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A954AC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310271368.15287.6877947330826364472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70634d0c7d1954094b1e87b254db27733a7662b2cdaf326e878b1e83cebbb498
Date: Fri, 03 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783102713
