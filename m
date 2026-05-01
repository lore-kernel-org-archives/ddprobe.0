Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94DD03D349B
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777652254; cv=none; b=KAOSTIlz1mHB3flG4M7Ldlsy8nr5XvUQTKaO/e5MExkA45fnXqszPGUimZRbIdKAtvcrcnXxyt1XhxLUrjYGaeMubDiN/UKjRv0bcLn5OZreei+hYKn1zO4cLvVjXzKgtgEZNRBKdeFioKHTNf546UYhjpp2p22yG6y7sZ24OyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777652254; c=relaxed/simple;
	bh=suqiEMYVoHhDhKgeBWhYcIvSMBcGLvgzRaQQOI3hRKw=;
	h=To:Subject:From:Message-Id:Date; b=O10PO60HlPy+0+Z//8F1EQMHKJSmB2ebyaTHqSU1fPffrpqMHRNNhMF+USJp0eeG6KMomBfT6MGQYIIKGmaE4t4iaLchaiaFbXi8CAIUB62djGWp11TAPKa3DQJflsJ4fc4YWGkh5pjmhge3NUdw2EWu6kYXo14SLt8Br0kiRD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajrIrDV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajrIrDV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A20C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777652253;
	bh=suqiEMYVoHhDhKgeBWhYcIvSMBcGLvgzRaQQOI3hRKw=;
	h=To:Subject:From:Date:From;
	b=ajrIrDV3kjROgPzNfI3N//Gq2tRQ2vTw7pvPmFhOqKWVahnds8zG1afSgy4dxqDgt
	 ciL31hYykM8ERcl55zdfXorubdMkMsw7tlbmndm236MNbUHiQ30jygbNPiY+1ljhk7
	 Vkapr+Zf1ehsOuVtKVB8HzKGV90COk9z1zbkfWlBUS/anAx8MTki7P7x/eyD6g3G5t
	 QyNkKwYnuShjZi+5UFvC33O266mnSHKg61cYQtnzZ2YL4E+sOshDnXhnEKp+Gu8aem
	 md2mWJ12FjFwFePH4ZU0BBf4/NvDCSGaR339wjtLiIwY+i4QQtQttOtHlI74VC8rgR
	 UWnoupHSKLgsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB89CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765225370.18261.6973594464036216250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a0e221f06ec3f0c437711d5832e3e79b2e1077c66ba125007620957b077af7
Date: Fri, 01 May 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777652253
