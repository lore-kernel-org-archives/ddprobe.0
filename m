Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA181DD877
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779097834; cv=none; b=owut/4zS5/R9iLgg1IA+kyRKsFGBtnReqa64Er381+uaCqzpsuITkXkGiXcALLvqTO9RP5ofpzEK1c7M9IPLRJcYl8BsdECbQmcajkQQb5h+t1DEpxr/sz9H0stTZRsTWRGOEY2I017glOvTJn7pEgz/SPMdOM1EzUSbld0vJDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779097834; c=relaxed/simple;
	bh=u0DUYwaHO/CgixrgF0Y1On38eNgd5jUsCxPAZBqZN5c=;
	h=To:Subject:From:Message-Id:Date; b=YjI6F0alpeJEtukxCEIhanEYHR5b7/hkFao1SfwGlAi6DUo2W408J+05nIGM0rJU3O26Q5uvZvVtoGsQ1UyTN9ITYWFdN02mrrzYlnWUbfMeODPiz91p1pplb6E9vx754HSyP3Ku2et4buZvKiBXhPyOBYk/PuDhF/1DLvDd818=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1/a2WlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1/a2WlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC3EC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779097833;
	bh=u0DUYwaHO/CgixrgF0Y1On38eNgd5jUsCxPAZBqZN5c=;
	h=To:Subject:From:Date:From;
	b=B1/a2WlQ3Y5ANjqHltPNOJLoB1I5bVe8frFykf+5YdpouA7weufKPbQMv4rMM0NNa
	 /kCtmm3FOi2QvYYcvnKP4PJROaOtaUUz5vHLomAfq3frQrZh57d5DF6P7WrZh6N1ON
	 cownpednZaPlH6yahzUWOXeXcBTwMdD4Dvi3afXEyMzTmUtdvCQzRjAdyMBL/NxIbD
	 l76iA2r8zsGxHb+WAMPY5NonjelTjpuJBEaEpeWjYQOgjq43pl4+lWyqH7vDRoFyX7
	 ygXBEUu9gBVvUTFPelCePB+IyXcWiPokDOCxttkqcqlKw2YJrVsmG7tc6K2+HAU3Dx
	 I5892aj+Yw8dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEADCD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909783369.8809.5931073076379569506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378b3eb029d0d43e233721c1a8b27d41bd655fe9dfef7dcebf92eac755ac81c0
Date: Mon, 18 May 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779097833
