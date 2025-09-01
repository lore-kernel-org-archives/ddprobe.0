Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F6D371E9A
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756739394; cv=none; b=ldDBaX15DtEB11uYlHHR+g+eTQukP9WmJo3b9qPReXaVuqtIWhnP0DdSkg7VhMBElWlfojxVr4oeZjQVw1QDWpJrc3pIlsBP03OweE9m7xK3b8gbxM5Cfhb1Q6ZhmZQi47iO2D93P3nOoBTVK4IKcJgp8w9o4AGFo4bEHWAZqrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756739394; c=relaxed/simple;
	bh=QyDPkCCI889XamPtJuzalv2YbrU9LYpiIxkHFNLjz+Q=;
	h=To:Subject:From:Message-Id:Date; b=sttmxLgoe8Dkm1vulqDG4UIjaUrnR1Dz8V5vSafxe9JdwRI9gdfkQGszZAIrY7YrEgQVba59YQFix3ACb0Fuuya22xTQdiL4rtH37K3gZKLnJDbmzkCm4LK59szHh9jLakCYQjlRfZbz6R9nnA7bjE7B0crSe5MByxkQDvVT2tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sd/z0XNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sd/z0XNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9D2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756739393;
	bh=QyDPkCCI889XamPtJuzalv2YbrU9LYpiIxkHFNLjz+Q=;
	h=To:Subject:From:Date:From;
	b=sd/z0XNOowJJN1GedqYjcpWeJMcWg7QBNcYebCtlsBRNWjLWVSY+p0YUtV+AgkC3w
	 +Twi2uMAP8EO5puAvS3D6LwltYuzLbrV5njKinHfSYAf4gYRaHHiDofW2958Bcq2/p
	 aPZPb2JhYqjz/pzQZLysCRBpN7XTB+C2ou1UPe4KogO6cAXOdbJ3gslRWoaDdyQGxv
	 nCfNps74D4zfEfyRb8xOxpMZ/j61nQg5WmommqzG6gauGcuFBotjIQyYtSmgxHwEYc
	 eWpMzSVgyBCEuKa++QZGMO42hX9lOsjvm3ee4Vd1wngbYXTFEpwVNZ2pvEVA+hb59g
	 CeDxtA85f9NjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9900ECA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673939361.13040.7374522181015260833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cb1e4e7c599ce50a1587edbe6487e52ba156cef85c5787928b8c37e76be3df
Date: Mon, 01 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756739393
