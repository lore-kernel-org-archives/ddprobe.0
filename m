Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498B4FBF0
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 13:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715001743; cv=none; b=ZZ6F6eaLMYJPSg8wJKZuBGrZ1FwaOey0rFJX+tlXinLToHvmv0CRxyxeNF5l6j0m0FRA/x9WX6X++rtypfk0+XnSJ2NR6+LaKFFoaFwLGDmoDOO6mKOjj01okysiLGD2oBj7sygnw49U60AzuOwB+UAR10sB3C0Bifh/HYmoxbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715001743; c=relaxed/simple;
	bh=BWZ35CoaGpO8Q8E15THOAsZ34vdYa29My7k9J0Reeig=;
	h=To:Subject:From:Message-Id:Date; b=csWhdQ1lSxokdFWO8mm+U+X3hUC/g7l+BkL0OmwvUd/ULtE5cRPFrXBoi0DSWOAZpo3Ihz+gttmtK8GqmxXLQREzZT3ZLNOFUzTDMy6vlmVtS8XIVtrM3BQQC8FWCZwcRHaHznKx9RHeeTgPKYoYqlbPHAiSav3i/iZYmutDXb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzygtMmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzygtMmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA60C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715001742;
	bh=BWZ35CoaGpO8Q8E15THOAsZ34vdYa29My7k9J0Reeig=;
	h=To:Subject:From:Date:From;
	b=FzygtMmqYWYCep/Uw3LqxEgLwWVLkkH3JIbxJKZulANZrJHOJtbLH5yikIgF1Yf6N
	 nWzO3ns0/zOKyE4A5cLVZMR47oKHsRiR6CpP4I7bnh4HW6iGe7On8fn47LHtIL44+q
	 wRyFOZNYYwJBMb7kHaAWyp54bpdXU+I6w/LDuKvnm5RyQAwvTOxxZ2aHVAqCJSQ1y3
	 0Yzx2NXl3rE3iGMiwQFXbNuNLvzu/5pQioDppRXskg2d/nHqH9NpMm+eM24DSiKY6O
	 wGeyyXVV2eqlvCRjItFX07pYm/ZFNbkeUkl4pSbWFJRyhyxBdPXvSpvXcozpEAGz8v
	 esWDXRBy8mvsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C5DC10F16
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171500174278.4237.13348019463281173546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8cb3c6db3d894272af490138da200bf232aea2a1c248050269b307774332c6
Date: Mon, 06 May 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715001742
