Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3590D45027
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733998554; cv=none; b=Pg5e4ehDmn9LSCAdM3uaKYStK/gezge+lTAkQQt3/2+zkYHGILrSMaQrTaP/AhYyxa+EAqxoA70GXx3r0Ui02qDPdntmTArBPV+VzUzdJTDJiSj9ogEY5i4/p1N8sgppGFSIDVL45ZtNt35TS75yMdkvPLaxYTfNz21ltgvHEfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733998554; c=relaxed/simple;
	bh=PimKLqGv7Uk++BlSSQZHDHijTjCpJ26erY3pa52eaA4=;
	h=To:Subject:From:Message-Id:Date; b=pketoj19tI909SFr8ScVqj5AhwTnYD4iJyOtCH69vdScJ8OVteYvIQ803mArpeJTU7vmkPUiM2k6tudwy51Khfa4ZXQlDx8KjnpxryrJX8J1D6w5XzhtwycXW7XkoqIyljCMzrOUoLq3mr+4oa4diS7vkBAXtxGGTrICW3nnI7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLy94dEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLy94dEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B70C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733998553;
	bh=PimKLqGv7Uk++BlSSQZHDHijTjCpJ26erY3pa52eaA4=;
	h=To:Subject:From:Date:From;
	b=QLy94dEKT/aR4rSGc58i8wEuLoky69aZ4u793m9VxVl3Tk83eGfkb/8+zSmRGU6FQ
	 ipF8+IBBB//pW+6RgcBz/zUWF1/tkhOaefGN+dLAn8QhQpWWV3L/N2HoC10CGo3C1v
	 a2abFYm6+LUtz+T6IP5rQPgWgfaUeHsw3KVJGypf+PrU/7dEiNn8rXWcGDk5DUPwrW
	 JSnPr3H/Je+O1AqUOSsweOrv0EKAjxFoQ4SJDBz7qVD3AosiQaUP2/SzSgy3+s+PTu
	 HmaWNTjDzspBJSPD3FZNyNZ8huekDqdRFmQIA+5QG+5T8MfrB7Qvqws+rmZjAJ18/w
	 FZgV8/UtpiJnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F859E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173399855364.14321.15947641408748233278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddcf99223712bc683f8360e0052831f02e32ac0ed74a0f4f97cde1de2053338
Date: Thu, 12 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733998553
