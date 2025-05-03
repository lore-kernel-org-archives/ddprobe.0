Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307E22DC789
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746299394; cv=none; b=YEOy0zBiGs59bo58AWA7aWfjFu9l/6pMz6qLdmslpJF2vI3yAMuDwIWIhvnADPvjW8r8Lj0Vc/DIAlZ55MNTk7UBe15rSv8lmsG1Tb7tnAXAa/NI3EhQSuJ0Y6jpH01Gp49CvIESQi+Q8y34n8g4AT0abN9NPEbtQ50Cy48WAlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746299394; c=relaxed/simple;
	bh=WeYpM4jIjtCAbmqRy3Y8uX7QaZ1mD0FNnjnHyc2Cxpc=;
	h=To:Subject:From:Message-Id:Date; b=RGXPP15xR9uk1TLalMucot6kO52i3JGwRKdG43H4wef78MWluREYO9T9yojSj4ZJt47FBjlqhWdWkiEADxF1wWlNk/uuHT4a0RnMECEv87wzwlKjH2ZlQT/jO73s5wGNZxdSJHvBD+RFXUrPlc9U+R1mAxrHTjy4RT5T/o/xrJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e36ZvMgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e36ZvMgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFAAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746299393;
	bh=WeYpM4jIjtCAbmqRy3Y8uX7QaZ1mD0FNnjnHyc2Cxpc=;
	h=To:Subject:From:Date:From;
	b=e36ZvMghFPxq3D0LzeuoxMRgUM4pa4S3D0QKUvnghuWGWBbynjmvu50tjFgRO6CpI
	 1ydzeZnl6aI5WpqZsGSzznIL0qExBIstR6SbCKI/jAMplhwDOMiF2Pq9txyAOwjxDU
	 Vb4mZKU6Hfhm8ST8DSOiE+Y80Cn5RwF3VmkJnjQq68fvcwFb6iZ7fFZb6zTWe8sr4p
	 cuvhr1yxzpUyx9KqeOrNAcvyi4Kkjdx8S+DZaNrrtbI2VGSwVhYDG9ygJiM0Avn5YY
	 TplxbaE+Qann0KfugVeNLBASoEhOns3rVBxCtPm1PEP600k1NrQkr8070CsMNMR/jt
	 BSq47UygFkYfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3E7C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629939357.9149.13428664485986663731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25feb8fb3d54190b9029b9505a543eeab2e28923844d4784267ec3ff696fa65a
Date: Sat, 03 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746299393
