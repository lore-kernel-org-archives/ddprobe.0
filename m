Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB4131A577
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756230594; cv=none; b=ekHkwTScnRckp0RG3rTz4KkyrifAALia4bR5N+SZX5RXesny557mcNYRb1jnW/4UhHiGONVNzDYyI5fW/6WPvLRKVXKn8ldxxwJj0VVCNh8lleQjuBUmtq0diKdQ+ntd79PKQI9+k6c1f983eBiXQWb9Wx2XeTUBOaGRYYp8zYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756230594; c=relaxed/simple;
	bh=jkJVLssaMPMk17/pJrLAT+7QHyokDd5sWlXdlNrd3Pk=;
	h=To:Subject:From:Message-Id:Date; b=EEitN2ucgmDH1TDZjBAy9eEdAYK3wzv0aksCtbd2+N5Mu9HDdVc4Epl2FZlFXBsgBO00PEwyxk4Zvdnw1H1CvgjsBcGmHwDrFa+vz+Z2uN+GIXjOY8Akb9colddFXLL7teijoWv3KAS2RStZpPY4wwEOPdNYKZXdjdt8PRprv+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHZK0ozT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHZK0ozT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17B3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756230593;
	bh=jkJVLssaMPMk17/pJrLAT+7QHyokDd5sWlXdlNrd3Pk=;
	h=To:Subject:From:Date:From;
	b=dHZK0ozTwV/wo1v+YgMXzWc6BtdUbnnSjX9oVY88WN2u5BpJXGWAQZOXrc6Wz10ir
	 TBy9+6+pU4cVfuYLCaRFTSfO9Mu5lvWAkhmOLbLCQT8nmbP5c9vodzwEe6tYHSW0ZD
	 0zewhj9a5AMIndUsY5PYdINi/wveN1AOSRZprLizfTAUoIBzc3v8lRsOAXtHEELH+g
	 7EDTWdkIPKuX8beOihWt19PQskk5G0jyxmwoYUFV4Bl8sD5TQemBdEWbdNi8eeTbz1
	 WteuAnQMQeGqVjg1RfqPC1F3/9jjEFOW6PqNpww76GEx5YwHXNBia6ECsA3pLerCiG
	 aAbvzKTJrxHww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DBCCA0FF2
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623059357.15653.14913597228310254893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23948e4aebb8bdddbfb6d392177aed4beaf4106e6a8f27995228ddfd88c76a76
Date: Tue, 26 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756230593
