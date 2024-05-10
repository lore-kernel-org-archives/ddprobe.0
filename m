Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570A817C8
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715303543; cv=none; b=f6DmPnKzYElEv9fyz5ndrgLNHA1pghahkX879ZBWZCttagVdNfvf+xcQXLu9znUnkRrwdqUvEnUfy+c5NJAi5N33FkEE0eVFDvmy6JiJam3HVCilWgQadeqAkdXGCBtqugSKfBnHX1WnpDF5h7DO1GCaLtfDASyvBKuTQXDld4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715303543; c=relaxed/simple;
	bh=c7/rdnfpodSLrxZipk260I4cCajH8LcEKtAPaRPRaTs=;
	h=To:Subject:From:Message-Id:Date; b=sn9C0ZZ2fK14OrnFFmTs/PLG1hus/npnQSb0VKLmyZvl8o1DBge3kkogXMvEjwUuHQGQpWddetplK/wLxw1T1vJLRsZsbDn9lvItCEcCmrm3KmsUau27bJ6xa3qBo6tUbalnpF6LL4KJiiZhIVN1fbw7Ut2h1wWobr+P+NEHXIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzYuhijo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzYuhijo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB739C116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715303542;
	bh=c7/rdnfpodSLrxZipk260I4cCajH8LcEKtAPaRPRaTs=;
	h=To:Subject:From:Date:From;
	b=HzYuhijoF6i0W+e3EYdRQL28KRMW9HtsqPwRq+ihT/J/daHMMe437dSyQsR3GQlZ2
	 P33hTmY6eE2wkT+8IAyydl4vHPrLkT/xCcIhrVFJmTf/soVx/2GZb+8F3256d1WYaA
	 Jwuu8PY/IKniON8rr09Dnw7x1FHKmqZHtDrIq4Jrxlt1y8ytPXY37pY1S2GyXBKp65
	 GEYZXQ/gmfIT+9EuwsFZ6EjCuFLK4Mb/HCxqrP/xPp1qgUt1dIzpyORoDlpw5BKRtZ
	 PnabMSvWXp+ulQQd475pHLhhm0+YVZ1ob/qFxyiNWIAxBGmM36FlCmb748UBr2SlqE
	 p5uqX8BbWKc1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A8AC10F1A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530354276.24163.2096547785767713196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168261864cb34ef5d0d1422f014fc9c6f8aeab78ca61df0b0dcaf8992724210a
Date: Fri, 10 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715303542
