Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4653B32C94A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781180794; cv=none; b=c8qS9c0PmccjpjihgmVORJ2jo2GAmzf3x2o5yUql1SwyRaxscNpBwn/pjyMIfHTmG7ZXX2sCbLr0ouzGcyrINqRJAOsEJLKhqD5cVnlQP2KWpM8m91JSiCHBM856dV+VGShXxi62MR4OMRDL29UsHlz+hQaxXngssLn0RUzi+V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781180794; c=relaxed/simple;
	bh=q//4Id4UrGYpt9YdNOtm3KJZRH4YFEPF64mwiudZ9ZM=;
	h=To:Subject:From:Message-Id:Date; b=RsrQUp1kagxY4zg2Wu/GF73oyAhqterxTvqpKJOHf5SE+L6+HII2IkCLoW7fOn6nYNfBK3l+Pq/etDvGRS8Ml1AxKBV0zOaDwnrpWzjOtIkKkTgi09hP/VOyWjp3YYokHdPeukCPht9R+iZMxj2MzLKzQ6YMrhDCvsDbbI3jOwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFJ8hbN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFJ8hbN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68B1C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781180793;
	bh=q//4Id4UrGYpt9YdNOtm3KJZRH4YFEPF64mwiudZ9ZM=;
	h=To:Subject:From:Date:From;
	b=TFJ8hbN5qpHzAznDUb8CQeNfypiLTOw09zq6VR0qQvgUq7RiNnZ3LAFCR+THSxncK
	 OQx7GMGGq4uD/0rzsC5r1NXmDFD6Q4h1yFWjee+9yKBwod+ANSk3NFsCQR45VmaW7g
	 MDAfc7YiQs1iIcD9LKX9YJli2oJvXD8LRayEAkQRj0ElbbabECrhE3dVkGBsgZ4zf6
	 HE5oATz/EbG2nferjqcMfFYaskiltA04GHxxt1BIMggAJSxLcbZ5T4PfDCOV26qi3K
	 qZ+JbapPDmTgZb4vgwOW0QT+7GkNSQEy8QOkD3RRTDAxJFe7s7TnA/GQT/EAzySze+
	 RIybcTG/r6oTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0DECD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118079375.15463.18441614593857543138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6487267792df15d2dda5d9c468bab1f6dec2c011351d171204537e51f595ab83
Date: Thu, 11 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781180793
