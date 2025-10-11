Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2852422D7B0
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760174994; cv=none; b=XjporTERFXNwXIcaxzDIX8g6ZNxDG95ZwUqNshK6TSgSlcj83pld80jNrBN/gnmx0om6xTA2Chq1rzplHcHmZ/sLkx1wdjlMrhnllDUdzrwDKwOzhb4AAYwolGfuFSRK0pdv40R6xMcFYtPOxfkVsMZYuWCqjBj8lVzSena+TdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760174994; c=relaxed/simple;
	bh=uTxDpVA8ASuM0n07faGJCBkjY35JFoceU0lSLIq1pQU=;
	h=To:Subject:From:Message-Id:Date; b=H+eiVEjs7y0wc9Sow14XN1LNebjkPeuVOXuAy8OgN6SsHL63aKBd+UiYi90pCzxzYcVAAJxVtRj4MoVC3B1jB60ta0a6wOdzxyd9ifkH8OsxqS3csKtuel+d9y6K2+4ehYyL0g041yll7g1vaD6yQdy4kCRjtwB37Bw4aP1XNUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGig25WS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGig25WS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B66C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760174993;
	bh=uTxDpVA8ASuM0n07faGJCBkjY35JFoceU0lSLIq1pQU=;
	h=To:Subject:From:Date:From;
	b=TGig25WSaKWmNT6lbfB6CiNv56O4qjOCab3UhPcWI1X1eMY9EWhscurUb3yjYNxZv
	 5JLsqAs8wWfHsV7UTtG7TcniprfYIG9Nl38X3yCENhn6AoNwK1d/Engb4A/oun5/yH
	 rXrEycAj3D+OC9tig0Ni3fkWAAdokfodhWEIKUAGTfxq6sd2tDGFK1q+IeRh8Dda7v
	 m2l9r6UGaMoB5dhbQ0jJxI8XQY2JKjeUhuaeOOWAvwccSIxr+7ekUfA0/bf3NWmiQc
	 4vG5ehheA/nvh55/FJJH2oZeeWTdnBJIcfrcZKcycfV7PFhrROTgzBGVla4VXPLMCQ
	 hUo0FaYoUcTxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E5FCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017499365.27317.1391303835629344292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fc0333220fc38d95b027468d7b3d6b034a7573a11dcd3dd8c295fbfbed2223
Date: Sat, 11 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760174993
