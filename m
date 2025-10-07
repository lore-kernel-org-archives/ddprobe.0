Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194CE23D281
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759876794; cv=none; b=CbxpYMlXo3cGJSESUqhzFBxg9tWIOTcVdN/5Y57/q+FgjZ4ZkQn42VJWCRKqB42///uh/hHTaKgvRjCoMtJZoIkLW3ZdKoF4p8cfxZ/FwRTrpa1TLcmOgl+R6Wo7MT2FG2W172V+M9C4t32V3O1sVDaO3k9zePDCjOy9y97MTK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759876794; c=relaxed/simple;
	bh=sZZOuK2aFr9o0himydK6H6XFFbOAj6A6RfHRv04yv24=;
	h=To:Subject:From:Message-Id:Date; b=Gx5XNHzivIbuuquDB9WopYHEMpI6yUIYKrcEaBsYtmczaco/UKC1gEkjeHOFIXlVibByEpe0oyM00aEaf3Beh60U+YileeBgdL27b8yPqmEeeycjVu0HU2G7P629jrVLqvTKVfQZ/LCQShlEeydJ1m+Cye/Cnx56ZDrtxjnBpRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQ/e+Lx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQ/e+Lx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A947BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759876793;
	bh=sZZOuK2aFr9o0himydK6H6XFFbOAj6A6RfHRv04yv24=;
	h=To:Subject:From:Date:From;
	b=LQ/e+Lx6g5eMwOlFIzzGkP+U4NjmFSCUzbXexClTh6Nn55/scNbcbOQA89xAoz1EF
	 II/pltEADxp+7OfB8TZ8RoO8XrPUb/dwJET7L/QHqfydgBrVSX5KKgWcwxxtIWfBEZ
	 JcNPRB2uNWRUiRTSn2ka7rP0IUDJoijup1MjXAVX4as6c/7ulZPAsfK1G+GjbUBCMx
	 RuVrGZ0L5EjWLIBfq12bjKXVF1BWXGaUxRiFt3vtve0iUxZ+28a1zJYvWRqYZlcC80
	 8k/22C77eO/3Vn+QG1AmUi4zmqck8W6Qr2X2F/3aL+YO4CLey2Yujf/SCHBcdEmSPN
	 X0ZR+M9xw9f8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967B2CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987679358.25050.5003019810488053073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b0a987b205173613f83bf83d83bf1f0e492102cfbe858864bd157b8b29b83b
Date: Tue, 07 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759876793
