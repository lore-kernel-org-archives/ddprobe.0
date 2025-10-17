Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51AE2E22B5
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760742593; cv=none; b=YB94bRiXwvzXxqm8qeS79annKNEty6IemRZRVVayk1aiTio/ccyPq0yuU73+/k4QVh0jEwY5+YtURArWWMX2DwG637oNiOwiABeplV/BRcKxRrG72dQQobIyyifyNFWWnxK+9EzMjAZhrhF+wFXECF0R5e7/iJMGbZ4qoG2ywgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760742593; c=relaxed/simple;
	bh=FklzMRHcDwIQ0leRs/wevFbuw9tPgleh2HHPqlC/Dr0=;
	h=To:Subject:From:Message-Id:Date; b=UJrganxHyp6C0JoAQtJ/8DbwS3ZI5+E7CejpguTCVpjkQv2Y4SoF3kamiXwNGK1aVMs3uzIPvA1nX50Qz4qXnmWMX7lSVY02QfI8Q0K+7/LCBtaY2c7RZl8SFatgQHoRYCvF3GCqMjzEF7JuqrTiT/sihTecpoyiEYp3U1yba9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONBBsuE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONBBsuE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58FCC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760742593;
	bh=FklzMRHcDwIQ0leRs/wevFbuw9tPgleh2HHPqlC/Dr0=;
	h=To:Subject:From:Date:From;
	b=ONBBsuE8GY+GOkSZYvLeFlRkPMrmwo3hrRLV9MTJ8tYvq8qF0TStlrd94nCuNtV9B
	 j742Gs/0neYZrt9GrGRp7BBmqc7rw/rmdtS9iv7CEhbZVdTwTPqLFXBKqm6MQnbSrW
	 fmV/gAS0XhOP0DScFJmT0j1XocNE0DEvUMQ+1cTlDnPhQI+pm4OthJy2IMJuYJZ+/+
	 d6sxrhWQ1wdTmb8P/ISM1ZGJLN9A8xAHu91xpok2Ep32MoOrcnV7z+i6wwauvhbkQy
	 1RsPyvZuE+rplsTuyc0WPhc63wr+16wsZcf79UdbSguiiPqjbVEXn7t73iJerdGW5p
	 +MkcKS7M81D9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F4CCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074259358.20236.6656346959941359007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac931cfc7fba3829e8e6b608bdbbf78805ec5736dbddb11f482c37cf5e746ce
Date: Fri, 17 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760742593
