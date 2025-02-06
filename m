Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FB01B7F4
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738806955; cv=none; b=qtMpd5wW6p2o/8qJW+XhnOod4bGdKOwbizn4AGwr3qOZOAwcR1L9qbsswaNYJjKgF0mhyoq5B2DtbT7/VZn8oq3NOHClENnKAS65OncAyV0SBhqK4sheilsb45r/kME7o9/Gkch0x4502TWmBJpME91I1ktRwymPHTqD2sVbTDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738806955; c=relaxed/simple;
	bh=cfC9YrdDmdAlmKw2UKcSdix9rMBSwqCSyf4Bgl0ubIc=;
	h=To:Subject:From:Message-Id:Date; b=mtAekNzwPOFFZvRWopCmPqPjYU5P9tm2i04kxPNvFlN1nsViyH8vMLSF0tT2EZu+rAV6nULSVkLhcdLJq7s3CyTyHeToMZ/HJQZayp51Tex3z3d5cJC8Hrh2ttkLO+uMsRmzvr4BdCDT7bteP//xygpi3vMr8TyEvWEhbj1zrYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Er5+iZLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Er5+iZLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3EDC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738806953;
	bh=cfC9YrdDmdAlmKw2UKcSdix9rMBSwqCSyf4Bgl0ubIc=;
	h=To:Subject:From:Date:From;
	b=Er5+iZLx4sWdOSf+1Yojr63EW45ETwbd/xTIdAzQwGp/Yp2OqLDaCz+fkVSeseGCK
	 Pf4jZ5KKlO/WoGcA0pfLw36eEVzuV1PB2e458Dsr2CBXE+OS7BQoG59aFpdpVICcps
	 u7CO7948tcGdMggWSk7L0prpz6zprRFawYXIr7cdKpHERE/v+GfVEtGmKybCbZlwcL
	 s36d9h2sH+k7ljLXPZtCND7hyirBoR0G9lJeMu4WDruqAhZj1L7BEaf7jpG8ivubA7
	 LkbCZzpJ+0I1yus1MMldJZ7HwB/74ddzbKrutTjyw4usRJVYAko86+3pJbbPYUGqS2
	 UH91+sfCdqoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB689C02192
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173880695369.25068.12132502717674282671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63460fdaef38c591310687364b452e9968315f00b68279cd393677dcf56f8999
Date: Thu, 06 Feb 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738806953
