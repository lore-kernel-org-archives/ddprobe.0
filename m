Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168FC30E0C0
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774695294; cv=none; b=FPs3TnHtLH6AVxq1vNn95Th/06Z4Af9BDoXj8swmHfCCng5pyWjCyiHYucFCenWNqyfPxWQ4hhQBpzIC7OsCTMahYV8vlAJCpiecAeTYipnqFkNfUEuA4iu8asXJfj4oPiWB0LbVw+oDRGmv7AOaEPxPi25j0UMOfECOlTInU3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774695294; c=relaxed/simple;
	bh=Q503XxOgBJE+U/ONbuCkQaDIpN159uHVJwfiP1SVRu0=;
	h=To:Subject:From:Message-Id:Date; b=Nelne74tGXND747sm2cKFnldAk3cE3hLQ/ojspy4dgFCJjRqMU01mepPpTFLelUkECMBpD6j0RT5C+Q4QcMqnVDGqEEeVBLQTWvDMLjba/oXNIWY+M5fV66vxO+jerDjOGAarehyKrDqxZf9GtmgfGLpYYpY3dAv+GTbbYhmwf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ux9KVm6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ux9KVm6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A958CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774695293;
	bh=Q503XxOgBJE+U/ONbuCkQaDIpN159uHVJwfiP1SVRu0=;
	h=To:Subject:From:Date:From;
	b=Ux9KVm6JbTMWnz1EuWLO3kaCT4H8S8wkZr662zQr/XIbVivnaaYLP+dcvnn7rfr94
	 uj4WUmUz+NhdPqD5rjJEPl04fiFiqXiuwyCwsryJMhX1PvCZznjOkHckbyEjI8KfVf
	 4XzNnMxpq5RpXiregKsFrOirzlabE+0EozJecISPJILX0GL36zvAbUdzOZvPtumVqi
	 n+PnUucBPL7IS4Uin4ie643E5vHhWgCwksUWRUIjdN59rvsabJrhm2+dRTmeYdDSyI
	 z+nQ8yPEic/DQ/iGsI0yo0vE2KOlnZUUsap01ARaU/4WIxSHMz1Dp9foksGUS/+4Fo
	 YwGan8Tj20HQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D9110F3DD9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469529358.26885.3554307584143208344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6030bf132f81f42cb160799f6ca1c29fa320ba99e2b3762bf26ea86ad7d248d
Date: Sat, 28 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774695293
