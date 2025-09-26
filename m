Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B43B27A931
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758910794; cv=none; b=Kb9otk49lMHsEIQ1CuY8+w5dzQd1sVYfmaqcyj88UDrez4u7xAYZ53rb061O18/2FO1M9qBi+vfTbb1A4ckoYGISm2BxOFom2FjtMVFxlQY8NElVaICUqz5Uwf7EojToMqi2QQ3A6WJCIaqI6WlRQP1u6YLY5ULcmGVpbsdpX2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758910794; c=relaxed/simple;
	bh=TSzPTtUtvVY4pNofr7Zs6HSvKAngCTgCgaLrPexg8zI=;
	h=To:Subject:From:Message-Id:Date; b=k4X+MbtBhAqjshYCnsBTp8aP6XZSxvahJOtf6L9Rxp9Ua/tKBmAHQuVXuEAP/S3Y6UIGM9t/ehriatbqeZmIEqQ/5vfH/fu5Z8fxVs+MQazfEAFIuEkZwb3sOdHQsxl/NIkgu4zF6J4X+NM8G8Yj7Jcymdwe1XzwvXnkPqoZPgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joNvlsDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joNvlsDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A3FFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758910793;
	bh=TSzPTtUtvVY4pNofr7Zs6HSvKAngCTgCgaLrPexg8zI=;
	h=To:Subject:From:Date:From;
	b=joNvlsDemVWCFIWOoZV2YiPo61fDIpd9C1XelLfHy5jEF3d07BvRNC6gbG2m3MwVd
	 w4vCHiA3A+iOlPDdaIcll1ixQ1nUlAAaFVZuhklhwXLyzYH/kZAe+Ezr4V52QfPPjm
	 vly56DsTpgtZcx2QBfn01FV6c9uezq20lSxPSsv7ZYFy4QsZHSRLY9Iu/HquHNG5NN
	 zwfh5R2Eg0Jq4p6WcUq5HpFNWS6PZ87pbIAqQ4+7PMmVVuE1j6AymF4k/dmBFbSDKA
	 U4doAk5XTCPEga8lIGeyJEANYNqA+6p8Lr5VopG4+KDAq0igRgpzBCnri+YChcXs1P
	 Zj5mroNyzVLVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90962CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891079358.17117.12889726833860158066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974319ac6d9341233f3556fc671d15a5e693fbb4e7d8bfb159f916850fe011ad
Date: Fri, 26 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758910793
