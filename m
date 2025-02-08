Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5066913EFE3
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739028954; cv=none; b=u5FFJ5Nwl9WgYS6XLK7JO2TvcZ5Shx216DGCIMwYRjPmgZ9qwxJ/vwLT1UTMvUH6m0IMsGJqcLpKoVKlWktXctTo+qbiZE+rqjD8e3p5IFXcytkCYwuqMf8QVqLwcke2KB6cqHzmtD502careNX3KJglRL6sEwb0SvMMhW/a89Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739028954; c=relaxed/simple;
	bh=DarkAoQ/F/90fGNGqspjhWphklGlIog2Jf78R+3DmFE=;
	h=To:Subject:From:Message-Id:Date; b=YKkRppa5ySBEEHy5x1E5wWZMQ1tZ+CLIsMHuf6JK/wkTuZNI1YD2RgA/97dRoYgT3xkeBhOPErEyEeI9lKPUI1A0e69A6DRufiSkQ4AMwuVJxopfVofbKxPI/hW8H1IHbVit3Ib7HrIiwYLqSXF/CwwEOhMf19jMDxwy7lsTr80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9FUqlaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9FUqlaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C149CC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739028953;
	bh=DarkAoQ/F/90fGNGqspjhWphklGlIog2Jf78R+3DmFE=;
	h=To:Subject:From:Date:From;
	b=h9FUqlaUOjQWtjMqlTTvtKeFbsTmIatQ+MFQbwreyF1iU4rYQwlnXSgFpu7W9NqYD
	 +wuA+k8nPAUiI8v31wJiY/kzVZjKK9OhaOpBDcU0hNV4WRNPUx0q8FYignkc1fCk2g
	 0BCqliWy2lquWNFygg27OuqsOaZ2TtUCQzf2vKcqtyALW9/KFM4fm6fdudl+40YO/A
	 /dOvKMNsKXKuIaW8MjWzoR/1b/RxtO1WR7s7lHKbpyEhBYszvhmKtPLsn0XBoNEEIZ
	 IfsgDbOLFCM/8fBS0AKtItMuuh1IEFFct42V9WtAvxifrbJjAP+GaPB9bXLUSSxM4l
	 b04yQFWHp0hGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1497C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173902895371.22466.17486056081529594273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef097de1921de212460e6fc495f8b7f186692bafaea6912f687f34160ab217f
Date: Sat, 08 Feb 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739028953
