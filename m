Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7F8493657
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787448634; cv=none; b=NsdrydQ/F/HIkLIthLDy1Z91Y44r/6kOuiPRPuDpflnoUpjkUs+em4d+pnefcv2srzNjWNQiiXVfr6+8oTG7/DtTZW2rC94GvCbT78fFmgm/I1a1OiG+mYUV0Aj4LqydZTn6a6K8DROSzeh5IN4Ihbd/0pzuq8Q38N0EL3L9QBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787448634; c=relaxed/simple;
	bh=jV3rfmJSb2+Th1ULLlO6+sqBENNmzoHZr3aNPxcmo20=;
	h=To:Subject:From:Message-Id:Date; b=IvzDIuK8q8mqgVmfqI/12q2S6YFv/YtAJPUzvkKvS80B7anVDPNWfcCAJogtD4VR2xdfE5Lj1pI76BjF21NXnF6orek4hKxgsZjFhm5cQAR0/Ya6K3GbvTL9nkoEL6puVosgQM6QHgFabIdPdsixG3zJ0vaJejrFt8sv27IGTjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivhuJOJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivhuJOJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C9AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787448633;
	bh=jV3rfmJSb2+Th1ULLlO6+sqBENNmzoHZr3aNPxcmo20=;
	h=To:Subject:From:Date:From;
	b=ivhuJOJU0R9elAsg/NPymU5TTRiG9C4+RQHxkFwDIgCt10kCMOlAOxaUziym7tFvW
	 4FsQb3oWzpeBPJ+JMjx7skZXDNHxTuwJ0kPIqrIoB0aRb+WGg0N08RCdr6znJZTTLV
	 rvLA5Vd94HBgZfKNXmAlu585U3JjQ8Rng4olROPVl5+UFnQ6myx3PnNdt2bXHPFsNJ
	 MQMDibg9lluKDPu05L/Ob/n2C0goYTKlMB6rcinjs+CMcDXyHNaYFfn4jGjxKYyk/3
	 JR+hvIXb9015Z14w3LcXA6lKMJjf8OoxqCJpbDYB2cYmnwXjJeyaWW9g+E2wSgBF15
	 hOfVBCiBuAB4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB485C5B572
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744863372.13491.7573141466348668910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3446a26d7f5dee8c452ea48aa65a133149ee64d8fddb3f646e2b2480a8366f2
Date: Sun, 23 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787448633
