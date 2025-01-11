Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163D124B231
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736583354; cv=none; b=MNed41g/l3HW+8CeoJHx9ebV3ROxZU6YRPPpUvjsE8HbiS9U8Bjc4uddiB6JfaYYAG9H54zdMSf8DbwPPB7fEtXE6UBDUGV3xGwybyepX5eCw2Ruvd3k6i390OwYAC3eJx0H1HhVatS3Lcv57OCO0FOW+HEVO4eWobviYOy/FXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736583354; c=relaxed/simple;
	bh=yrCRqGKSq/bbM+lBdunPN/paD3/TVbgY6vfISjUAW4o=;
	h=To:Subject:From:Message-Id:Date; b=XCAsUzjLQBXSQJoEffxT1KEnnV+OhhgsDdod0+oK3iFeCS6X8BRJA1Ce9zv9X1g6ElMQj25bxuv5xdomjd8JiRjfjdcSggSaQGIBtoLj98T6hYcVvhvULfErL2L9YiXe9yJq6CTLwrxTQT7/7OMZdbjIu5OCTmc7v8qISntFuDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJymvgmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJymvgmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4419C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736583353;
	bh=yrCRqGKSq/bbM+lBdunPN/paD3/TVbgY6vfISjUAW4o=;
	h=To:Subject:From:Date:From;
	b=HJymvgmfU+/l8eI6NTBwodKdtGw6e7sVyy77ykliJbjQyGkKbo+QBGvvM4MlqVx8w
	 u6iUg3PCHTzJKTQZCsugSTLLCCSJ8DqrBMDsshsqmhWdHAxOpvEVqlVnNPUjjUKNis
	 67AVIlVgvSm2aWQ0/AqY8H6A5XVeO3oZUc8sh8vDtPNHZGDnQ/XJknVWQzEfHiqA7H
	 hiev0q3YYElqUXc3kkNm2e6Es7GPxbhfPHlHs1obPyfRkJMU5kYB0yCn1cvOmxRna+
	 0FK/XhIJLu+GSUzHvX1qGIuseNxwfT15Lm094DbdZBMoFfOGxNFrdvbED9sHP9OLv9
	 Af9qFsulxMYpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9423DE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658335359.11304.18084531430063468772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3faaafa972064469ca6f42f572b88561a3a49dd103a106f4ca1b9ef796f7a1
Date: Sat, 11 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736583353
