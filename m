Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6101F8677
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751939394; cv=none; b=W+7sR8JxDWgw9X4OgxIpamF9vU7PIPB0pluHTJLt7RtNYb7khSbE+HeprGjjEzn4Dp3ZIIjU8LJAOpAI2FaSFRFw69MrTlagKLtLn3ne+/Aut3Suusf2LdjV2iJgvnfrmJkdOdRJUpFS9ypqmBW30KhmMC+HGob/3j98NGdZMXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751939394; c=relaxed/simple;
	bh=J7PKqz0zZ2Quac/m0OUMkk45322B02ymTOx+lpechaQ=;
	h=To:Subject:From:Message-Id:Date; b=X1vYgXB3l1EtMeeE9/iCuVvDYV1TgXaLJneDlEstYpuKRw6uRIARQm1WVaGor3TL4SJMBCGfsauu3c4H0CN9MeZj4oTA/7IT7AF8J4wTR1obxyQ0v5GcYqENz9QH+qg+X9ehQ5vEcCnGlmUYWgt7YABzs/ZG7fhsyLwjQwrgiFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5fb/iZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5fb/iZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F37C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751939393;
	bh=J7PKqz0zZ2Quac/m0OUMkk45322B02ymTOx+lpechaQ=;
	h=To:Subject:From:Date:From;
	b=u5fb/iZlpgg235ugnCC+8Uabs+R7YLbnFL1XP6jbvtfszY2cKHHEASE5bFRAx0vNY
	 W+ohwn5f2MQDP/7QXOCizHcGTq6O5NYzj22aZv0ngAGj2tm/Kvi82KPDjz4B3b1Y7w
	 fykKLjclSjG450e7Keset853HJBGdd5j1RAAISDsvk0grQKsJBddcghhJ1/xBCjmFY
	 /nYmWgNsQGUfguM8BnxMR/cZ+IH+bvh54X7BdB+1tY6djir8kEntl2HPwLVkUX1wzz
	 mD8G/ZE1FtwTvI95Q0MSINfGbdT942m9dzJuU0+4XwIqhkfxyQJYZ8ihEneXS+wFlO
	 sPi7i7uFkCIbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9621DC71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193939359.25580.13011732014621444306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce154408a8bb76a3251f8bf11e59a94cb676a4a27cf581e0406232aa73cad596
Date: Tue, 08 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751939393
