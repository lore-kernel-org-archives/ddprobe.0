Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D20530E82B
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765785174; cv=none; b=DmrQ3BsZqfYzGmBc50m4NI/2Ps9ksZ+UGVmczxAYE1Vntdx0YAhDk3K8OQF7TecM+yUHXi6O5yPr0KOLEvo7637JtUoylJrddmpkWNX7h4NzwpCBtm2IKO48jYMdA13g2uvSCLQdqY2bnwH8qZLUioHpFpXFpm420b3hf4VOpqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765785174; c=relaxed/simple;
	bh=li+febtRxb04iMAc+gnbxlUgbK1q/g/S1WtQvj5QF74=;
	h=To:Subject:From:Message-Id:Date; b=u80KHYYXvJJUtZ7WvR5aSvDvcQru5TD1rREG9bEQ3j9SIMn7k5lPLdDBMnd133eRm3ASiqB6a7L/Nisdj+hPJo4+8IBUKJlBElmTA8SkvUUiarZySaye/PQFhk/tQKS0wi7G0Dr1TAaHKkVoyOwktRIwRFw0+w/ablvDazS25Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epEOsyGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epEOsyGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A148EC2BCFD
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765785173;
	bh=li+febtRxb04iMAc+gnbxlUgbK1q/g/S1WtQvj5QF74=;
	h=To:Subject:From:Date:From;
	b=epEOsyGdk2xbl3HFVqZ0MToAkzvhJgmTwBOAanKsWbUDYB4pvpEP2My+n3b1YNN/w
	 StWHeq9j7cnOzpw0pJ+aKA3tgoxSLF1v11xZFHQ+qD9VqtHIhRbwznyUDyYax9dgAV
	 cgvoefUrgjSGyIyM6E6lXG2lKYg1abJXxAC97bKlQmDDjZm8X7JiLrNstnCwQBvi2i
	 wqr7AUL0UAo7ScJv3mMfThkJhojZme0Uaid2Vnj1+9mS3o/fgOzVRnj1aPa6XxnLli
	 ePB8baIu+RtO1jfiN+SePMxfq8YtvsapP127byV/3bDhhn8hoF+MTD7u2K+49gNynW
	 Q4gcL4fNrn1Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9115DD59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578517358.4557.3594219027105558980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a3a5113da5529b0e34c9737dc48af8d2769881320e695bae53b8faf6f6d03f
Date: Mon, 15 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765785173
