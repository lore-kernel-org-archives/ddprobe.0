Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CC613C9A4
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738892155; cv=none; b=HfRCnSmaWnUYayD1LoMA4S25t03lgkIb715aUYtqB4iKQ1O1nhTNIuF4KsKyvIxKcQbSFxWAkOrgGPoUHHkes3BwBftGMaprhKcI5QEOkE5NYkA9VWzdoV9gGY3DrirXO7LlNN2jg+KpN0g0pmuULzGzzvyDLnCcvEtvBTDYJZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738892155; c=relaxed/simple;
	bh=5e6H9hVPuGclRsZPABdq/VA19170dasCYpjnZYTL1Xc=;
	h=To:Subject:From:Message-Id:Date; b=gHbyIM0+X8Kj7jdkJ7I8hxDc+47Fv5V5ehWDSlecJClD/+CbMTTwcteoSSkwq0PQE7tBKj8dGCE4MfUXuePaeOXRVl6tSUeodsolOyY7FwZE7JE9cW3ydEUCVQhaenVADA0gRWNf6K8EA7Dg7W57GztYa56yeRSbFGhAsQWBGcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XoAC1i85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XoAC1i85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E37C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738892153;
	bh=5e6H9hVPuGclRsZPABdq/VA19170dasCYpjnZYTL1Xc=;
	h=To:Subject:From:Date:From;
	b=XoAC1i85WbDkITDBkSXhKVrbSTsejiyFr3Amh2PhXTyP2Ca+LqJ6nzg7rezW3UD3t
	 jfP6INCwmlToXl32O/afX+RXxwoloMwslpFjDrabzNcP7ZsvMAEhl0hHN9WzPySm17
	 hG7TngG5/QHUx0QzX8+feglc0FPCRyTplIyMjmuMZJlE0DGjLXFJPzfpmdEXXJzRfc
	 O9w5cZIInI+Xq0oyKG33LB3QkBlO3iHApnlKrnOYzYl3TRmFo00MoLCA9fQ/xc2JiF
	 lOs8X4CKn/Dj1p+FicIC8lG82lcKF+T+6DpbLYjz1dmzBCkoBB0G3sorb4/CrxyUze
	 0prqEUUrUACiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22FCC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173889215364.5914.7471801995464918716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47354594f63066df7b1731bfc8ba2253b86f8b0204e31d666887a60717c4b4ea
Date: Fri, 07 Feb 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738892153
