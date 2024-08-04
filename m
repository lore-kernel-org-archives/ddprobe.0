Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374C28493
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722814554; cv=none; b=CwhFLp6CF1SoYRj+PN9LnRQ0VKRpy6v6q99plQf9AUdUf8QGvEMSzLS5R3T/OYTti3+GLn0nLsR9ElBRzCt9E31RqzpW0Ox5aoLfbTbYCUCsGqIKeL5Re2f3AIaEF30H6o6MaJu//2rfx6TtBAzXSFJD72LqR0W3uvd4un+Ie88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722814554; c=relaxed/simple;
	bh=I4Paz+V/ngInh2Z07/D1uScU9eocjAhSSmaf5f8t/H4=;
	h=To:Subject:From:Message-Id:Date; b=FBVr0WQT2F3TWeCJ9Qn3EJdlSVO+Qz++3HDELs7L8oDhxm6wXgPrNSETdSYPDqU2A08yZ4PCR3SHvy0420hyPMqY19Ymdsu90b0bad8hTch82XLu5XQb5MNJttoa4F0JQS5722w/WmeZFTh6VzfSU1Oo5OnpQZLgXzRufMj612s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyosG0PM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyosG0PM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EBFC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722814553;
	bh=I4Paz+V/ngInh2Z07/D1uScU9eocjAhSSmaf5f8t/H4=;
	h=To:Subject:From:Date:From;
	b=KyosG0PMrmHFLabTy5wWUBfYsbOeGVCv5O8vCLqqGBBNCRpNE8WA5GhOVtePMwYJ/
	 WsSZw0YSW4ctz2TQCPvfMNCYSm1Tht3rRCmSP1E86unq2Bi4qVZb2bWjQAu4/bAQ7t
	 PLTEOzcpShhs4QqW5s6XV+hq4OSp99a7xslimETqU72E9fxl5sWDzoVXczN5hHqQZ7
	 JU58VmREDpyY1l7ix7C4pBauSyh3Il0HO3ma3f1MVozk7oBu6QuL58Y7IgS/SW0Aig
	 lMGJv7pnryfX9VIGiOcH/1zVbHHghF3LjkL+bLTiYO+9/Cg44/fg12aUuRT0FxIoZE
	 WmCi2NIyobujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAA7C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172281455361.13119.1222364959570701332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d773d8392a97fc3777b2d00f35e69269faa609f273b7c3ddbf91b46acc0e9d68
Date: Sun, 04 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722814553
