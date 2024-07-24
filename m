Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361ACA955
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721801754; cv=none; b=uDIC4S9h4sM03xEN3SC3uOy73NmxZkY5vAbu9ilBhQpQ9ZWE8Hn+TZccIAGTgXycnhHcvGg2JwRWRDk2kN2n6SeBjVuuOnXEZf/P+ovcAMRGI1zembeO0Uabv/uhuGeVVXoKYs8kVI6bQpg3RffRhO5CMEXpYCjHUJvPrcOnmOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721801754; c=relaxed/simple;
	bh=g/o/fOxmpCAJiKG45jEewE+7dRbNq0NXLZgB7MNcNiM=;
	h=To:Subject:From:Message-Id:Date; b=hkGe9KJf2HTLpld7bhTtYH+PruJAXjz/VYIo4wNvRBKn6BpC+aKcuNLdIssjSuR8dgBw/yXuWgfcOd4CZFzxZFH2GZCoVyVZzBIJqcUCCJF3hUtgj2eGPcq2CHotIwxLHvfiIC1nZn3UuzhVm97wphg4ftZj28CD8V5hyrAQ/D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2AtIlTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2AtIlTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E081C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721801753;
	bh=g/o/fOxmpCAJiKG45jEewE+7dRbNq0NXLZgB7MNcNiM=;
	h=To:Subject:From:Date:From;
	b=Z2AtIlTeolTyB4k+k/JDWmnFinDSdq1FC09kvmWLsgOM5opnMflPX9PGtv7CQdvP5
	 hpVDjw5srioTofX68coLsbkZkPZUoHAQpAfoGWhPyVrAeGtMusyr6Ac9RhWl7vO5Tx
	 9bDX49ldLSyctRgmdhVGKqzfi+CKxcFupnAAV5uX6pu8D6XjStFyNCM0WkSVursXoE
	 OwC8HOUij/ha8AkO5s7VHUPnN0lJ5d+Oox2wWiurMoF25TkO2zMXPzhbSWXRbmmLG8
	 hW3NeRHXQhhtmkpyG0F1ArBMstrnY3J7hTlTiD6WmfS81lGTITX5hgh2A7a2y2n3Hi
	 mNTooTeaia6HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E3C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172180175357.24362.15361453686824521312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb865a47c01e6086f8d7590e86cac3846606113f2017e1d52cbcf781136284a
Date: Wed, 24 Jul 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721801753
