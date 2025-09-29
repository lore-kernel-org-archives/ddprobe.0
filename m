Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119DC46BF
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759186195; cv=none; b=dfku7OW+ofUaJTinWuF1OAKN0UbDtkEx/pDjUyyTe3lyHjYzuP6AmHVJqAz668qBJSPy3hvXkW4snjS/+KmdeYie263rJKxhVuZ0Ti1B6UIirkztR19YiKCYA8GeJqw9DvGVmxiqme0EC7L1MteUcTNS0FUDwSrbIxrGPrX8vKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759186195; c=relaxed/simple;
	bh=1jUJzpfzwGi2o2WXiVlHcAM2tFDYmyQXQ4jZrqfoid0=;
	h=To:Subject:From:Message-Id:Date; b=UjFz3puetVMZLBfHxoqaAJ1uk8/u+qQNKN7oNiAD/mfA6nMqz4EBXNn1Dvca17xJw5BVzprn3G/VZIoJCbwLM6k9upV55XFS3B4mn0CZYE1CTSZsr6IAbnFrB0mEKlUCRTVzTe1A2OYW5V9nzKzXyl+KTPjTHL/awkOp/8ZLhDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zig3W67m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zig3W67m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5908C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759186193;
	bh=1jUJzpfzwGi2o2WXiVlHcAM2tFDYmyQXQ4jZrqfoid0=;
	h=To:Subject:From:Date:From;
	b=Zig3W67m6ost33U31NmPwGC/INVKOT5VqeCzTgng035wK0SA7T0Mw+CoB1JptQM8m
	 vjppBA6+gyZ1wuABHRc0GCIKYzGVW5Ktd77PjZTDLjESvt7MHOCL9Q9fO055KkH+CY
	 nbzeyVC6vP5V07o+ebQtDdBoImYR7kE6eZIUG05by8BTlbKHwiwXv8pBVIw2kTUZsI
	 DA1VOKlwO303vcTR7GjtDzQw/GI3dYxdLDFX8ywmDr7HdHBJdZ/BKizyt768GNdsHh
	 1k2A9iE/ymDoOlvKRu2XmEc84s9gBFZb1NuRZwRwY0MUhIBzTqkezUISU/eVTS0FQO
	 Yyv0RK9lJzSNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D46CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918619358.383.5855691992415788253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80990ad6e97da9e5d78bc89f5edcea5a6d67a80aa7cc38d0af529544b468906
Date: Mon, 29 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759186193
