Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E36479D0
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731731154; cv=none; b=nUZQPqZaJ3i5ojel+B7khct1Kn+EK7Qtal4bwRg7ndQT1Ia9ptfbTeibvVLGY8bLiK662B1eSUMT6fXleuHsYxx6gzxbZtzI7w01ie6O96BBhh8KbiOvnMjkkt98qS/IcnudRn64rS/TsWn+sa9OIJmH9HBmHQafX9nfq61/m00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731731154; c=relaxed/simple;
	bh=7xnN7b1oFNJqJwjjdpG6k4vuOsTM6RJ1HgpzbqP+Emk=;
	h=To:Subject:From:Message-Id:Date; b=HwgdoFK8tZnFr21mRZmqKcIACEE6Ake/hJnZRIfr5Kc7UPeyeP+D7yH8JDG2F0DtQEucFUFoVYPAmVYKSpeYx5fH3N9xHA8cqRG9OqrODPnaMdwePLpbWzBH3QgTX7zjY85gS567edCkACPQUCk/N2FdfFrYEt/H8Wxa2pUdPhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJ00wrUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJ00wrUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B695EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731731153;
	bh=7xnN7b1oFNJqJwjjdpG6k4vuOsTM6RJ1HgpzbqP+Emk=;
	h=To:Subject:From:Date:From;
	b=PJ00wrUYWZf0vi2HzBy9SQSrV0Mwjpk9QZKT9HIWiNHY4AZtdJ9p5yzh9ZUy18ZsQ
	 RIBnrl5eLCI634UcJsBe3Vv2+Wq3K8gjtIgIdvAxYHpyEupvnybDZDTEezKvFYEz9Q
	 tHX1xSUdJTp98bKoSmOoB8NeUv9KzJvpbiZcKxNg66po4NhQ+fGBhP8fDbRrB0Ml4O
	 77VkSEz0WNfk3Yicv4N+zZgtSo2/gx6qLDD3QL9Vf+g1XSUw4uPXmud2+TRwjAKW+f
	 dBGGW5OALzrPnspNQYePgeViCATa6xHNXC9myiejADCCA3yOcWRP4Xr13dXYx/6Sdz
	 qjMmXxQDwKOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF63D68BE1
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173173115360.4718.4346187966489545316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1618b0ece8a86df1699f03b61218cc9313f3f3a16f65b3512838ad246c8208
Date: Sat, 16 Nov 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731731153
