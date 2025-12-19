Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309091397
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766117034; cv=none; b=YCInzTDkIhOproi6y3zR9paLOeLAwP0pQeda8QabMswAhMZtPi0WLpSv9W4OVHZjMWXJXMZ6/FASil9/51FBz82tN5pGbw9w8bnGul30juaPlagoq/TBd74JFuJGz/k5x6uFJNRAZgwJtEx2fmPGDzV5xt2h4Aj8LID1G2T/W98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766117034; c=relaxed/simple;
	bh=1quw89JpoxNIWr98biWId3dNsNHEEEIYvHKSwO6bDV0=;
	h=To:Subject:From:Message-Id:Date; b=qpyPwqjYIPQ0se2WX08MunHrw93oNd1gZBAZKrw4bPUNZgdWdSMhOx6ua8whlKW3UsxoC2hvKqmpGJnD5wWlvSRTSiCQSUFaJbS6EJtFkSOd635vVhKEe5oEkLgteKDnYA/vtnXDYbykHsv6vZzeqeYBB/VkMrgpiSAWjth1bWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHG8QpnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHG8QpnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AB1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766117033;
	bh=1quw89JpoxNIWr98biWId3dNsNHEEEIYvHKSwO6bDV0=;
	h=To:Subject:From:Date:From;
	b=IHG8QpnKbJn9Y8tW88+H9+AC4iyaMtmGCC0IebgGJe3goVMqMeZyaGR20OpCUFz14
	 y9p4wF0Nx2+NHE5x2dNWgsV/V5S/fMHzRii5Fn1y96Y5IN9W6K9ag23QuJUidDfoMN
	 gdmhGVUMLSwpbH0L3DYBsJfHqKCj+onlZSWvNXjJUcaMtTEQWqVtV2TpuVjc1r6jdt
	 5gG4IOSGzNHzHmNDiqpCB7srnnV3P7FfR7OQjrViYog9PymPx5xZfImcNqIQITCPEC
	 ef8Uo+GLKwzZ2JaDODjWb5B+cmjExS4eLFS7QulQaQ5Ao3jp76FUsLPCVUu0/kt4M3
	 H612Hv0iW+T7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907ACD74951
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611703358.6850.4174564482692949108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ba693f533f02aae19448fd46b542d343287c3436e35bd1f5f1fa9f288f8546
Date: Fri, 19 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766117033
