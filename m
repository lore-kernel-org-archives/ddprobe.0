Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC063B38A4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774283093; cv=none; b=av4yd/ZBoNpLiYzKQrhsAIaS9aiXe0ASMcCQcdvLfl5LG8KBrRjz8wibNJENh0yrmZiQtWzI/Lq7mBlhS9LpbD9DVE/1MTpR/DB3lhQgH8rgvMSgL5DNHidsA1wZ4yNCL5v8ROTEQE+t/LuDs1bYRM1oNY7zx4c9Goigaqtk3UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774283093; c=relaxed/simple;
	bh=5OmOgyh2OZS47zl5dY/YK2w3ymQmfArKDT6riRAQR60=;
	h=To:Subject:From:Message-Id:Date; b=mW523b7uIjAfjb5dODIaXYPu8HXZDSzhmd2LaD0zmE+rRzfBkaMd4HatPQIDYzb32xN48HdXt2oXlhPFgxnHq0Un7eCt4jBvJ0vgUMsGJT8dFaDaTx8ahg/eGvGIGJl190g3jBAUAjaOx1xuDIEykJNOdBklHZiMDcWRyKpeuYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElhNqX38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElhNqX38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C7CC2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774283093;
	bh=5OmOgyh2OZS47zl5dY/YK2w3ymQmfArKDT6riRAQR60=;
	h=To:Subject:From:Date:From;
	b=ElhNqX382oWAmaFHtoOpxyogBfdd7BpHak0Y0s4V2EVpZUd2vT5q4ZgyIStxgqwr1
	 95AdjKdbBxTqFu61AeWA4BKipHOkzrqIn/V2DUvyFQqECjtxE2dUcMszYHAJw/zW26
	 zaRrOmQc8C4zbpieO9hlvfmMkLUHhtlBSgqCDH5c5D83FgxWK4cgf0cwDVRdkztZHS
	 lM4GxvO03B1DHa5Cx8mRqMwHGqQ1/wvZ2j6020brY6kkCBSN6SkHcn4vKWtupc95vq
	 2mh1Yugf6jMYDGUUqsJEhsveLNsNxxhrOJP/429mEPRUhq8bdsWd3ulKDeJAwiFXRo
	 gZHXIZBkMoe9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F6AF483CC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428309358.23667.7072240944505052821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78362d8b7df34d0326dc570c295a2478a6b1da9ce773eaf7a96048f175f9859
Date: Mon, 23 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774283093
