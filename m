Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EFC1372
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739411334; cv=none; b=C35mx+Z5Mp4qsgDMmx6UR9Cvg+BfWELD/zzyUOKqjC/h4przuhte920ZAbeqpn/pUMy7D688iMKmqPdBvdbKgK5JMA+GFjQ7uMqJp8HOM7rtO3eOin5M+UZSHEYy6tpvff+9bOxWKDIzp/cV+QBI0BSy3wLnU8JK5phGmKGWRoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739411334; c=relaxed/simple;
	bh=AJYnNqBuQcB7POFU3foSWpTzq9vt8tenKyNnmPmkkAM=;
	h=To:Subject:From:Message-Id:Date; b=o744BsKNQHrHPHlFKT48g1DnQbcQHRG2k545McIwyt/AlXxppHi3RUhBJFRB6RmNklHgRmUf7v9Hzp/NFQc20AvHir9f8KzzJzcewdK6CWBz0Mr6YUtaF6TDzxdZMbmcx3cBr5xkgvIW4YPx2sP2QhCvoMnZTgCknCY150wDFvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqEf11yg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqEf11yg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B558BC4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739411333;
	bh=AJYnNqBuQcB7POFU3foSWpTzq9vt8tenKyNnmPmkkAM=;
	h=To:Subject:From:Date:From;
	b=LqEf11ygjJOC4dps0KON61/gb+bUrZcWoDt6Zc7+O6sJdERtLo3vdmP7hGD5ViETn
	 YbfLLCR7dk3Umlh2iBTq+6l/NMOaE0/V0v5LmWx6DqyO+KF8XbzecMD4+LgI4p9ezY
	 Yvsnq55BstaD5N63BmIeQ/xUVxDwsDX2mj4Aqq18SvUVrHRtu64/E/0NQe2XZKsw8Y
	 adhX/LffNA0R9UMsX40DZkmR1PiDALvrRCQlL+mTVBXvsjdevRvh+WB6s4InTleT7l
	 VOh77g4/euuCJHr0+uhTRjjtkg8OaFrezteJxAHxnv6lFQOHrwaOfxv8rfwFjFbx+G
	 1CZPKLxZ3gt3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A258FC02198
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173941133365.10015.6470757508381748263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c8845ee3f295e1055844ae11313d9c6d07957c8fc111d326e83babbf07ff33
Date: Thu, 13 Feb 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739411333
