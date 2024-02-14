Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D1712F594
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707936497; cv=none; b=CjNZzXZc1VXHBb0LfKod7LnxHMtWjuY1zcIhBqPP84KrhWW1oHVgTBFfpBPZKV2XiDk6Cak5yI20B5feAA54yYCEdcwFWDIA0jDdf5Ejw9SdodBRPhJ1HbYDO1WCOVff/IekjuERWPuRJzoHXnzkQiGQZQG9YwMDbOBjRxln214=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707936497; c=relaxed/simple;
	bh=hAyFhKXxKJ5bblKMr1R6T0gRW2THrt2D0aoHcYefTzc=;
	h=To:Subject:From:Message-Id:Date; b=KvIFH+4tkVB0bNg4jfGTyi5LqXWXps16DYSR5ykg5+y8de7+NIQJscZABiLPHtnzlrtd4fG4hXjKXF0KKejYlAVGTB/OaVKi7/+DHo5dmCvKxNVdbML01sD8vNmdEOlPdcDY1SY69Ry5SnoSsO5DztldpHHpsj6wk0EeQOyM9t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+X9ddz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+X9ddz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B5AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707936496;
	bh=hAyFhKXxKJ5bblKMr1R6T0gRW2THrt2D0aoHcYefTzc=;
	h=To:Subject:From:Date:From;
	b=V+X9ddz1BnSA04RGJRKg0Wb+K4PynOPO/Fsmf7lYr38bNGaUE8eEBnymEV5FOvkaL
	 UPqSmAjO1VClSI5BSP00jXeLy3wrH2LnxeRff6EAyXdZIIII+swkdtzWtseUBmsMvz
	 Jr81YdmrKRFUD+jqUqwcLut6aSfpu20DSIc2Eot53UzsZ6uDF7XUdJ9B1AGBMd6+Gu
	 i2KSRqZtPCrNH/JKRCPjlVa76inJebH2YDUIW35dYIm12PS0o9rLph65/MHtH9GkkS
	 BUYQrdmIuWUeIc1EpYNq1ljPt74L9+jPkuL9f/AiHjkW2qxhuEe64QqSMnxBDAZrZj
	 0WfH7vqZWJuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7F3C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170793649637.22595.1190744296156646523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d776c2601d494b964e332ed3cad4bf072562412bee5184def4082963c7d6313
Date: Wed, 14 Feb 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707936496
