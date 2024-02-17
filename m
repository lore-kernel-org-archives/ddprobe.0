Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FA91C282
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708139297; cv=none; b=q/B44sEpMptOraVfBgpYHuiAEBPI//6yjOSbhlQ4DhAm5FgC6k7g/3wTMrnyF/oN/58bZObG41SxS8C9aIVaVWdNLvIKcSQU1qGPLqC4OMzIG+nrNWc7Uas6u8gjZFWnS5hXZ4TBrHw4VCH5CYTFj2ytMwbSxVVe4JwU8UEDWd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708139297; c=relaxed/simple;
	bh=wzzusNRtQmItjiK6GLW/u7FqUWt4pmTtTbzWMOs4o3o=;
	h=To:Subject:From:Message-Id:Date; b=jebRcmRDMry+dyI3gt77jvStp/h6hjxyVJns0w3ivt+fCaM41GiCV0qWLTxNLGQzO1uhMdeQJn5H3VjvnUXubad9/aXfYwTchM/Ee7RASkeJQy1zCrpI+8LDM5brWcT+y8eeGyTlG6l3vbGAcCdCf5iPWa15OKNSzTB2QI7WHcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBpuaDZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBpuaDZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ACF7C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708139296;
	bh=wzzusNRtQmItjiK6GLW/u7FqUWt4pmTtTbzWMOs4o3o=;
	h=To:Subject:From:Date:From;
	b=SBpuaDZyfgrfurMW1mNKXXpKkDXWsiJmiWUmgVJDCNp2Q9RyNDw47o4/vjPJmKlzF
	 QRCnIcpSsx2xSv3EBfVvQW4Yc7yamcXTFCCJITveyoFcVBRyccDHG9Y12JkUGG7kBF
	 fvB+reB+5Vxb6wR2HWN5q73mM+hmjkKXR8d8kQC7Izn1+9HKbFStXOGlQvRax8D1ST
	 Yi5OOYTrWb4GJkhK8YG7mcDgtynFlA1JVCKBTZZGVqU0tVeQcks9erofICalTrFzUd
	 rN2KGsRVJ36AVms3mvZQlzoAOSSloV0Y1joSfE5p5n7DIpOypF34K9IHfrx0GfyvUD
	 gQQ4GPM1UEisA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621F7C48260
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170813929639.26616.3240888396325574917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2514e03040832a36ea30554631175f3d21deee740e8c84c3af7faebe6f26e327
Date: Sat, 17 Feb 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708139296
