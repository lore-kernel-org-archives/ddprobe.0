Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F50130B53E
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787365834; cv=none; b=jI43D2IJ5K/Ih0E5hZr50G1t4cgWfV2QUTeKReqzxbCs2b2jej2uBdaM7+M/BtX7+euaPPq4zv27NckOo71ZXqH9yEDkV17LM99pnUxGed0SA/ZYCH17EgR7aU/4YUlvGI0LWoBxlUVnPFDP/VZ1G82jae7NJOGL5UnQ5L+31cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787365834; c=relaxed/simple;
	bh=gpeeYeSFWcM8cdIHhvF/d7/mcIj4mRxmYXvOtCBED3s=;
	h=To:Subject:From:Message-Id:Date; b=UYloShz8Q18C4Y50aFz1XcK4Vz8qUQCkqniTT8KVUHozbyfcPcocOECbQkh8FYFF3O4aDqFvjTwZDpnJO5HLra0+y5zuACf4ypTWg/hM0dzyWJmka2wcYvPShlFwYJQMqn0egu8MzOtr/6tjI9poSolPzj7DHHwFEEJbJ740hYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4syFwyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4syFwyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE6BC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787365833;
	bh=gpeeYeSFWcM8cdIHhvF/d7/mcIj4mRxmYXvOtCBED3s=;
	h=To:Subject:From:Date:From;
	b=G4syFwywLqwZVjkIW9qg+zzvEgJ0jyUSQJYN9U4pPRAE4JtwQRSGEh0tVhGBWJWWG
	 iAjxjC1FA37uMFQKw3Wy+6yLUhMsudM791hhM0KA2sBRIjtoldKDZAKUvLX/TlwBwd
	 jACZ1ckOoymi+XDBPR7Ac2SodMbCuzWQ/+almsOLifC8mx8ISB9gKAUEmReeZs2GVA
	 juVmz3UuH/II7NrySkPZWOmHY489s5ig4rxctD1ru7Q5znwRLpS3wtRX2vSxua/oXG
	 tsq90C9i/H8OC7anMj0Lar1PIXjjH2XX0sgWVH8NXsk9G7TckfkoP3iLHaRs0eEPoP
	 bmvl54aLBdfWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5BFC5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736583369.24186.14937533929467590801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f3c27a9e80a2d171a957073d3177ebb119544e9851064b424303ffae1fc73e
Date: Sat, 22 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787365833
