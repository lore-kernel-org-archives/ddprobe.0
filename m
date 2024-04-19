Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF227C08E
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 15:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713541223; cv=none; b=gjJuFIViKfKZK9rSG+9SMlF7b65kUZI5WQI4G+gV1E/JiBP1F5CVxcWvAu/Vuu1ioyidFHiPuxfmk59T5fKH0T0CMJQF9XPZ75aFbd3/j0yvdgtMHSKfgX7Sa7QmPy//Ot9VHZg8LBsQAbF3hT+wUneItKmEzdfqxq19Y9l+FgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713541223; c=relaxed/simple;
	bh=DBC1hkiAVh/ABu4ZCohOPjVbMp8A9pZF77vqN7nGAQQ=;
	h=To:Subject:From:Message-Id:Date; b=g/CCFA1ywa7Zdjwhum84PiCk3bLTnxKVFJzlqANGoGSdSzQW+2ANWff7kmmhnbQy0vag6OAEMbiW6OL64eHEHiQtSez1fCPB1zb7hfdVdNG5fXLSUJ1fRF+a/GMmokAbrIziXonZ966whEalkLri/OpFvv4uUmSMgcEVJZ1Bg9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkiotD74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkiotD74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F34C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 15:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713541222;
	bh=DBC1hkiAVh/ABu4ZCohOPjVbMp8A9pZF77vqN7nGAQQ=;
	h=To:Subject:From:Date:From;
	b=jkiotD743Dynh06Ye1jb/+h2vVgDlAlbnvJnC1XL0llXSVrxIh7UaL3rr/v3+AeJM
	 clTesXZNokM32moiVHM/NOr0r8g45cjdNdwaUbKHjxTXBZJjs2I95xdbdz2wa2G36r
	 x1dxU+aGn9RwSB2OJqaHtNwSEhyvD2VZYb5VjwSfoEh8litiYVRdbLueYkHlKft40P
	 B5LYY+WbSvn6WU/aOgYPs7idbkbLORQrDKpXmSbCPWiGiLiyOTgTZk5eWCJBD0JtdX
	 d/X2yiw1KydW/zJFJbbRVm1T1MkJDebhzfS0Xdq2Algpg3pHoXefn323KpZ14AwjN2
	 xFgnOAI5qXvJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF89C04FF6
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 15:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171354122282.6251.7280210029261563401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebd1aa1291a6979a90866d14600d8dcc31008de5f312f36f3b278daac32030a
Date: Fri, 19 Apr 2024 15:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713541222
