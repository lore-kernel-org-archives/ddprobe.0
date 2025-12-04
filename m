Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1899426F462
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764859974; cv=none; b=J1gZv8D8R/zzfbDIJ/QLcJcvEEMBU5UJFSKmbR0h5BZKQjXStAspjoG2/w5t1yQat28HwDXj5uvPxULpTEK0QjPUMnEk2GmKvmwOWX/PnNFDGIrajaJ+tlLTZ/mcESmmxLQxUoQdhnlt4YKvDHkHuqcNk9dtNhaYLol8SidZyxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764859974; c=relaxed/simple;
	bh=jT1uVSGUDVJRc7+intLM9wQ8coU+F1zC87wW5CdeC8Y=;
	h=To:Subject:From:Message-Id:Date; b=Aa/XjCrGyEmVKHaFX34ApReTjquAjTqMG4sd/WCZH6/DvMh3k4l0Xr4nBp66Yl3brJ11QqYY/uaclEA8iyJYQ5aD4epv5sZO465okJJ8V3a3J2iyjNEmGR/Eqy06xJOUEZiv1JX7R9UIfXqLpaI4Ds/PV/wF/WRc0iEZk0i4scs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRq1dOXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRq1dOXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE324C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764859973;
	bh=jT1uVSGUDVJRc7+intLM9wQ8coU+F1zC87wW5CdeC8Y=;
	h=To:Subject:From:Date:From;
	b=sRq1dOXSeR07TomALs3uBHqPcgaWE0DOVnI0J3iRskmHkD2kw1OCe087M1x8O2i87
	 JG5zzKfPb/widpn/YNZHVKkxf91owpey+jxVkVXcFX2lcfYJSbblXXbcRaMUZFSViT
	 wi7Nnp0LtMqqjZ0EcqDx7L+KAFAGcOCFfX1aeuNFyYoI5HDqxw28Q2mcAvYqh86O8t
	 XpRDqo+f1yLF18CdKHN78S6Rm/pzPsCxr118LOwPptHsxBMhb3BI37x5w4jjIh48iD
	 vG3iSyaYh9OrYp8IFV/nxE3rBzk6DDtHpB6YnsWOwCl+avbfTqjAkhKYV/Blvftcj8
	 ksk4n8TmWvQDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF98D21687
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485997361.4142.15305615145114573061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b4d50a93a1cd70ebc054cbbc1a2e10e4dbacc4645530d8a6077622e9c4fb10
Date: Thu, 04 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764859973
