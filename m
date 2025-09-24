Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D17B2836A3
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758702594; cv=none; b=rEYyg/k+feudH9Ky0CGzs3npNzJP9OTjmuQ8tSF3LBa8a6DOyfK2ObC6O5ontdSwv1g+B2XS1LD03LSTwgCjUEH54dnLjTuNohSyQ8tfppo0Yq4olNDSHOY8mqhD2ySxoOZS1bZYlclBeD2jfCAg3mdcwiNgka/b1r+URY4APNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758702594; c=relaxed/simple;
	bh=oVCVDY3bwUg249J9aR+yr4HijPbVq5mC/uvnCKQgXuI=;
	h=To:Subject:From:Message-Id:Date; b=UWOb5T3qRH/B3Cv2etH46saY1y3W91MmP/4pKAi85Kqyb/WnQtERZaBJLXamdB00SV/vDDvXxjYP6qWR30FC6LSUh5XbQJJhVbtQ+fQYqXDRUB/5bkYRzF0kGpsv0doJsn44rYRopsJzZznO1oNNa4+Zkx1AH26okg/Y6JYwTjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKy9Hgtl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKy9Hgtl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AC9C113CF
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758702593;
	bh=oVCVDY3bwUg249J9aR+yr4HijPbVq5mC/uvnCKQgXuI=;
	h=To:Subject:From:Date:From;
	b=AKy9HgtlMI1MPLZZMLPiVzHoXs6AWm23788QPC2MnVLs+FR5YlRvGuKaSxB/vKRb3
	 sVra8YFgNmB55xwU+uYQm+wTDyXKSq5pMzgyN9YgopROzVU6+oRAhtScjutlYa5tnV
	 1hCAT2jUUeXHrWtmSy/VYpQojrBhmUDAVKvGynJZPWVy0wiFjnbQNruk+VCjKC0Pbc
	 U+SUMCzZ/Bi01x0aQAjemJu9aV1Tui1ChSyUya5S+ppUki504f8pEVXku8ZDNUF8xK
	 L7luyEUskP89TBm8eLH+NM/XI3X9bNdaQAKISzXwKvmGGbHOJmW8BwV/27wScDUlc9
	 agQOydfePX8WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE57CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870259362.7625.13768035144191901950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9cd1ac562ddd1796d28b64bc9c9feff0b925476b2ac612b4150c382dd75c754
Date: Wed, 24 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758702593
