Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FD826281
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726569954; cv=none; b=eMGsPoaWMDLn9SQupkdBPUQv521LC90os+v35gzloIE/f9/Om5FVWatMG8I05X7DS3CN0pkgwg3hPCS5XAD+xbMQvDMMBwjN0TLDJW7vjzmjXEl9QmWQfRq1hUbHhtLmNzeeXCKAQz7a5HErAwnjQiRn3CmfWtiE+OoPzYzKcRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726569954; c=relaxed/simple;
	bh=jYxmoc7c2PxuiyT8mucrg6kygyQ4/d1S31wOhSzIWXE=;
	h=To:Subject:From:Message-Id:Date; b=rxKSqR+K/3zhR0VV+divslqsmtCmp8Fjno3EmKbbe2I6BUKQbDNyFUf7gfnPrrPncUm5M1if7WxpAWVMm+MM8nppu5q3vETu81ZwHPD3Wk0OVCjl18DV1Kac0l/VX/8Zcu1lE4RPfo5op27LsgWBZZDbk0LsKJO6VsY/3vyfjHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R52rIiKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R52rIiKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45DBC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726569953;
	bh=jYxmoc7c2PxuiyT8mucrg6kygyQ4/d1S31wOhSzIWXE=;
	h=To:Subject:From:Date:From;
	b=R52rIiKp9WzUHSsAYz5EGPnJbfy+U7mlkL6WfdKm+lN3jaQpDXLdpAJ2ns9Rai0bH
	 grB3fG03+5QJPpdAbqdM3+PB4b/SwWW0opmMVWbNSB6ky3BIkdf7p48ot7yPa+2qeH
	 lKGy7SXY0lwXfSemdOFxGdU2Lr+1ApoJu82LJGpQXy3XI8qHgs43eorWl/lwOeubXa
	 5HYaDwYdKH9RL9K86/Grs59mI/lCARt28ezYYhCAUbAvpkuYSmPOoG0uBf1RffgZRO
	 FfNd6pELk9kQUhAOor6AXIXncYbnxgZeav2NqXXds3pc0wSiQJW/FXD2OKO36D8jUK
	 oBB+JwOUrT9bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9347DC36009
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172656995359.12872.16531891793385725677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e76a20584554f9b6ab06844ee9baf51f40ff6a1891f2df23d9f26e007085d18
Date: Tue, 17 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726569953
