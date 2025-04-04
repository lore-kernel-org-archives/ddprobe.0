Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C93019DF4C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743776994; cv=none; b=N/7lpbmPqpk1GPa/7cDu3TFI7psAfsR1WBuaW5YzkGPX2qIHE323fqV/6ix2HFphPJKmv9cfo07LtzTa1XXCuhrTmwscGCRFzLv6KPHVTU1iMpWsQ2kNHfFC+vtBfzfaKRUabUoU2QxMEof0+OgAs4s52LnIOoRwczs/gEIBZ4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743776994; c=relaxed/simple;
	bh=soPvn8QQXzVRMkKO3cBbYkv7VOhkj/REoRf33p9w4OU=;
	h=To:Subject:From:Message-Id:Date; b=Uc+oCoRP9GoOkzqztXIJ14T54b8ZJCzxAJPIlOfKMGhzHzj4wv/dt/tEAJkOM/x+p+f6PE1EiQw1ylkhYET4P02K2AVzNIY23LR7cAkpJgu4QiB2XMLQ1y3znOInDHSVR6Q3SowALkMNBYvqafoHi+7fecxvgthtJGE69Cs8PAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svgPsc82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svgPsc82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9367C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743776993;
	bh=soPvn8QQXzVRMkKO3cBbYkv7VOhkj/REoRf33p9w4OU=;
	h=To:Subject:From:Date:From;
	b=svgPsc82g6q7YYEZmufaPu+ZYQbjuZiMlF31LLno3bhMl6p1AfXUk/HYP0KzIgHNJ
	 EPXKmcTt5yBNPlFqtQ/cMLx3SiMvdMC9LwX6Sd1GmIt+Mn0lg47qQ1xLjcfkYj/yZJ
	 7JGH8ZXpGv+jd8EbjeiEchofNCaSVfz1zkhCIGH92MNvtuP7E1CUtL0n990KCi5lhQ
	 O30wKf5u48k9gdNoo3KvS5IZUlyuhntoaG3KSJSfX0GqNeBo9nYLKLqbJX8cQirjo6
	 93C0FlM5KHbDIj7x0pBnDxhq3WzlDYyWksd51EPUQeYOaWKfOK+o+18KqeVHe+iNvp
	 I04lbkkYSM/PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EECC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377699358.2119.1954412660885119767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d1d6361279f353a8fe7bfb1409f986a4bc0d16c05114265b77cd4248c0270f
Date: Fri, 04 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743776993
