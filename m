Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BAC238174
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754602194; cv=none; b=AxBa8CVoIXoBoqACF5JDr2YN6IBnBoQ9WoahYk0kxr9WcCySff8C1C/yG6gYTnofHwT4o4zSaU9TpINgsZ9xTept9Jwdqn9Aqis+ClxYfOznBBukejk9nHlnHOd11ZjZ9geQ+rsvrKDuV5iR14O+4xVBknhXm8OPMM0YTmMcJmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754602194; c=relaxed/simple;
	bh=SCiq+Ktpc7XbWhLGtnGyCiMpvQ/yfveKZnw7cFhEJF0=;
	h=To:Subject:From:Message-Id:Date; b=NM8gj3n2T3prUTuy6TqpYR6gILcLBF02bJk0xGpzAtaT5o52eAwtG2RBRkL9ldv9HkfVd4dTp5ke09HzrTp1uuwDxJ8sQBPP1EogYJf6X4cUb2NqqbHyspLQGK3ziI4f8PvABypHJO+vupQtBV3XOaM5X614EEA+nUl1Cwp3rJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt8jCEAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt8jCEAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ED0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754602193;
	bh=SCiq+Ktpc7XbWhLGtnGyCiMpvQ/yfveKZnw7cFhEJF0=;
	h=To:Subject:From:Date:From;
	b=Gt8jCEAu7ENX1ZidScSypNp8Vcq2Y+1QVVYF3cSB2o14Lz3tuO6lwG6lBSZ5xM+si
	 gxVetAeZJfIcVPtkmGZqMf6e1OyhLjc3iRVNF5wVb+bIRAWz42Z892BDU4NgNtOliE
	 8+GdfYd9I5OS+hGc479Q9s66jAE1VnvtWbm2TXwrxMZqZWzZg+fsvuUm0h+pVX8x/c
	 VsEmV133ptTgG3uGc2u1Fy/1pbkPFu/BsY/2K+iNGnnReB7DlXH/ZpCf6E/3tARIcg
	 0YBgq/pylXmFkDKjVHPGGp9R2K9k65eaUA7jHeEUUxAFrrGC8yotCydBR1m4YwaWfm
	 9BJu4DHawUVtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A26C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460219359.7545.9429205998726494173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a74f11360b1f7e38f0fc1c6972e9853605d45855034cb045e892a04ddd3c79
Date: Thu, 07 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754602193
