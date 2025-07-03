Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C39A2DE6EE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751580594; cv=none; b=tWDZjQ93tRhZfUftmq4Bs02ZHDDW8rfuYXbGxbOm6z1DGzxEXfvJ64kCnf9pzHJ53mtGrVszgaxaBORM+rBQ2VJKvCPJibdnfGrQSlUofG+wQvwYjaGsW5atcpnp019z98ZaUZqXBoymF7qv8A+Q9oycgKPBkG2TuBpP6uS2flM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751580594; c=relaxed/simple;
	bh=S76yUXfJgyJl3zxGnb0EhpU4K+mkr0LmVdjhf+BomE4=;
	h=To:Subject:From:Message-Id:Date; b=J32WhGJweHHabxt4WtjpraJa9LmfaTu04ptIx6D+a4X63AesiwgC8DGZ04cdiPlJH46dYsye5PvaDFY4f4aes/5s7fjN2CA8zDtgrO9duZ4JXBokQ7hE1B+p7Qs0O8FyzWa74XiNLcrOkwQZJ2gvHQx8a1lNt4sG27Ofg+mhMcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJZjXcHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJZjXcHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0C9C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751580593;
	bh=S76yUXfJgyJl3zxGnb0EhpU4K+mkr0LmVdjhf+BomE4=;
	h=To:Subject:From:Date:From;
	b=YJZjXcHrhzTh91Ncy5TbpI7uVu5BMyaRUhpvMHmZTj9fZwPBcDoXD8m2gkGdZbS1I
	 JTt8ig6AvDNx/mEDtbUeQb4rv1aclRxQVKNRm1RtkCDYiiFAp7IzfnkavGqjQQX/wd
	 /dORtbHoHM6g/sXOupQLWqEz6XyeEIOTaXgmAKRdupgwg5sX88F86OOic0mxRfDqje
	 Zt4hddRFzJvd/4JyQI8zGd16kls6T3ctUVdgQAOg/sjSHIdGVhjSttUIFb0RRUnCeI
	 Qt3AOulNmRfJhFuNcKixF9g5rRhF9hlthrlwypp4N8K8LqaC54SUBfufBq9hgqIf57
	 WzBa7FgtYek1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E912C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158059357.22810.4899911669220783334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a069973e9503938988810e52ff3300c85bbf2c0db1b676e6f45b0e71788a236f
Date: Thu, 03 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751580593
