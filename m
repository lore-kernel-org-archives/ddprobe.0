Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B4126C3A3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751371794; cv=none; b=DnaouIiV/ftyUO+CKDpJ27q5Be7s/NIN8SH8BUM9txhnZlwF+5fohp6onlJTk4TOZYNA4R7gbIY3uDZdhD1Pq/AfEyzi3HJ7f/bwvPW71zBylmHsTqQ0+25Mo5BJVe3AHKe9klIifpierY9/Y7ZK5EoOaIIWHu+8NDLfDqnHYjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751371794; c=relaxed/simple;
	bh=tKERIC8EWz8a7hxY8lNLK4KLviiaOJEfpWGk5evrzDs=;
	h=To:Subject:From:Message-Id:Date; b=CYsVabV4R+bw8S39OyUPXnTb3vD0Kmc58xms9fRM58J8VX2NhEzXkMQeU8riLBQyW8fbStBZU86ocu0gajucKBWqyg6XKEFdRxNagrqbuJw6+hqd0bi3Fzz9xpzp7+wxiTu6wAczUHZyUSwCKE/YUalGieqGD48We6oN3N6svpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rakM2nWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rakM2nWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A585CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751371793;
	bh=tKERIC8EWz8a7hxY8lNLK4KLviiaOJEfpWGk5evrzDs=;
	h=To:Subject:From:Date:From;
	b=rakM2nWcbuoRfdcDet9v8MipRpRIVf0lR75LN7ohQo2KKotyIyxST6MTN46ulJ63w
	 fO9nD+OjzV6fa/Iw06Rw2WfrxOeTPaGvzwKY+0/3C4P2jkVUc4+ON7Fml6rOKPkU70
	 PAkGktRyuNz+jBacKpE7xGwi4w/Q3UizB+I5Mxb5+yn8aS3Ewq7exAZGAxRi4dabqd
	 5LCVN+yDT/DfDnVhj/KgEhUk9LYN+uJiLabBJeu0kHy5zwhIBxEiu6qvyBP8sYI85U
	 K2+HJarkIFnnFC6vB2eLyNebfFRLc63AO6wzQHW8cYAc3hAzh5gXdCv+BYuzJ4ESTE
	 pvIlufLkKm+cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970DCC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137179360.12649.8332784926558565642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3512af3d4dbf76f6cfa1fe91520e60d30e604b156f810dc6d67669d944e789d6
Date: Tue, 01 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751371793
