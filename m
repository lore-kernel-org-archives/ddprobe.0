Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E1C3EBF2D
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769326434; cv=none; b=bzjfSldl1ERgqkUL0dXH++6l2RSRbAHXLusJ0bYlfb1PDNq/50oC+IFE5H8jhyY3n7dRN3twiV3egABJrOcPE2Xv7ZsQ1BH69FfjxJkKXAB9qiX/j/y5KC2gD4inv0nAWaU6wFzelJnPDOxZLI4ua94RpMkyb4KXasGQJW20/ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769326434; c=relaxed/simple;
	bh=WnqyQDCTnkFNZbNzejMAiD6YtqIc6zJY2ddmAl6xA8E=;
	h=To:Subject:From:Message-Id:Date; b=UKA2Pi0ZpVdTXZ/H7Ma0pGmuCm9OmuOyz9fp+i/4RMbrnA8ZYbLijFORjwPUT4t5u/AzzXLY6SGeLDcF4nT3FjbVVwoKUkupBBUemrwOeB6vdkaBn1MKCsv8ov0pIAiqYUmocpZfCa/TGevt3ISjag04mvd+Yc4CA5dfNCho3k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWdh5cU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWdh5cU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20CDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769326433;
	bh=WnqyQDCTnkFNZbNzejMAiD6YtqIc6zJY2ddmAl6xA8E=;
	h=To:Subject:From:Date:From;
	b=UWdh5cU18mqde1HaP67LtO9Wy26PHR7c5pE8FaM+1WNL8k9vfNME/gpN3YCCvr+hE
	 gjfYJOawFZdw8nq1eFF0kaYvTH2DmdxqmlgGRPemgqhC61qYsv1lBcDW22HeMLmZL4
	 65HKvufCddSC1wekmGSTWD/NAqVqfgU/rtCv8PNPlv+5LA+dCBLSeNnao8BR4QQHcC
	 t6aIiCJhvvi0LA10WVHqOY/OFXAe6mnj4Cgt9doRLFHryKNTDsF8zflxJR3bsIyJv8
	 0kwv2nwJoPGEtcIchKvjnMzydnsbst7w409OA4s7wDpL2fz0NroLUQPNQ87QQLxhrL
	 PkN+B02ra7UQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B6EE63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932643358.20757.4062625166941148197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd965c57bdaa8e8ef097a30d926818c1e137613f330fb4b60bcf9e5ab568731
Date: Sun, 25 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769326433
