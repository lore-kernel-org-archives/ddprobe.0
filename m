Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29942E7F1A
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751554793; cv=none; b=qTdUXGyH5d0IH3RkzuwbA3/ttrYxkNfJRc2PjLK/u/lWKYrP7qccGsIjOapzCDxWOJoIORbIamDlmoYhCNM3uIAwWt8KmN/r3fbWSun9A4PuvuhbYj/llFNb/NLuCjfl9ganwXCBNLApOQY2o2N7o8yV6MYgJ5GHfr5HagG7+VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751554793; c=relaxed/simple;
	bh=py5liUEXrSqeGSTZdQXLWW/AMeeBNZgboygEFhCGwqE=;
	h=To:Subject:From:Message-Id:Date; b=BX2AJHUE2HihCLIWyjv/uPpqIrtKSuUe7FrdBicOsqIYHL95Y5M/yo7HhFStYq6AUxk02MwCIE7QDTsGXnYmKaUU8BN8lgHLNOj4xejis+B6fGVaNo3Lgy0+grseVqKifsZXDFgIvQkzv7qP2ChZx9zwW1nW2fBanUD3hm+ZoWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4PDdhbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4PDdhbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D974C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751554793;
	bh=py5liUEXrSqeGSTZdQXLWW/AMeeBNZgboygEFhCGwqE=;
	h=To:Subject:From:Date:From;
	b=m4PDdhbs2sf7JTPT/DT38o3mlKOk4He1gZde+E3eoj0OvX/nwsTzrbIaSVZJTvOr2
	 VABXLfP0+nJQWlPh96VE/Q0h6awg6xQpvCSxat94u+CZ8m34HeoOO+tzGN3BR4IpS8
	 fQro+cdPgzb4aDylm4kUuoLxv/4nfT6FMwi1eNnecjHBvRYeq6VZDLWNtfovcQQWKU
	 L+dTPV6D18fc1sKZ+UFibl+fnisEhC+E/0w4gl2laMxf9+xnsrS5YZ0GsFR3jT9Hw8
	 7DAqJHoplaAY4Of7/A21rH5iRhFX2Yd3ZXrLio/1P4uhwpZYAwXJ5IbKouC+YF0sRq
	 rt1nouW6Cv6yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F7C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155479357.21135.1250638999460146652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a8f60ac7d8c4e9f9f561fb66f55c07b6d513623e822a5157bb01bcd1de7a01
Date: Thu, 03 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751554793
