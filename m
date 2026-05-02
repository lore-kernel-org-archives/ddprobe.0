Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C97F2E413
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777762054; cv=none; b=t5q3TXeuJDPZsGUM0I8BLBsLaWDhWfrSXOgjjKJQ3WXoz/Afg0AiLzr8nQ94lze5yKbG4l9zgikXyv3To0SrKJwfva7l7hIJH8eF0YLIGMjnwwD6kA/VoZZaH4zpipvAYAmgQ/kfl6fYm70kUvXNr/6hHzjwdC1dTy7SBNk1X7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777762054; c=relaxed/simple;
	bh=FHgDQiqfm+lCmLzI4ervxQprsKeQ4EUhsZprlfTCFak=;
	h=To:Subject:From:Message-Id:Date; b=gmyny3a1Sm10RBRIIS+93yPTNBZ75iQKpInheCaTTHElKrTW+8tZrFaCQNVOLlDR6ge9lGz27b9h44fS3gZ4jgt6ota4YMVhUWdZacT1Luy0vpUKmDIe7iQLf+yrYiaiHYZD6H4zDuMjJ2+HrNXU7SosXDoP83Ja9xILwqI8azI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mH8xGB8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mH8xGB8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C357FC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777762053;
	bh=FHgDQiqfm+lCmLzI4ervxQprsKeQ4EUhsZprlfTCFak=;
	h=To:Subject:From:Date:From;
	b=mH8xGB8D6YSs9nYIYfyFYMJfFT6nioK+oMhAaV5TD+WOCqZ48dsvNbhpPdp8OcsZ5
	 GpUgTlO5oyWuR0oLH8QFNSuC1gRe7Ld7q/8x20zpPCPzLsl62wK02sa7f3ebwOdGF/
	 aHCy8887CXFTV2auIMOPiO7T2dqaKEVqNTheHh9ORKQDR2PHzGBSCzOxldfHfv5hrM
	 vNP3gozOpmYG39DQoVL6R0T6eCZk0KcxuWJzBePdX1BdswVmwyWIiWylje53AE3Aun
	 aXn7N+/IxqM5FIsmA2mHdkiHXlqSI+OKG2iI7SlspWZvE2z1We3IBjF/LcIqKDgfyj
	 i4ou0QDTTrKEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1A6CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776205368.7198.11792718746204648404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9e479412ff04dbc73c7f9d2972781df82cd0bfd524bc1c65ec752f9a708c8e
Date: Sat, 02 May 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777762053
