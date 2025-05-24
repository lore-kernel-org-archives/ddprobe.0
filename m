Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3543594A
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748107794; cv=none; b=Vyr8IZpeY9dfb7eaHqnSVbhZl3CCDovNU+hfH+JdMYqo63JPBJywNfLMgYE7Uok2O4mrxV5n7A3LgivEnXFutICPp741OgC7PMpVZyjmuVz6iPHEwEB/8DvdW9jciYrobTL9bOdkTyW7GjhVROBxZNWzn1CHtISLurIPKaw4XOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748107794; c=relaxed/simple;
	bh=de67rtGEpmjEAlMPDb4duAsdY8LPiHnDmsqYXLjKPNQ=;
	h=To:Subject:From:Message-Id:Date; b=LjJTzcJNd4CBz7AVJ+/O6Zb+QIk7P76FNLRET65+7H1aHDzE9To3j9xkJamqUi2hywHtAl9/OdcvSbfwYLHZFEFIC63ajcVrXCZV3rqsEvDD2ZS2wP+s1CKwtfTetob7FK9EeQd303DVzNgjOmStGyUu13KawUu4a17uRhDftoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oP4WMLvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oP4WMLvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9BAC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748107793;
	bh=de67rtGEpmjEAlMPDb4duAsdY8LPiHnDmsqYXLjKPNQ=;
	h=To:Subject:From:Date:From;
	b=oP4WMLvtbaPa3Mnxim8A2nU2De9QBx5IOqot4MRNbHSR0zAumycdjK1O0vDozuWt5
	 fy6mpThJUpDt88PqeFi/7xyD9y7YM401g2Qhjx4lC9+Ddqs2EODIclYccff4R9fK18
	 4pM6rDVp1D7xGYvHnC0ljZD5pVDCfwjtcqQRXJ887aRdJS6DZQjh/IffWwOrlEXeTH
	 PMZrXoLZwPvGbM72uR/DwpfMp491HxpY8twgHTxcgzDArs8k3+oAq54wd4E5mg/m26
	 LIs1qs0QuceKg8/1vk7n5YvocC0E4xCHhAdXNfL61ZWyHRfQq+OPnT9cVt8mIeKs6f
	 zpKxsiSGPUlyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF94C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810779357.15349.16297382058787270955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6f7facdd34aff023929a6d71f324b1d99b7e399aacdbc48e859d5d8265bd5f
Date: Sat, 24 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748107793
