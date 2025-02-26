Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF2123C9
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740545334; cv=none; b=fJyrgse3c8oF//a1SsXyVBLjg8iyNly2T+rCoSda03Kf77HCdeA5XHhT/jk4RLziA/f1sFmU38d+/iUwPnB/a2pw8TMuuJ9V15c9SqkcC4W/nEYc5ZrFSCXHir0POSJ9USaraBAY2v7v848Bn722E1zLyKOOeZWf9wBQJp1jvxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740545334; c=relaxed/simple;
	bh=7ds0LrrxH13Rx/UXCfWPoETSzxPWTfuLylRHG2KAdAY=;
	h=To:Subject:From:Message-Id:Date; b=hPBsYpCWXIw3YwxLTnBoKiiQiu0syqlm+CxabnLXTc49ABdlfCLTTDUXy4Ip+1mAMs6Np+6mWbEovaqh81icTh3zFWtJmJ97JUcy+yMcRmZcgOuOZ85bNsu4+3Kzaj37iUxibDiJ8xPqS2TpWdpY8foif063M817vHgN417BCzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fChR2Uei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fChR2Uei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0684C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740545333;
	bh=7ds0LrrxH13Rx/UXCfWPoETSzxPWTfuLylRHG2KAdAY=;
	h=To:Subject:From:Date:From;
	b=fChR2UeiqHVGXiISNhd1jZGRiUDdOEjju4mQw9FK5ZIehxtfz2N32g2+cqN2o5aK0
	 4IlUxgx/KKdP0zGtlMx78VNSnjpzv7tfgR3r1ALUj28RKdR/AAZdRvxy6n6Ly7F5T4
	 gvWA8iCqGQp86CqfUmSfiHb8geOv8kojel5dHjSNA9tPsQHKeeZle7YqY85f9q95PG
	 Auv+vUnkfBE6/dSVkTiaeU/nfzHaw7wjms1i/Ri+uuUYDN4hzslMd5Dh24c1U2HKUM
	 TN/KuQiksbp5M0wZg8XcZ15GvkVWwp9DtiG7quwri88PBcxtdpNbfDfBTuTotAw6ie
	 0+KSKpTeqX/yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969ECC021A4
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174054533360.30623.12144226231048296618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c8fd40fb27e0f15db4cbe17ffb50889aae8bc49954b2b2f02e9f38257d05f5
Date: Wed, 26 Feb 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740545333
