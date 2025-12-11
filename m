Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D0C1519B4
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765420374; cv=none; b=ZuoALWexA/+QehGMwU5Vwdd/IjHu8U7dmr3z49o/1EHT6Se5iFXsTMZmlHNJQRXUKqJv/NntaOaytRdXPqvwNu35nRJO4PyzgZhKfA2JK5WwqQ+a6BLpQ1UJA2Nao7ifxTgOYgtG1qY3bO+t8Mmc951AXyHHSGieng6ONAlICS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765420374; c=relaxed/simple;
	bh=zQdH4X1tk+7jaPKgjRUiuV+bfBODqg5VEMzAXl4t4FE=;
	h=To:Subject:From:Message-Id:Date; b=O4EbKRR19Cga0EY5Sk0WockWvXj7NDRxTu1Ak8YYMLTlZ7DwTrBlsTLmceY+WOFDS5fMDkkaf0ViwUf7sm2Evcm0zoXRcEGa3RdOZaBo1V4+qw//wsIg/iXatu9SclyVbvlq4/+QgmnxQwP0ZWNJrbOiIDpTOZlNJ7Jm20r4NJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=howUGqtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="howUGqtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A398EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765420373;
	bh=zQdH4X1tk+7jaPKgjRUiuV+bfBODqg5VEMzAXl4t4FE=;
	h=To:Subject:From:Date:From;
	b=howUGqtCGFPHwnHMIpyUmHIWE/bdcT5G8260eURQvMsBriHSN0HrD8CjZbLJQb4Ax
	 sM9bF0ecYX8QqjF1wIrrnlAxg89pS6JezNdSOYc9RnYJuM7Soh6wIG7435K9YYkezC
	 +iHGpnAsaSHIXitmoVF6RKu6kp1kgmxdQS++Tva7aVf4qLDaOktqJJ2zhyxwSrM88L
	 CHxmis+gMcsdwJYnz3K1pl5rnfdyz2YVkpgy1JqVGjmxIEsqlfsKPpGXjypCxHGgay
	 HGPTQgpJSMAPPU9SQn7l72Aq12Ezh8IjkNqPuCxYyV92YSvnyyTcpim+DfH/mT+Jew
	 TnQLb1TQwYiow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91820D3E783
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542037358.5813.8402497277104245619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c617e85ebc8a5a3149c6e037f6619378cbeefa23bcff2a2d5d8b2a56438920e
Date: Thu, 11 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765420373
