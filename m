Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FCF404895
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779183634; cv=none; b=XQxqe1K4DbtRkcF1ycWEe1rn+Q0NX+2Q4garY+y+WwLO8ilvCL5KOjvVqmXYyyzHRJPGVkwMCqthZMsPyV9Sy86gR5vTy9a8Y4tYgNp0VcIov6hIpE5UarNhSd9MbOxOrrneRMbRr3dK7DQRMjOs4t+6vH+CINlAmnaTMDgOqto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779183634; c=relaxed/simple;
	bh=n42L9/cVZMrcrPJGWtbWJ+UaMCpDqvPX/Xgv91rkwvE=;
	h=To:Subject:From:Message-Id:Date; b=Fw0eqiDZPl+HfcLVVG45OLbaZTD5kYWfRKYyPEn+ScYevVgvWuAlah3+Ok4QOdvKDhxx5Zadj5iJWDIY8xiN04gLrNpkIMbFiAaLhFdrAwtGUZA7/LYUdb6K2NjUR5XpPHrLZmshNsOiJGbko2zz5yW4/53I1EvGWDkCRoIzYLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfrganhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfrganhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB5EC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779183633;
	bh=n42L9/cVZMrcrPJGWtbWJ+UaMCpDqvPX/Xgv91rkwvE=;
	h=To:Subject:From:Date:From;
	b=PfrganhWWOrvVJ0KrNiWcPGKVmj+7csY6/+67tHllkAsAMNasOZgkusE/zHUzZKOz
	 DnEpRBxWFKkorvyo6GqcKCj3IjA4A5R2svAg2SNI0/dp/gNi7sc7GJczx+uvRkrztU
	 55Ey690dvBDd9m+PynK61ttnzVLWJitkTowJMrWqN/s268FoCQYeROUWO8Es+5o0n9
	 YhZH+gFbR0gx2FCKvVhXQuE3CiMDsNVkVah3LG7mMJHtr3oT6xPut+tqws7iMhJqt+
	 LRplNmjiZ92oDy5txswGs8TR6HhkkfQ23rsIlrva0m5ZEu1XJ5vhY9hfgI3gUFxvoU
	 uvtGuH9PgNPKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD7ECD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918363369.15833.5427984679640759440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa32ce222bf2ab850d2127b321301a58ed9a1ffec2a0b4b73f66a02ac8f128f
Date: Tue, 19 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779183633
