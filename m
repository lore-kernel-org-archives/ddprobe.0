Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F9E1DEFE9
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750969194; cv=none; b=MDzRES981098PXzGXSM5xN7s9qZk/JxghexuNmWFP+kvoy8UuJPBWKraYFsMnSAsUFMYn/bBtrnXLmJM/OgjmnVlJ2FhNJsAh3LwaXskpArbi2fBDyWGbgkcgqc9Kd3GtHu/qSkznoiyEP6Sk0iwIF21ArjbRnUlg5FtsEjCskY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750969194; c=relaxed/simple;
	bh=8dpY9a2/M36Dw49qgoYEpnGfDbUhKgUrarnwkn5Gadk=;
	h=To:Subject:From:Message-Id:Date; b=taDbtvbjPUG86FI1VwnABMtmaCKJiuM/HE5ehwK2ezIq5b5aW21fTzCqQBCF0rvcX00W/zIA9tnubnFavlYMj0JzSKYCqiSwJ6oHcvT0qS4augwA+lLnlJDjw/fl9ds4HctK/IrlIdtNwY6mwT6PE4jfAaLzTU4Fp2Ejh5kDmKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FI0UpTXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FI0UpTXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE6C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750969193;
	bh=8dpY9a2/M36Dw49qgoYEpnGfDbUhKgUrarnwkn5Gadk=;
	h=To:Subject:From:Date:From;
	b=FI0UpTXRk2XYnyTY8n5GPCVuroDn4jKcn5qdpAr6TFVRkrlrH9jqPQeHL60OI9V9W
	 r+W19Pkn/zumqu/4zoXvoTlTCHXsdrE43fwmFmX6mT07X6ge90hylfuojlmX0GtHo6
	 uYsrqssrb+MdY/U66Q9hjIoXqYSaCPqAhs84tHbVoixNFGxVsjeNnXrT2Z1++h0fsL
	 3p02oxttFHPzK2iNJOZQcMAzfY0iY9T09Gl20vBptdY+KDUvzl9z+DnLbgKDLDvAfm
	 bBryW6mQTKNdJiGOCuVkEWTF34/E999eaZFCeeOY7tgU0ctcS8p/iVK2lwiAIIQmG7
	 VFk37QMPxY77A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ACDC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096919358.30934.1034390553914972453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddab1b6b4755d8491e75ce1544c23e0b6e5740929844ea2e36837723517cf620
Date: Thu, 26 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750969193
