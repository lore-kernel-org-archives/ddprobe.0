Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1C3225A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753217395; cv=none; b=j+KI7wnh535P93rTkNm7xCxm+L9uMEZu6/HG5JIGq7XtrPuz8X6+jYo62rTjDaib3+xAttguo/20F2BDrED9GJ5xyYZN/z+wGhMkTry/hcMNhAtuTruVY+xO/bkcYqsRkK8pmAqO7RuAgi9CPJI/ROzq/KTc1YOBqMMqmOBHSqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753217395; c=relaxed/simple;
	bh=izUsKBiis/a+TuzwJ0YLYAke1SZ6WFIWCa+3dqXgtNo=;
	h=To:Subject:From:Message-Id:Date; b=bSvQr277hHPUkJNY68F0DLe815VSbGFjfTJ5YM5ZVC1WWMEf1j9vOA44HFDUu59atbT11EkTzafWbzyWNRjv/+XwitraxIB2vcSBIu4kQlFLSFJECZEE7KHbsFx1XnMl3sIWe4TWigji/Im5u4gWMgDFvhbtAbndsQKDSabpBYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+eDc1rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+eDc1rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAA9C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753217393;
	bh=izUsKBiis/a+TuzwJ0YLYAke1SZ6WFIWCa+3dqXgtNo=;
	h=To:Subject:From:Date:From;
	b=N+eDc1rvQx3DVPFOQ6xQ0hJVQHHYkqy+0gQ3f919o63IRtyvnVPh+CnbiM4VIn2SF
	 pMvaq6kqzXpBS4jDOMmPzq9Rv9HxuW9m2YwYQVeRNx0Bac7urirw8yiA3Go0wo8J8G
	 5pEEqMTW/OHDLql4xOLAxids4G9ahXwijgFMzPWiIWiYtMY08ydZIDY34xHczgZPpY
	 /GTFt1o8OZ4Vwvuvj8XcLU2vGM/ce1V9o0T78pwNho7wYvAQ/Nb6bWJ+igF0gB14y3
	 iMi8iwbn5O/jq1MkUettqjGEe98MyITqYCTXUbcQ0JD+J0KJLiiAApnK1A/8xtkQ0T
	 v1Z1lWecqxD9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B1EC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321739358.7616.2922985714928496365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695fc84dff9ab577e24d0e7f6f9cb16bc91a2581dc58c0a791ede55fe37585fc
Date: Tue, 22 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753217393
