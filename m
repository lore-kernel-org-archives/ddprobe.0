Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE57388377
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777951654; cv=none; b=d7dkg8HKlkLzvEmtdPSUCQvj0ZwCdmtUYA4PVTrv4SPP8fmgy8SB7O7NqQQ8wtA92j4paduQchBdIefEqRAPtr2Xvu2FgbrgKYiVb1nMJLGU+ApDDkmfDV9lFtyG3T3i8EZMM4aP9DR7xEIrGbxTiphC1HUFKfTDJyi6gciwaXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777951654; c=relaxed/simple;
	bh=YuRAocd3iZ0LVqq1DXUayYePFw8ku0yJey8yocxWx7I=;
	h=To:Subject:From:Message-Id:Date; b=hfDhvzVCzo5O7VRD/xxKWVGrf2e+z71Sd89DbaU7J3icRpVQY0TM0QcJxeZNyB/o5TPolAt6dbJdW3uKveB3TdsJWd3raXdv4PtJYpY31U71iTtt2Mzx2ZG4zEsACnxLcCIrNA8jLLNimNY0n8JHb8d8eMwzI9MV3jdo36iMWUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfbK936Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfbK936Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1903C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777951653;
	bh=YuRAocd3iZ0LVqq1DXUayYePFw8ku0yJey8yocxWx7I=;
	h=To:Subject:From:Date:From;
	b=JfbK936Yw5oN3l1d6Alwz+7MXLnXMlM13Dq7xcEsVmc0y1S1xG8li7PKrkx4cILUW
	 y3kPehrO6RBZhT+bvsRwr1tHiyMTfkG+NXCNRspvfolbniAhe72ul0rQr5wx9rfauL
	 8LrBtu0LBX/pCciCBV3XfL/p5qesgweIt0xlMG04P1JekwLqqIIUnFNVdDVGfYnNMQ
	 Nhd0UGA+pWcvp9nGoh12iGCHop6Vsi9NEpA43KoyEd5Vao1jcFSkR8x4FzXMW/yfGT
	 5aCAQRtwwKrWkiv2PSHveNkg25NRW1CSbFyfVTwpYb93sKm7Ri/w+V3NzwxEi1oxU4
	 Drrs+tAti/Khg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA3ACD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795165368.4604.5317642583784927653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5fad73f49730fb2599047f64406bf7832c78346acb347a7c4cdf9752396fe36
Date: Tue, 05 May 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777951653
