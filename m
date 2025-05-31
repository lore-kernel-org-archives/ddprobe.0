Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDD323BD1D
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748704194; cv=none; b=SvpY3CrlZIMty2mMYl6yTzWsnvvbLYlvy0Tp6yPMvLlYK8xRgF4bWkg9wIe+N+cuAzTaIbSqAYq83P0wYEl5HaZcIkCi+oKeXku2S3V0d0IV0TEUCaHXwzx3edvEWX7GfIeURY0TadvZACIi12tgYX5IXYCx81kUSXiaeJ3dCoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748704194; c=relaxed/simple;
	bh=Kjea7mJrupvgckIlw1S25H91uvVB3SKYnhM6EztUqHI=;
	h=To:Subject:From:Message-Id:Date; b=Kg3BKFX9lUnDptRSm5tEZtYOYyQIVjxNMLyxTT2KXeMm40fg6UqIopiEHG21SbjhmKny1EZjpw6vnzfXsuhgcopRqVzFBXASG58zaRZ1h6lWalw+1gPfCFpXElJE7n355CU0J+J293bq8CQAphUT0tbEAZZEDh2BU7kuZ7Z+DkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfJKDldR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfJKDldR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C84C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748704193;
	bh=Kjea7mJrupvgckIlw1S25H91uvVB3SKYnhM6EztUqHI=;
	h=To:Subject:From:Date:From;
	b=dfJKDldRL5neXK2VoKOtc3CARiZG6BNbQN1pNCWkpvPfJSlalk5UERVXxJNXuZqFZ
	 9TLwhplFR/fS3Tp/LgPPwk+A0tnAGcmhj6ugobRdsa4cv5YWM7RJRUvlvyqzoldiZQ
	 FEBi8oOwFSK9VKFmXnKXT05J7nVMCEg5U1u6lMifyHBdW+aCAW7//8mKiF+e+JHdzN
	 Yovrly4rQOzBnTXQV+SdbTTTHUOCUDOggfeg+IHIoX8uzHk+YqHOhQiV4dZX6PVsKM
	 5BUgUvacmorbae3B6LyyanyNbGbe2qq/xOLjfuK6TkTIy/poS0V0Z4xHV5M642jNQV
	 5TZS/9Hz0QWlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962BCC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870419358.31319.12094108382533446679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4eb88c8f9dcb40ec27b9c56b17d29667a8d998ef244a52e93a74bc8bae65ee
Date: Sat, 31 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748704193
