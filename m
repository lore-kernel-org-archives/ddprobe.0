Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323D214A627
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741421334; cv=none; b=eRBXoGJlOd+vIZySfGbxCh/zSROBj/6vABac4on1U4wq89tmuUl71TXXMmiBxhy7pgUKVAi4n15ZgOj4+7FU5sG+tT+0pNnvEy9xf/o2SF5y1oLyi1Zk/kkmL+xw9JKnWK/2ihX9dcwZ7LDII0iMdwJvZTjfXQC0yY8cS/qBG+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741421334; c=relaxed/simple;
	bh=U2z/A/XudGb+Fqa397mURu2FqycPPLuErqz3Y0zh5mI=;
	h=To:Subject:From:Message-Id:Date; b=ULhzD4ws07V8vQpRpQmzwB265ybQdLn1xLpywovYuT506MGpkRkcwTsML4RuJgDKb6SCyIRcll9tQtkwl7QN16t15/AwNuE3CxpJi1H5mkrz7xznnE/81u9UhyLtSMW8nowGVbScY9ipzzCVUk+B2VFm4KoargkjCM38kAD7CFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rb7tnN0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rb7tnN0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B048EC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741421333;
	bh=U2z/A/XudGb+Fqa397mURu2FqycPPLuErqz3Y0zh5mI=;
	h=To:Subject:From:Date:From;
	b=Rb7tnN0ma46aWQowqWZvm62zSD+JNUsJb2kMXuT6S6LlYOeuCnjuAWJrv8KZMjVsv
	 dTTW4GQcnzbYewgLalq2iWE52u8hNQjw0c9dsvJtyhjd2OXnMIug8Vsf9rEO+mxuCA
	 boSAklu0er7o2OFp/18qkVcoAmY+5RzIKhd4xhdSd6Ich05iSeGJgNzR52EuyENXf/
	 C2CQ3bHVWsKIgBZmn8YS9TaQUNu5KCsOWc446YA7OdxNvtZMwNQbgLDg/M9hp4v1zC
	 ALD+XmVxUFeqhnizqtZgGrw+MNEmJA1HxzoyIbyGhN3ijwjSzrUZsTdYdhnEi0i+3H
	 KDwe7P20FfkpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9905DC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 08:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142133360.11875.4745020797329380630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b5df23f5e661261ab504c5d44fac345537ffc6428f524aafb0d7e57474dc44
Date: Sat, 08 Mar 2025 08:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741421333
