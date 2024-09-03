Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA9B23BE
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725339954; cv=none; b=rEi0NNU2vODNVEpeuQcr9zS0P6KUAKf5kpz6PclDRSZch7+J9ng0DJWTivEhhBOM0+Fu8VhjKFjXVDP1G7YiBe4ef5uxiZroDqK2TTjQobH2pXQpDsnjAy0kltDb9vxl8Ig+laCwUb71PkXaZlD5Sx7W5qIQ35qonctUDS4XfUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725339954; c=relaxed/simple;
	bh=WEQarbYH3evmugeQkfF3bmyZ9Z31WIfEa3W8Uf7ZJB4=;
	h=To:Subject:From:Message-Id:Date; b=gpZVvzx7mXO7sFFhxd8ELs3ASaN4V1wayKetB2a08xaMG/1e1tElY/FkxzFv/vAnV84rIQ/b/V8T4i0x+0QParWvsj2Ag9CjcJwNAQ+ynyLHbjT8JqlYb+4T0ltI/3Y0LZIsDmtKNUG2iG/sEzftk1lD4phrCGe/KzEgDdPDhKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUx3lNIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUx3lNIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBF5C4CEC5
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725339953;
	bh=WEQarbYH3evmugeQkfF3bmyZ9Z31WIfEa3W8Uf7ZJB4=;
	h=To:Subject:From:Date:From;
	b=DUx3lNILcOdaAyP1PT65GPRZkKPArKZ6dvjbX7d3iSgnwhng92uf4w2iBaxXE+d88
	 8ye5IacCCPzGJG0wRYdEmoTReumfkBieUmvW9ppCRVjm9VDxcEoPe5XxY/GwBtkhy3
	 JCurAfi4tuo9xZubWCflOEmYoFYnht9o7UcKXpmBMoRbwnN3nP+s31F1u0W+oBmLGx
	 nH2MNbmOVV2fV55qCwCeRaGCXeJKwHQ9MIMbO7FW0XHVudOTbLc8y3jCtHRlyzdcge
	 bAol9ugJSh4eIDXZDGSjjAyPXm/hmSPZi2XneP5i/MhzO8juYEESDEydbvui4o+W6l
	 9peMdoA48naHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9144CA101E
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172533995364.4998.1977148037112810341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e636b5e6190f77719c1ccc7640a3b53d6e1ba357373e6eb79637fde0c5368bf1
Date: Tue, 03 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725339953
