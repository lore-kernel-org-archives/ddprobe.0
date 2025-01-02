Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EB01B4141
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735847154; cv=none; b=dE1qIV4/YLqhn7QO4l4jrZgGXB7T/A6IaQPLHzG756jaO6HhyfvOkPxXpUfWbjyaVRAf/9Ivj+kb0X3FSgwxXNiE8OvIMjNfabGGkyJ8brQKDReigxhy7mNzhSjOW8fOXytkjrCguv9W50KIS0IsFdpRy2c0hV431EGc835C/8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735847154; c=relaxed/simple;
	bh=gRHdoPAvy5ib3eer6UwmWBMiKGyTlJaPfPRyFAnPE0Q=;
	h=To:Subject:From:Message-Id:Date; b=lROQV1YsydOgMAN8OpaALH35M4KH5h3/IUL0dZZ/SE0QWAlkWjmoPPYstWlTBnZ+IJGLG7Q0I1ZIoMsWRx4M3ZknWMrBKfFE0DGifpv6ysa6nX3j6w06e4C7yQDuNO9L8FRineo2aPU25QcfK9XHVCLvqbus9lyAGYKypYHlKxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLjRlS5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLjRlS5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA5C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735847153;
	bh=gRHdoPAvy5ib3eer6UwmWBMiKGyTlJaPfPRyFAnPE0Q=;
	h=To:Subject:From:Date:From;
	b=rLjRlS5F1gSDmEfRmRjoLEySguqhWS5ELUCa1RIeKRizMVePvdh9QHhtPMjuIxpB3
	 Isk1FiIgLrJ5gKU6Kbzpis5Huf05opG1AoioRMH16cEjJEGUlyqTcl//q2nkMV9fWD
	 30qIbtWpNQBhK6CtzjFeRMhACqjGOvXrOyT24AKf/ZGTNcOjA6itYtlzSkVFUMesiZ
	 uZs9l2/EkFB6ipyinKIk9fAcyP7OIOeCuYEERoAtP39HpcQmDMvRyMvuuiBC4zaQ0V
	 eOZg7qw4pIm0G4ssxcrnIY/kp0a7nVKqA3W0F7D/ArsHiR8r7Rh+2HF69fRezaRL18
	 7mH7wVFMUIv3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AAEE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173584715359.20555.10655960580678008845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403c15900f8383f7f26c84cf48d6c53ceef979e042657e63e0e6fc36256f078f
Date: Thu, 02 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735847153
