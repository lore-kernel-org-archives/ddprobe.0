Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8C0748D
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726359954; cv=none; b=r3kH5xZMV4RLHiwloUS92M8ohLs/c9dIu5Bqygir9DXK16ljD1b0JYVqAp7MJmEthjzXt46ZcqH12rbqsj7tgyeASJLj+iurFR+5LmPNOyBw+JHK29pny5VYNLU+2P9Hebls/gF+wQD4Xt3SnvqsyUsWiFoc1Q5l+8a5SMaTerc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726359954; c=relaxed/simple;
	bh=3YxDHk0DrNHOOVBxeV4Yd3k05mr1px39LfBGG82B3QE=;
	h=To:Subject:From:Message-Id:Date; b=NoY+GclBmT0J5RclYP7WJ3tO7sLYg1uKBCPQJyJS7B7I98jrbBkHMapVtZ+Uw5CzKuZ+C2QqGazGIjjZ7LX7nv9HEuHpGwYuzp92x7tewP7UjSlWW8eFUWAbC70hmOy+moq9PuZp7ahNW43MhDRFLUTKGFAqs2VDilBbnkUVook=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6qxvZWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6qxvZWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DEAC4CEC0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726359953;
	bh=3YxDHk0DrNHOOVBxeV4Yd3k05mr1px39LfBGG82B3QE=;
	h=To:Subject:From:Date:From;
	b=B6qxvZWR8xLJkzleW+AeV9gIh2K6AJ9MYYgGy01AOZckNBIyVkGnw64W4QKslD1ht
	 dCQ6CopRZdCvTE27j1GhMf0O5I1Y3Jcn8amD6jbHjYHlZ8vUeseXHa8xsAy43tb1gX
	 5BM3+oSKAUSG7M85SrOXcigvIQju+jKTDRgmRcJ9PCwqHHVlKtLqUQ+/gfmVXwoQ+g
	 /lFFpRDzMclSHM8Ai0rPvq/5+f2WuInv6TD8GdVYY1gRa5XxkG7bYS8Xtu6aIPcNeM
	 hqGNX+fZe0efbE74c6t5fhLKNMx0Gcxplsp6vWEHZ6ioZBG/P+LAdl0yVDhRf7H8Yi
	 2nUj5Knq1DyWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE5FC618C
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172635995358.17144.1298003809649903017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44eb2a93d4db2633735f9161c63a1a2a331b640dcfc6d4fe26d165ba500c68b8
Date: Sun, 15 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726359953
