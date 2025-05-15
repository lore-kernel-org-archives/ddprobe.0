Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4600219CCEA
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747346394; cv=none; b=UHSG6QQctcjmttF1E8XpcnSbdcXaNRfosq/9heli6jqpmq8L73HkbKbAPn9uqB9mn9ImsQbkRxo1wYpNsBCIpqwoz4R3IhaW9523zMKx2KeKgWaemuTNM/Ldc4/l4vHSFbN1yJOt44Ek3blWlSG+P1IJA6wjMt/8ZizXFLkjmGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747346394; c=relaxed/simple;
	bh=yzzlXEIlBpZ3lo8XZ7HVL44ljJIPDjDEIaq0+5qw/VU=;
	h=To:Subject:From:Message-Id:Date; b=fSGkfFLeHqaD3ChsZ3WyxBpjWeLxrq5dEY5k35i8i/6mfy7NK2P0nPAreRaFBucIxJiz8B2EmIplDOvRAG6F51a9zFB+gn4Mm/beQ5b7tqSvReYUGfmG3A9DWmpgc2tRsqrDbLagzi6DvejO4N7iT4u3LuximGJJJ8M1cI97GXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dA+3gxzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dA+3gxzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A24C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747346393;
	bh=yzzlXEIlBpZ3lo8XZ7HVL44ljJIPDjDEIaq0+5qw/VU=;
	h=To:Subject:From:Date:From;
	b=dA+3gxzVn7PNP0ZkExc6rbQ//pXXy114JLVcdXrCmLnVVyleQO6yu7GXxi6ctAJmn
	 kszoSxsfaeBNcghbk8cDTGCTw06g/qt3VnfQq7NH0y/7eoTgIsYB8vq1o5yA0ulBAD
	 3wPyc5Qt0PEKIuE8NYQVSh8oPDqQIicom8HQAQr42Vou7McK5EAyAfTN2aUoZ4R7Vy
	 sfTZW17EGgKNsMthxoDDP2mrtTr021fu8yJyGjUf+T4DBJMLNrpqT8GY56+L5l25cZ
	 y9ixw6Pg8yO2WfZyDkQC5CpZsvJ0/yM//1GE9JWXajgc7K8t3LcUNP4JvJBYp6lRiO
	 hFukO5Gw9BfJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD3C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734639357.438.12101338819023057289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be2debb59453d3ec5464017616505d9c641b45a4b9395d941c4b594ce938110f
Date: Thu, 15 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747346393
