Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA7B22FF22
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786903834; cv=none; b=CxXTvJc/aQBpMLOzlCiu94xlwyHNkSxnfIAncEi63u8+4tnMVVdp9Y/w9M9Om33z1mnoz1kgEOair8XTg9toU6VJha4uzNTCl2BlrB9VLq9dA6ybGR/EBGEqPphMpGNZcnUyEaIwKUxEVVjGMeEPEgA9xZuJYBDTYnclywJh1T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786903834; c=relaxed/simple;
	bh=l3qy8/3uLgXLyoboMdd99caboCiFVRjCrpJJB2z2FhI=;
	h=To:Subject:From:Message-Id:Date; b=N/KnJ2bMocJC8QGpcaibQ/7gUcLS2+b6cUAKjbyvC4AVVINLk7EwweZ8lUK0iHbWeP+uN+eNLyRfbrDTsqLwZarVNnXhmGwcSKmEDb/45mxHhQeaVCfaH93Rn9aQbSqJprcxeH5shnJQ1nIicZlZQR2NorqAzRaI5cZfPowwuHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVhzizcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVhzizcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D470EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786903833;
	bh=l3qy8/3uLgXLyoboMdd99caboCiFVRjCrpJJB2z2FhI=;
	h=To:Subject:From:Date:From;
	b=rVhzizcHBoZn/jK1cyTujsTXB8xBcpi+T65OeMN2LAcUkMosxIcepQr0bUMc9q3DK
	 NjebzXTBU+RytZVfM0C7UxKEfUYHP54wMceVm1Ewa5RT97PMxsBd7Ss4b0oFEkMCUW
	 ZtUyg2HATpfTYO+dIsXO/tKeb077PAj8U4DFOltGosZe3cTG9llQypjhA/OZIyPnAU
	 FGo9NPV/QFUPLvRXCDde5Ik/culp2v/wPlXjz5loq51JYNZ2EDiac0DJhrtRXDxNTR
	 9UORX/ae8PTwIpvYJcCvrnSy7laH7JfgNqjytvZQ/ilTaGluXZCAgN1oe0HO2HKqwS
	 XwxZJvDHW36Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5AEC5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690383368.9006.1491318528925689368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93dff736bdbc69b0448f1b572f9334b8c2b9e1e80523895ebad62842ab58c323
Date: Sun, 16 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786903833
