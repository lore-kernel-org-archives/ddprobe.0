Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4AB1E1E12
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759810194; cv=none; b=o18Rov0J57DtekBuiP4Zu1ouh8XACJDVyHe3s0a+rWLNLyGfBvUasrJ29kMK2GBEIZh6HD4WQdUh0lupBnqwAvik/0K97Bk62odoYVEx2vuYz1Be6ifvPy7obV/dYJgVYiTUKiOragaMd4t4RNnQ7ajrBL9IPsppLwu8+3npwvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759810194; c=relaxed/simple;
	bh=e1JyP/3RwXnP8FjqQTgFGTEKBrC+q0L4aKrDvaEj6nA=;
	h=To:Subject:From:Message-Id:Date; b=kZ1K1c9tmQ2xQczdh6u5hiaxShMgeJcqep+EtHPIJWOIlUwAnofOJmrePNdIkvXbCdFBMR1QM8MTg/TkdBTXPjjABSYMOIMaCe3T0OAQ6ZtobW8sWUxGieNVI+UgCyoepoP3rNcdfXjuW+k4cUaj5Ox5M5DTOnHUBtZ5KA3LJK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHCu/zKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHCu/zKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D8DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759810193;
	bh=e1JyP/3RwXnP8FjqQTgFGTEKBrC+q0L4aKrDvaEj6nA=;
	h=To:Subject:From:Date:From;
	b=iHCu/zKP55gdwW6QZFRsnA5/+QchlRG0q46FAkCvCxKIy+XVYIGpCRq/cC21rBGl3
	 c64TrPFmP9DtoXyANk9sNAie8vtNWOx9gxEblSy0Yut20mIFKSN4/FPcjQKIzpbcIb
	 rHl6V3YFNGA/UE831WDcL+7XsHpkdMwHAK13XgVxZ5MND9ATqdBhLYNWV7jH/9kcGJ
	 +vjYPQldFu2GpVw7zsikgFvibKNypqdGTB+mXmbDE3wUOFx2g4GXTmLyxA5gRevg5R
	 iPSsfV2Z45ecuAHBl8XkoI6U8Fc3KMdL4GoZU0d4ywleJfgIkLIeQLN7JUxXC0k9Nm
	 c+Wy/7Z6eCl5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968FFCAC5B0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981019357.19288.1607147414020607583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb43e02e4fe85cb641d14c90003073e3d990436a38decf44eaba42e22404aed
Date: Tue, 07 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759810193
