Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6AC4317D
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752021594; cv=none; b=DwlxcS/8C2xvKeeQVY4p8FcyUXOcBcRUt7kx8WUiHD33qwjjZ/JbZQH1jkR5F+C8lQS13X63uDyblH05Aa4U8q0mj2xRZOQo2JbyXdr7BbO7+oOqpCFicmhqbGrOxZAlIbefsF50+y+FITRAWp5YupNB3qTdNlj4pnackRDNF2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752021594; c=relaxed/simple;
	bh=NJu8IHQzd+o8eUe+1lSE8YK/ZAeD7zGKDw+PYV+eS0s=;
	h=To:Subject:From:Message-Id:Date; b=D/X1ZqWyg5T0q5GpFQWcpllIQ7vl2gB+7GLTyFSpzXcSfq10xLVjbxAHkoaMMi3IVAKEzXsaqZhZx9cKOEynujSK+xKh0LuT9in7k1dDTTWHpFA44kmoQecuKZhNlD3/YkM/Fmqfz1c5fDfpv10SAqtj7CUqjelj3UGA3kcWl24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXlbQ6xR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXlbQ6xR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A422FC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752021593;
	bh=NJu8IHQzd+o8eUe+1lSE8YK/ZAeD7zGKDw+PYV+eS0s=;
	h=To:Subject:From:Date:From;
	b=OXlbQ6xRaKvlXZXUSukNwS6ZsAR34L+kSkXXMp7W5THwlwysN1jshVLZclzcAugaZ
	 Zz2XjRY8c8NstDTyrXeJ1evRpYcIhluUgid9Fuwm8dvi1D1nwZPkwt1ycjLhTFG+Fr
	 hoXDaauV18H8t+Cv32XWNFyvGNtGn2YBGI9i+cI1fWQU3NEHn9QGX3CE6+QCLTrSer
	 DRAxRvE0SZIXW47QkoFPQcKN8teNQuCFQLP6Be2NNFZNzp0cYyFrzkbJSJqHNM0Fbi
	 nTbYMsm9Cobri9RLeUVMeousb4AIKZtsGcUMTkXAwA+ylIKvtIOYIrKLY4ZU1YkO6E
	 RpaATgZg8rLHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F79C8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202159357.8423.18388075247472244949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2879d31000e225557d7b63e0ad43775542ac5264d48465795907b8a1ae11e057
Date: Wed, 09 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752021593
