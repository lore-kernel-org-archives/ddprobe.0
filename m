Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF32522D781
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756394994; cv=none; b=AVQV3K7WhyD8imCxMm+qWNVgYU52Llm3W483pMUT5W+h+3YBBloEFeheZFz+msZ1NFKml1S9En/vFzjfItIDGBDKtp39HtJW2oZ+zTrc6RLjA8wQIfZG4X7bjzYPzIbaQKMsDSSkXV/VDh+L9CSdv8BWBJjcfbEy75fCjLZP+LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756394994; c=relaxed/simple;
	bh=K4l1udGOMe6i0Va6Qsa+LN8VbfhDrtCMBaJtOxnKvFo=;
	h=To:Subject:From:Message-Id:Date; b=BAS6Y23zMQAELNEgdaAxI0qyRsiFV4UJC9bMyyI226QnoVRKpPKckStO/2yhIn/a6aBjLtOEd4+gA5XdW+FDd+9iyh2HRA8iR7cGSchkv3QZOVZfaop+m/W5zZeYe08dnzE+hxtmpZIHrlzQYlG8RU2JMk2J/ASF1zPGzNyyJKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWnxMvFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWnxMvFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A406CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756394993;
	bh=K4l1udGOMe6i0Va6Qsa+LN8VbfhDrtCMBaJtOxnKvFo=;
	h=To:Subject:From:Date:From;
	b=VWnxMvFw7coZTorM4OI4kL3Q9d++58iP/VlKTg9LIIacv9YzRPscqV+90yUkoaNmj
	 ZLWaaOL8hr1rhgHp8dNgBKzGBEFrEvIxrfu0js+wQ6nsuRxvhZKQJUwLSNBrSNeyjl
	 eJVDlUkqRH/Jd0HF7Gm4IR8Oh7i3Se/HrIKVt4xCak+hKagflcBMkKA2ABzfMrgpLi
	 8a21teONVuKe/qZWDufxn2YUxm6N7AX+kvlpRoCxpa51FdC10tU2UJ4uLv2ZhmutON
	 T+Ri+0q13H9O4e3izgHN3ytA8+25ymobPcUF4pKO4Ew3y3u7dtfUKZiST75LHTICaZ
	 fQ/fok8qis99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F4C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639499358.14128.14377973862499016180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5ce1485fea7a2fcaf91029df98b81b991e4c029870b671edd5a30bbc3dca98
Date: Thu, 28 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756394993
