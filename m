Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFC3848C
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732066554; cv=none; b=hyyXbknHtLTU4Hd0QaYSO4DXUnvGBrWNAgrGyhg6vfkPrL4179QOLxauamtJgkAkM+gq/+aZGnIwBbkNHIQ7McMKWNT/XXl4IlLUXFHo5Ed+4P0jUQ4EEWK9M4xsN9VWH0tIaE8n0LNnJEFFF/0hJPjHXJe1iR253LJBHDt+9MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732066554; c=relaxed/simple;
	bh=Uw3hu+36rwj4F8XZb8fok2VVO06VYgn+sFIc18UJvYI=;
	h=To:Subject:From:Message-Id:Date; b=I2wdFGjnkKNVs9KSdII/qHmByVS/OYTyjcKROa/f2A4Gobu8TAu7e6EYiq6rpFOxcJ4XdhBNaXLPpSLkp10LFlb8dlCaiplxUKl4cYJVjPArwGXhHJaNg5cC+WKU5MQMgmBDPnfNAHTQ996fEvdgqk4AbCWPiqjMNy+YAQkDnF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hq4gy4wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hq4gy4wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19EFC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732066553;
	bh=Uw3hu+36rwj4F8XZb8fok2VVO06VYgn+sFIc18UJvYI=;
	h=To:Subject:From:Date:From;
	b=hq4gy4wbkiPOpREuGMyeesmwsRMPKj8JIJicl2MZumE90X8h7MJDg9b+rca0t0gG6
	 4NlGsJvbxVuhQNTqVmzUSIDHUxR0tZr4nkCTCAV9jAypWu2X/P5dvgz+X/P37VuFzo
	 5DG6yiWMcJ1S3PU6+DYks0YnwB81Ols6GaNhShGl2RuKjq6lCF17XOKBnzsml9CXnQ
	 ZxZ03dmLx90whALgKAYcvmebYABTHnrJUgfQGqh9XXC6zRhf8vOCB2Z2qoh0PRHIs8
	 P1tVDCV00ZeXHiil/xuenPkxu384xDsOMLe+kEdrhMrWz2LdXzkB0y/WEbexOm1Wzx
	 DJht10faAdGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B192ED44151
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173206655365.18360.7879076903018249023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c0efe8732c5157b39c313630251943c361b1ec99ba91b6662ba2dcae28d945
Date: Wed, 20 Nov 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732066553
