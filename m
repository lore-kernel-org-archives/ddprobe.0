Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E6042049
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738180555; cv=none; b=fVw3Ffd/dpDfBPRG31VHrvBAkUxgEfHg+wD7MD+zIbFvBYHbWdT2TeRd21MfumwTE5EZ/dqCRpIfArUrsYSB9F6cD0fx4DzcROj2m2csYVjUPa9sh+u4BpPQnbqgjuGMR1IPg4dqQsYmQiRErlBIq740Q7tfr+RwZWQStpnCZpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738180555; c=relaxed/simple;
	bh=hTqvWlo4b0Ag5oCdJqXWK9lvLtvizDS7mm0E3dD3VWY=;
	h=To:Subject:From:Message-Id:Date; b=tTXlU52yfikRFo99ao+7r/FmpBTAdDvlGSHVW1FKmAHWqJaJ/hR0bPCtOxu+qqpfKHqk+Cvacm3Wx95Ja6d0md3zw3thne7XSbPwR5LAarE1e0UucPeqfyDsYrdgbeuIJ2OsZelXt+CtqapiYHZGHmjt2Ubab584eX/PzcHNd6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orKjDNql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orKjDNql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD6FC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738180553;
	bh=hTqvWlo4b0Ag5oCdJqXWK9lvLtvizDS7mm0E3dD3VWY=;
	h=To:Subject:From:Date:From;
	b=orKjDNqlqhy7n11iYaujozt3fkrXh4g5EwQD2WDhh7FfD3doQRMhTCY2wWye+bDwr
	 m+dlsSkg4AWtVkgMufj8vh2Bvi6wV198C9Dl8V97RBPjntAIq84Y1lkK8dM/gC7mkW
	 00BoJ3OSD/iS14yiZvT1sZxYBMwP6yDPdlxsts/f6bC+5RucNX+jHidhf5E3H8DTnl
	 4tZZHv7HZ+VhYTfHyWKT9G43xfPgjSw1qtWiSrqxUk4gb+GHXnh8VSTHLzvJl1NjWk
	 cik5bD+8UHsPbZGWUVcaJ2cZ7ll8fArdSbxg/gHtYODMTeXfOQtd20mE5OTgiRCm9G
	 lTEDK2zYEmJ9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF4CC0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173818055360.17386.1507775094170216800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1efd72de9886b1ad6929168da743f818bb41a567166bfcec19ac054459f274c
Date: Wed, 29 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738180553
