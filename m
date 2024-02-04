Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223881B598
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707040697; cv=none; b=fLXgyZOGVQT2YUwyNRobiDyETfAdcus/LsPewE7NOfhNgM5WqlpKx6VxlaNhxQLg/5k1sd5tW3nRLueR2UM5lwIm+cojWu/mfo2ntSt8VS5MPz8B0PhAQm1vTkyT+cS6MupNY6vFoM98YXQe5iZ2vUzku+6oAvsfZdZXJf7cjSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707040697; c=relaxed/simple;
	bh=sV+9BH/jluKEqGrtryGuutw4Hbh9x6KcV610DAB8gvI=;
	h=To:Subject:From:Message-Id:Date; b=TMCE7l7aamjjIAcEoOfE3QDKx2zlPL2Vj/gNoy7NsMQSEpMjWa90hhWJVUpcJEHMnsT4Y40Gpl5gR4j+6OAyqO9H5y4jK2aplrjeHkOiCRHG3nGQP+adgt2Qqpr+74O7x+Wg3LIuVARm7rFZIsxHnJaW8s/z9KLtblvvVDEv0+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmCnKdip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmCnKdip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A7A2C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707040696;
	bh=sV+9BH/jluKEqGrtryGuutw4Hbh9x6KcV610DAB8gvI=;
	h=To:Subject:From:Date:From;
	b=bmCnKdipowBo5yDwrkQCgGiEBBeQ77lZzTngO3bXl1BZLgnMu5kxDuzU7ani/vdJA
	 e91a2dH7rep2DZXs441wLImG0EsFDQSBNAFjYIacjR5M9tjmzCEdcZL7gN6Dt177Ti
	 4TCfMed1a4qtdyTgMFF2U+VurOIaKdqk5mIM9huCKCXtSokLBwRPOWW4Fe2mUbeWOt
	 2J3zii7sBKWP4bt8dQL0CjexzZpGIboZSv1yOe3rB95PH00R2Bq4hXOZuDw3cFVm0/
	 6Y+9a2IYsNuU3FHrqR0x48OtIYlXakSBzX4HkOh+I6KHPTjddrqix0/5Sl7sp8l8hs
	 Lge1CV4xT1dpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6779EC48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170704069641.8380.17589750279473313766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d4266c5479317a774341b4c2d407edfc7eede1fd3ed1376c718028ce5cc5d3
Date: Sun, 04 Feb 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707040696
