Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D1B11CBD
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724811954; cv=none; b=UjidPQCO6IHfRGO525N2/Bfspa+hcicTQHSjhtULHJFAtI2HSbheJBMpgBZeRYkb05eZlsLjgNmjEjxVnSSFY9OX0AncSv1JhI2i8MVqCiVGNtdYZTRtN6bkaibVp6YxL4iNBjz4JXrbzGBi8ckk0R6yXM2bl6mZ1NX8dMoIxn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724811954; c=relaxed/simple;
	bh=BTZvo2ly7W2KOA+jDfClp3JUos2++mnDK0/qAyDnijY=;
	h=To:Subject:From:Message-Id:Date; b=EopQ+Lnf+4loF9FwlVKTnCWk6a6DNpR3x5svbPEy2W8C7JFQwo6/iCr41ufXgpenlZacQbhpmH+2v9l3u8e2qcLA1xHdzaWQEjoamJ27WE32rFtvrkZKg0E5QyTOATvctXWIX2j13w7HRniulD/gdKBcjoMgddErSzmtc4HHbDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g92ZofRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g92ZofRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8BEC4FF4A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724811953;
	bh=BTZvo2ly7W2KOA+jDfClp3JUos2++mnDK0/qAyDnijY=;
	h=To:Subject:From:Date:From;
	b=g92ZofRh6CY9rggWKfZ5Bpdo5vhNOXsZU/A/9yc0FV2MnHjICwPOYvGMFp9tN97Rc
	 QqcIIhSEwrP7omv3r1pgjUYAM8nRcsyNzSZwmsgpe7t9low+7xNAow0VCDHgT8DH2M
	 +NzIq9R9Ie/kPYanh+XQDc4JBlISIwRgDG9uA8tUdMH91XZXqvOAVdoxiEnViM2kmC
	 qu61g2MUC0vSCUxJyrKv1JcuA3VR+ivHOHQ+zVKyOtmUG0M389lzGNTwCM5+I3+QTi
	 YkEPqNnRxBoKBHs02cSucgO4CLijS31Ug2eqhjbMJZZs3Y4fvN+fXFbGSLQq0ugwR9
	 z64OF1BYztVBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D925C5474A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172481195362.20373.13297585243599191626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5214d5de7c7b315c566b4e8aaa4cc4e3aa068f30d43d66b75e970a4e02c429fb
Date: Wed, 28 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724811953
