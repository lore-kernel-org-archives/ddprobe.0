Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2232E1E5B63
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762815594; cv=none; b=Z4IK7jaYucE5pmuA5mD3WihZW9UO67+ad3/bbqmUArP1KUBsTLgGU1h5HElGh2RoJtVeqyYactoGUnP3ULHj9EffBRlDhQiJ7z45Yb1xOVV4Q2V5vzBpKHLVceahr1C1KmDVOJ9JoeiJb9faikXDLRwc37RMJImnldOQBnJ0LKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762815594; c=relaxed/simple;
	bh=z2JaGHtt0h8g3bZQ87i3nH3P8USZyrk6YPo18Gp6QTo=;
	h=To:Subject:From:Message-Id:Date; b=rEBeGWWKEJk3B+USjWG/C4k8ts/tUa190c+YVtzIyUCNxxAem+JYM3CdcSdSZoLOGrLndj2f084260fKBsInj1KVVAvajfMa/p5SGAJQbjVS07vE3cF0JzEZfVgpbvBnyVwOK3XEp2DCkgUZIpgMfZea/JZ1lWA06qpSUkfIYpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aj9x4CA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aj9x4CA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D956C19421
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762815593;
	bh=z2JaGHtt0h8g3bZQ87i3nH3P8USZyrk6YPo18Gp6QTo=;
	h=To:Subject:From:Date:From;
	b=aj9x4CA5tGOtZ6kkBxCKEGF8uCKCbTnbpzre3Tky+cF0a1Pp1yE4rca9BdZ+fc6W1
	 Q1cRFRn/WHRCpl8N/TodMrROSSai3ni/aRfxaKLAMBJrO0Pc97On//XgMGTnXmXyyc
	 QPwZ6UFdg3O/XhmDKqBP5W1QHL3lRchJ07uwD5vnL/r010IZ1LMfEHz4QzhZE5NV9e
	 5ieo/+6yO5o40bIEHdhzh75625R4gXM+qoeuBl6cdFtDwV5nlaCRCJLWJaibuVylHz
	 x7xh/yxFrWAY7TXzlywHIBzKj9q3NPc4awMrRePEOCBjGd9wx3C63XBAoKnlyDCJhX
	 bTDxObzjlLBdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FABCCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281559358.30230.6706313776986328872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49233112d363db293fc6ed58228f4c0b20607011d9a036e3a571008e6bdcbdea
Date: Mon, 10 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762815593
