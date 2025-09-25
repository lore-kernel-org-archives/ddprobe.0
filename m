Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E9C2A1BB
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758768595; cv=none; b=XQvCHmlNtiQYizF5ezRkQX1JNYrtocrYNcFBASqKVQ9WiEhnXxe1MWYvr+YpEq49uKhFuKMnp1zKDsVSaOeWbAprrl3Wz4P4Ofm0kgy9TGbwbCausd7WXkER1b3zRGtPPbUjuJi8gei5hfaIdZoGAFGvi6Q6JSPN/HmxpDX7YC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758768595; c=relaxed/simple;
	bh=tn4hz1/LD2V+AsuVyFhJwVRDTKfsUhV1b+VniR4pPmQ=;
	h=To:Subject:From:Message-Id:Date; b=kJcq9Zu13M/bm3RyA8khc7vYEJdOLfAYqLMhtL47z9caZ/Fs+DywK54Q35GdyJ0sVRa/TJrztB4TNDOlEQeoqZkpibSg4edZzxaCqglcX9sY8xz0QMSGSaqfWcsolHZyREUPvSNZ4F6FdsFPNSDmPWXncAVhCqZsNvNBMwOmH4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHVxggtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHVxggtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758768593;
	bh=tn4hz1/LD2V+AsuVyFhJwVRDTKfsUhV1b+VniR4pPmQ=;
	h=To:Subject:From:Date:From;
	b=CHVxggtI4/Y0zyQeTMNapqq56+0KEuN4LMZPboQGwfNBIGLxRXmOLLzjJS01e548R
	 USERRY3zJCQRuILRv0g4cP8a1mJb6x3IM2OTHA8gdLVlIDpAjZxsqDrBgXZ5vfXFBN
	 i45xmNE79jzcuzfq0TXcC9DURKI4uzstYyt6fGGu+XMpH/vSBBkMmcr23GraIBR1WU
	 ZmJo0BjIh9hU3/PzFZAvQi/r9Ms2hdNN5GZOObdvgnN3HAR2Q3d59sxeQKytF2lICv
	 8QtxoQQDgN4BMxTwHfPVCsMLpbOchjuDoYsxZP7Wz0uV7erJ6/HNoUIweDnxv+n8GD
	 ObD10SsCUG92Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F8CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876859357.28238.5521661817181901116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e1aa0d7599fd5053cd69cfd856fb657ba2276bb55385d3766e88c932a7375f
Date: Thu, 25 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758768593
