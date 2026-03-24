Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6AFE37104D
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774341295; cv=none; b=hBdbodhb0tenVSf+ZUf7cRiskjW3aArsqya4E9y32Ei2QxsU2kxmG9oys0/KXMBysOJPBo5XJIenDNbo7gmL3kKL/4FBVrXSWvicKs43gsB8vLLpZ0BBJHc/6Q7nqP37446v992ow8Xvk6Dhn+0IMaGtvd5l12ifucTDzLR+g4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774341295; c=relaxed/simple;
	bh=t+8m+tCAqBcjXkSxz+zbFnE2HD3PFRolPDky2LeHyFA=;
	h=To:Subject:From:Message-Id:Date; b=rkFo+sCc+C9njqOj9hMHZ7bNRSyVdRmvrNHzQRLAaJcrD34l1lkjgM73UWmR+s3vJlFsSBB5aopK1iRxffdKw045BgASpfvkTBtLvqq3ORtiO5ml/DuBYrLkvYM9ucm3X10wyygowUmS2zIYexpTBPX/OvmfyFZ8emzQzzmt54Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAAHQnB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAAHQnB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AA6C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774341293;
	bh=t+8m+tCAqBcjXkSxz+zbFnE2HD3PFRolPDky2LeHyFA=;
	h=To:Subject:From:Date:From;
	b=hAAHQnB1L2QNnNH3/PgzytzhN+Bd7kln+n7DMf/ZMoGiJ2SVMgU1cqxeNF0b1YdCW
	 s5MM/U11w60VYx9IgEhvDXPDatngmQLllI7a4wsFYOI3yupN6fZaYuAgimyshj0ij3
	 xDdv2NrT/eUTDo7hDADOLMm3Hbt+ecOePEfAIC+JVUfdeJm9M78Uoa3Q1seTGtUAub
	 hTX8CGePsDa7Tk9FhkMzcnyOGoSWtC/dOTJo36KupcZDj2OsmfOqUg3sS/vJKeSJ1X
	 +GX8BL3UeAI4OVYjjQJww5ro2EgVvQVwyzrRO1vgQmjHA1We/TsNIhheYEVi0vLfDU
	 K7LXyayjYlEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DBFF532ED
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434129359.24337.3580400866198985509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed0b4c899239d9445cf30ef3c87b377ea6d4a8a370ad94f972141387f78931d
Date: Tue, 24 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774341293
