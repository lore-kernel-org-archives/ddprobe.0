Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CC21A316E
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751905195; cv=none; b=hW3fu1LGaoKyXY3KRA4FidtYXo3FEDy79oBJHvVCb9CE1A7nOWb8jBs79ElvN8XWPkpJw2v4EMr2Bs7W4zMeSv2M4ZHg8vL/RaUBq30mYvzGxn6wCaKGP3Yx4mZmQ3pgFD/++UU8ovRcx1lFlVB1kaXbavabQ/cDp6EXhC0wfzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751905195; c=relaxed/simple;
	bh=deFFTogMdjlEZ/0XCKB5c2Wzwy1416MIaxd6sDFaBa0=;
	h=To:Subject:From:Message-Id:Date; b=aWItx8POdF5d812cn+L/fdRY940u0EUJiis3vP2iPBmgo6WgjM3RKkWKDVTMyHR3OzXgMCANNCbcm7fTyD/qqHHOer2jc/mslQI+GFE6BoZr0Uygmatky3GVv5DXb4LsTgbPM+VN83UAUN5yvdod/uokb8Q6ra5yvD5Bd6e6468=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmmepFji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmmepFji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D96C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751905193;
	bh=deFFTogMdjlEZ/0XCKB5c2Wzwy1416MIaxd6sDFaBa0=;
	h=To:Subject:From:Date:From;
	b=WmmepFjilSKzNieYiH8kGXz0EBx6DWNq/8KpyEHaPIsRrF9dEMwCT8GKFJaDch2kq
	 XOuHcApgJVo1QtJV04K3Zi68b4Odz1IKZ2jGOsAqxMG/6pmxMkoiwaWG9rUU7GVAww
	 BwPKQ9hbUB1LykyO9NRhzHXnlPObJerOt+cEjxIaGx4hMTG4SJVZBKH+FqMDUtzSPY
	 BPYBtkoCx7jZoAjXVQX8BxMe3jHkKkmfReH4g8f5le9A2nCE+DWfsXyjdWm93iZkBd
	 4SP1whYifkFzH9Z06twWjFOwHAztkAnFDaPo6PQ79+1MmHXAlCoKkIO2W8R7ekqiEq
	 XgmCaw5UnTwGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC80C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190519357.8385.2866374647725193195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5669322a03c155e38f87c4657fbebe1f9310a2fa85b997a603c4a99bf5d118e
Date: Mon, 07 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751905193
