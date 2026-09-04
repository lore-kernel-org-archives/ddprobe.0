Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388662192F9
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788484234; cv=none; b=s9oFma67t8cUrYcoKoh9GJHStPwMg2eEZb/i618FMfjUeHHF4XEBtH5843Sbo/6cOGKLoAboAVipbT4Z5iJGdws0bT/205pTfkS/HVWKbXr9cuBWjWzZlucVSp0dEOwh6+Q1vuPtwMbH4Bf8iOHhUcksRAYGdPkD6JVM72z7B98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788484234; c=relaxed/simple;
	bh=e0ikyOp4MuQibxTKKJ/lXlSZSPpXhAHUPMCzEPJpxDM=;
	h=To:Subject:From:Message-Id:Date; b=tcRodo9kUexjhjZpQiqCZCY6XHElMPm++7CsW4Fbhe/AF5KgMkO8SWZZrZovlaIKDuG771MN9Rj+D2fivFBtip8wSb5ieXC+sYWt3xBEqsXWTwcote0djianeuI1EBGyxf8eaQLdB/3wON1dZIIWZ14oD+1QF4FauRhFuJ86O6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKotlNmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKotlNmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAB0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788484233;
	bh=e0ikyOp4MuQibxTKKJ/lXlSZSPpXhAHUPMCzEPJpxDM=;
	h=To:Subject:From:Date:From;
	b=aKotlNmKhTK77JtrUqLkCjNglIWcfMtNPLRR+7FrZxf1I1fpe6yjre/P32u8G+Iz5
	 d6t4TkG2930V4+MiqktbRbxkTaGgulrGGXIcNHTOqUUl+JYOMAdTN6TLOgsam9kTqx
	 UKbnyI+5jDqETKZGl6Bmp27VrAMWO6su8dTsEK6ZNUP7M21sDNvuD/rogrMHYQQ3tG
	 tJB/bnkb6tncvHwEQ3qqJLp9NVwqCDTh4LoCSgGqHfs3EeEpk0QUxkOLFdbeh1+upC
	 SLnqWAXxQ74MQJiJ5g8DlE3JKyGXxOueMOB3PzJdJZWDBqY5Z3YxrqY3Bv3ZhS600b
	 5AYp0ArUAvQnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB0DC61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848423368.16501.5627729983978764221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac3ec6ee7cb3cd009752f4e9fef736efa3a600c6077f2a5875065a0003c910e
Date: Fri, 04 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788484233
