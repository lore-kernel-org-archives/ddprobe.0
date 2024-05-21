Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B737208D0
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 20:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716323603; cv=none; b=tXTaZuLk7VXkFkfOW8aBdYB9URb7UDmfz4jHDOhEhyS3aAN3SpNrhsBhFVeu+VQqr4DzhZFui1jthLLjICUmUk1dQUaT9bJ9A6Qi52PpIDBn2rDQjf3w/mZepzv6nDnggOC67z1OG+FJiz4eiEPsAVdxCpgG0ej3D02+vOjM6K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716323603; c=relaxed/simple;
	bh=/z5Uq5jwSGByvW5Mu1vZuBud0Bcd65U5yw6cgAEqQdU=;
	h=To:Subject:From:Message-Id:Date; b=Yomb48G9BVsKBTOtxfATHscNlVNPMr7kVy5ox6CnkPV+aqe/TcJiORj25O4fN3Yi6KVQYw/992KOxJhcRM1b7mP9D3zDA2VLBjEedhqieZ/velmavnkfEqmb0JOzn8wi/048Vo29Uy2GdugU7gPEJvcz3Nh6ORmquyfX5jIAEZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxGXDiat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxGXDiat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5013C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 20:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716323602;
	bh=/z5Uq5jwSGByvW5Mu1vZuBud0Bcd65U5yw6cgAEqQdU=;
	h=To:Subject:From:Date:From;
	b=lxGXDiatC9lRrBgbSX5FClHSZ89r5OHjiE44NS+m4Lw0kxAhwC3hBuEbTjoiDxutE
	 dP1aUMSRiNQDosENoUaZa22ZfcJp6xTy8QPVgQ3njkCoYA62OLnkSyungCeym13w4w
	 eU8gEvEh1ad9ulBnfd6h3jAzhKWMvNR14hbXWNo6WZ2rSuEq+MfOS2CoPGDZhA7VGV
	 5WaGuwzrGbY1hbZljqpijpW3uoRFKWJZ02pHxHctpr7cNLdcKllY8fMlUAry5mwoku
	 mR92XPeDn+6MKQkT2/I0q/+sFlF4DlF5PFy2EeT5douW4m+Ir0toWSBxt2yJnEPXGX
	 yv8bXCUeO0jRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DB4C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 20:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171632360280.19920.2851635323476123989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db14177315c85b9fd4d853be2548edd7e5bdbf5c11f232eb0cfdca24bfdbfd27
Date: Tue, 21 May 2024 20:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716323602
