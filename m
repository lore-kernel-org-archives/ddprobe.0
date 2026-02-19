Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1214733A9FE
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771508694; cv=none; b=tW5t32I5uV08qO+hrteLqE//yg0Atx6kvZN7MNB2BWoJOtuuRgAS/8SrNzNeqMvjW1zgIDrS+NliYwPax3mUdfbOmCH2M26mB2Bc2UoBypcIUaf5+3Pe4eBX/8ewN6jP/PS8qo5C11Rf/maY54k4gFb+ASuV8Ws0F+5nQb4tiCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771508694; c=relaxed/simple;
	bh=eW5+8XRWIRpjfd3+aQ1iBrRKgiYcDkP+JNp7Rzts+do=;
	h=To:Subject:From:Message-Id:Date; b=Az6oe/EsnzEnWX/BaE3uQ4zAddl7XP9hRog8WlGQPHJsZY4UOxTBTKbByTmY5q08P5zGaUlNbpriJBrKSMadWwSxUKbCPDFLuT7AUjuxe/nBS5gCCAU0gyUxu4vKtrs09RtsOc72xA4EE7YEZuqPHggB3ZxGZmaNcogOEhtaeAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KziVA3mP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KziVA3mP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD38BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771508693;
	bh=eW5+8XRWIRpjfd3+aQ1iBrRKgiYcDkP+JNp7Rzts+do=;
	h=To:Subject:From:Date:From;
	b=KziVA3mPsoAbJH2C4HEK7uNPCEbj+wPd7mPaQGqGHclaVRDDh4F2X1qyKHgV57uEE
	 cW+lLzAmEuNLVJOQIwH2XjVZlojFo04rfNbyJ0y/34cL/QG1HaBvMq/E0yt6k986LO
	 +gbAs935o1gMhGD06sdmfcfimDteDspPmAqDsL4E21srjwpnKBtAAnDlhCYFhCOy+V
	 qjBckmcXJzRyLi1L/7jHoBPKRGepoy2SdxIUOT1BjyOXt0GldYyMAdLWtvL380EcN7
	 XhBTJPouHxNV7zNdnck4v9vYwj4n9FIQEHQvVx2g8Ezqzs7jqfngMwHU2xRqRLDUjc
	 YvIxP2jXWCoOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9765AE9A04A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150869360.22412.11426665243935596240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a2bbab7877c59acf84d243e080104d14a189eab2510c69a1c4a82a758267f7
Date: Thu, 19 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771508693
