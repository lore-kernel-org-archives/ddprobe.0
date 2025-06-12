Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E21722094
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749687594; cv=none; b=GXg05nyW9r64owFe+Wz2ItZvPm26FX3mhwwa0Ee9B8YKlSCukCs5OQtFFug6PKCslx4L61NZh+l/REeXEkqAZ3zz9ofnl8BRWWRIkQZ0GTg0kSQ4Mc8xs05Py8hzWrVfL2hgi5Jo9GImrBKvnmLc13mI2I3AdYD/I0pfuiPguBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749687594; c=relaxed/simple;
	bh=eiXdJtjncNdxRjF0M3pdSSpQWbOo1nPXsCg8Wu5AwxM=;
	h=To:Subject:From:Message-Id:Date; b=RABPGNtxUcGBXlNAe6RyyAuusG6I1TtByfggCe2WA4j4HEV9gwUiQF6Z21g1uzuoHgy/33EltxPlUt7YRYMtnf83Mvu6anVs/O/2VUv/Q/qrrVg3NMZSA22Us26wn2AxvlNmgmWUDVmLifAc4wSfGpXNt9cJ5lel2Pxn3vo++T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sq/pQ3Uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sq/pQ3Uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A643BC4CEF2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749687593;
	bh=eiXdJtjncNdxRjF0M3pdSSpQWbOo1nPXsCg8Wu5AwxM=;
	h=To:Subject:From:Date:From;
	b=Sq/pQ3Uu7Owz+soeduz6SL/c6U+zajnWAdenjnpxOO1KfClpSCfjhrHJUAgu86+PY
	 LXj7WBFCV8hRKmYcVXxt1j+hMtWhocuFzU5h+EfE7jDFqkP1ZzM+Uii80fH+bGRzfg
	 zqg93AUIAXWUWTzIdFtobWi8UpzOZhri+Uum0ZmpLkkbaimQz1TzYBoWHV8xPGZay7
	 nG2WuKbotYfU71ZoNPRtdI3IqGSUP7Z1AJHyYWemZnaL/Fkc2iCwThRrRO+hdJWew/
	 e/dMIm+hE5Hcfls/201mwJVMSqnlWxJPUwggj+0a8npWjkYxJ1vFDWr10wcDVF1Mgr
	 AhjbbbscntFew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B28C71135
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968759358.16638.14693918422663653083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0098a06d8d0a7fc34ced04da7113fc2019e369da0d747b5ebaac7b315fe72b4d
Date: Thu, 12 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749687593
