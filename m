Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5F363C
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734163554; cv=none; b=LGdHClgWJTkXEt1bmbroUo+vj7RAHE2MbPcG/HQGSxwjYwveIkuCVtIrXP7T+mGTUk3xXuA/+GgVAwO9YOWLi6C+Z0aMXLxt5nY7rPfPMVXgqOeTWF4GTEEhLaSCYelVvFmdz/olpQtCA6utsfwYBgrTXnGDEE9uXYYd61HnNVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734163554; c=relaxed/simple;
	bh=AKHJ+6mrBrOfZbzOkEWD54l/cNKC4QD4O1rxELm0iSk=;
	h=To:Subject:From:Message-Id:Date; b=EBN2SKR3qJQUkkXtSDUTk473DdbCqB3xTqeK4OsSK4bjsX1h3T2FMQRwCTUDiAh+V3m/JEm7c8s5bMibG/BeMduma6CYhq4ozqzVHR+YpyldYAtP9BXIFy774qi36NFOQ2/z/vv2BIgtYcm0Wrqhe31M7qr1Ius97ZWs+pAt8XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvkMrCdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvkMrCdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD77C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734163553;
	bh=AKHJ+6mrBrOfZbzOkEWD54l/cNKC4QD4O1rxELm0iSk=;
	h=To:Subject:From:Date:From;
	b=SvkMrCdcxkoxdkOWx6hELkToZOW8catdLMJvWszQRRHLU02EQtsmi8cWTectQe/6L
	 Bpazbm45h0KeU3/EYfJXnP6X+xNVGNYwis+F2WbdB5nj7wG1Ofl7/jOn5u/4qr4dRr
	 Zk8W20YcCKDoXFj58YXJjgnVzpuDCWyrMdwt7eCGXL9hct9ufcCB0zUEk9BHCG4FFz
	 ndRn8WKTlD4xuToUbgZyk2Fn4AssARjyghcqHlVzFjIOP70ZXSivgPvXsAuZzQADOb
	 wxQNqefO1ilC5sEFs9xt6asGq+HSl6AFRE86OA2zHmsvjqs+pV4/5gB/TDoO76xnhS
	 oxuHe3BxV1aww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E5E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173416355358.5799.14606388259573293996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90dd17fd6d62e34f1c14fff81692c2dde056bdf2cbdb50b08d3dc20af004c5c6
Date: Sat, 14 Dec 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734163553
