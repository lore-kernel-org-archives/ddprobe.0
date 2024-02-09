Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2708D56B8E
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707458297; cv=none; b=YUDrzvTHSlmRaAXDuiqFZtjU3nPgGz8tBTSMktI20RdaiqrWBCaqZknHl4q9O1fuRjuw3U3WdfLWUkAv6NH9K1MQO7u08Utadr8ygfMqY//M+l5P4sE/KOa8aldMBbVA2mam5iQQ03RWEateVSgOXhlXRj08ZEDyOtITCgk7x9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707458297; c=relaxed/simple;
	bh=lBcR0gRWAN2aAgZ41tW4yw5Q3F5KQNFD5RhNRrQeWz8=;
	h=To:Subject:From:Message-Id:Date; b=n0Y3qAd2vis7d1SC1K+20ozHq8BI3ShDcB0BJ6a7zHytAfKps603eXomGTWV04i6ZxGq5wPanQyIQl5XfHN3QOhO/34g3UTgZ2Dtj415cKMFEsTY1u58WMSRovtDk94wQEpukqcZMKeV5jA+b6vYYdT95C9TeoK67EvBAsNBAo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qd0Mj1sC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qd0Mj1sC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBD2C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707458296;
	bh=lBcR0gRWAN2aAgZ41tW4yw5Q3F5KQNFD5RhNRrQeWz8=;
	h=To:Subject:From:Date:From;
	b=qd0Mj1sCJbkW2twmFgXhUEgAHAgbQ05YFkDfi2c5PnEp5tb330NEBos65h+UKoHf7
	 aQeBsrDYtjrmZimpY/vgGkNzVtFxvSFV+ODD84l9t1KM7VdG4pOxYLwScWS8pY/YwC
	 wdkJxG0gU8juEIzcrdYDF3FbnbkAc6slvN+tCli4F/VxBfbwUae47fNJ/ZqlU5/CCI
	 IAwkr/s7ASPSX4jCMghI2aHufgPllqQOIUgu6dxQD4yIfPoe15po9grXyAAzJ76LID
	 AAukrkzzsWxmN1TcpRsh44GgvXQ9HcVdhl0/3sdiDzky2ttf1pFkr3cwMj1P4bYDaV
	 /puOr17RT388Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82976C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170745829648.22763.10821410420187848990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20339d8ac0efbce78146c99e26a7e73f57f561629831f87f1e516c4039d824c5
Date: Fri, 09 Feb 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707458296
