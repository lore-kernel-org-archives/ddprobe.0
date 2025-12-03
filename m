Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF9D1FFC59
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764742374; cv=none; b=CWTbiD5G1lLByo0tHDPQtMyJ+KQa1QzmUZVmIRmsHIo8c/VcB5XpJsTiLT+IlWIgiuJVzYDHB24wuTBzKSdR9UMFETc8zWXnLId58M1Wi5u49W8+tGoIzyptWbDiTqibM+3h4nJXn8fAcHLMAZVUuM04RunYYBKJlUVUv/zDLZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764742374; c=relaxed/simple;
	bh=mvu75LbeautrhyAGiH3TfWOFEQIjDJiBkGSBLwmRK5w=;
	h=To:Subject:From:Message-Id:Date; b=IHy1dVJ0duAxNg/mQpzgnoa/ISORfx2sZRm0Q8/53MyP+pCJ7nbVcSzh99WNmlAVB7QVViXrxdk23kFiIxWyOhjEs3BDrRPafisAm+mUQzC25ZK4sbm7Jni6u55F/CXDc8zvY/PZYlqHbJFAtF08yflWUf3qjO5SHJIiS5o/UIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwKEm+DV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwKEm+DV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B295DC19425
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764742373;
	bh=mvu75LbeautrhyAGiH3TfWOFEQIjDJiBkGSBLwmRK5w=;
	h=To:Subject:From:Date:From;
	b=rwKEm+DVck3MDGVj819eYCSdwnTchfPlWkOvjf8o05emiajgRdZOe2uP3wAi33n45
	 wTTJhLkD7mJCH/HwecsunEee2qVAo/RArjpjka5chFA4xdmFQ/j7AALK3RqH9qIIN/
	 tzYjCvHp5XZGXMjj5bI6FBxnfbXXmnzdiky+KElDdACJpqFfJC3ibJKhNK8zuUYyfb
	 7ES510b+sHhTKzHOkhz2UZpsb8cPJuYDtzOkR0Ravlpg56vgj7UsUhTYgN3UnwGPLd
	 4wdkqqM+8ITkKFfXcg82QMik+fTxJqqyYqkZGY1PEGA0bJ0gdXecj541cyWbEIu7nd
	 rveEPnYX9KT9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC55D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474237362.10553.16094790250028754500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab04025513106113e8ca096d4ac3a10476be34b61011064b144dc381cb954e9
Date: Wed, 03 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764742373
