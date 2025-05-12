Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41027257436
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747038595; cv=none; b=jpOQQaPe4Jce13bN11l8ubwwj9uYOc7c/3Hc54C1KH6PM76TTxFpDPe+PLIQLqGWZve508UxSqsVT58/k7CmskuNNY07PijzU6pAGsVyq4D4xiIwpibp8sbbo6KN3kW6VbEPF5KKYAGx3TRJYyUB3V7CYjxGhh6YPlbtjSU7gx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747038595; c=relaxed/simple;
	bh=7tTzr3Cf8uSiOImqW4Ir++utF4s8TNuklNcS67k5y1U=;
	h=To:Subject:From:Message-Id:Date; b=RoDSq+I8Tdgp43Q87I7/ItaFSRXfD/oFXqtLpNcb/dkfDJfeh5j8B385kJHklA0lfUEfrIlNaRsx6Vl+2sPdGFr93NZQMtWdmrdQ3LlXj7O/IdwCdIiwl7k1eId3Jr+9Soe1NV+Mbb785ct0XBNr/YB8bl2UuVKUVX+o9iZtaAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhq3VeEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhq3VeEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D8FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747038593;
	bh=7tTzr3Cf8uSiOImqW4Ir++utF4s8TNuklNcS67k5y1U=;
	h=To:Subject:From:Date:From;
	b=rhq3VeEx7DsU80DVFA/Bxtj4jP2JETyuo+hIthHKerC2dOeEdQManq0/vxC7DdMZy
	 RMw/s72TVtRaCiDIK8H3ru87TCdajDT1HaUEi7UdrZH8/Pvs7GmF61zANmSxTzOezL
	 Mtke3JiRQwKrh7w2PaoKRNZ4nW/G1eRYkKsprQIupaueacsimO6u9NCyOUAt8NJ800
	 cIcy/Txg0joQNjezZoFegwp/ftCR3G0Uy385a/AZ/h9uKid68ajRA74ujGW52FBqrX
	 yjHQCfttVCYIlfcnFWopidlLF/M6crRm99/2XfwsqkcVSX6ZevRwL37RhhEKNVeQUV
	 kR5Y9wrIUjYog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB7C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703859358.14299.8981153951187310940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5771c8c56acfa40754c3336d9978e274859f4a3e91400351ccc5d5f94e804c2d
Date: Mon, 12 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747038593
