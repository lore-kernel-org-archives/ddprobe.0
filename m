Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C98919004A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769671434; cv=none; b=NivtyF31IwYusEFYl2/RviuFUVRJsyKqREd+y2TDORTCPi1vah2krh6HvxyK6SgJZ1ukjrmD8MD9eEuV2i0hPWHqXe55odqh/UYANb2u7qs3O+FM7/jN1cCeP1aN9wN/TafntQEF/hTCivnyYMcxkraPP5FGKzB+dBN+kmDIAXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769671434; c=relaxed/simple;
	bh=UqK95ZwpOAYz55DmDvLhe7etY5yXbEBFBDLoN1TMFVg=;
	h=To:Subject:From:Message-Id:Date; b=o9AWF2YQDLoMXJMqnJBl8RVUcFETTnBUzTKYRztMTfdI7UubgrSuJdNVMYZXacXQTrTdErRJsZje3vaWnyx9AHoXCoWxWXToftPBJDjdppTxJwxDClzjRkN9iwov5MncF1G4MIZctAmV2fImRk8RNPosBLP1wEE/ea/FUAXNw8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoXIbXm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoXIbXm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78AFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769671433;
	bh=UqK95ZwpOAYz55DmDvLhe7etY5yXbEBFBDLoN1TMFVg=;
	h=To:Subject:From:Date:From;
	b=QoXIbXm63Vkft31HIqkMUuoTed7M4MAR/EXxfGTVPffsNI6nn9vftZPyxl3FMcjBi
	 TtyczQOQUCV0Dj2dVMue7y/VOxSwmw0iFRPL0Z4qr7gLTYaYHBxaB9eixeJqKLlSqr
	 SB4jWqDSOIRwy0Rno5oaeB+7Ub0qqDmv2/PKOH/nV9XMPMlEZE2lb9K4wYJGuyoTMq
	 fNEcg6k5YftDsITiYnqxkA4nS7Ei+vjPAZYffv+ZiOcs7yipZBoWbpEwmIDcqXOsGI
	 24GByjHSRnzd2uw9DN1NwHsZYq6yDdqX7A5uHWeQp64EtE+O4CHdzxnxG6ksX7SdW8
	 zqTx0jLE289fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96483D358CC
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967143358.32261.6648583463789218023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b36acf4ef8914cf437a3c1a095ac33e174d656e25599944c620cad8d1aebe0
Date: Thu, 29 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769671433
