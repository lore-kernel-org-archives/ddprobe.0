Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34947200110
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773515694; cv=none; b=eUJZOY0KHfyW27WaKyI4zm/IehBmqUB8Ytmw5EBmpaxXbcly90sMoO9lED3xLqqM9EiLL3GjkOcL4r6o/Gq1XcgVGu+w0SvpWd7G2X1TYeA5J46gM5/aEXYd/jh4CXm+hor4xE7ZWnAmo9jeJJOx9eU45+R8yDk5iTDEr9psSP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773515694; c=relaxed/simple;
	bh=myYnolp98ZQFKYedCGuM3NW9DEFPiTr2CGnQrElpJFc=;
	h=To:Subject:From:Message-Id:Date; b=na4UHaLE0pWvzTPzGJYnm9I3Ja0GaS5xbj+igJMIjuL/Pa12mXnXGxivLgoQnjWTH5nBq00J1w3G0mSpeCJGJ8rQGB942TCf5+H47GpvFVSkMSlWQq6xRG4mJH9Un07E6bdy56bBOLhicTW2ti/8wXDax5CYCrBcMS6KK/hu31U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFPvHjc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFPvHjc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94AFC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773515693;
	bh=myYnolp98ZQFKYedCGuM3NW9DEFPiTr2CGnQrElpJFc=;
	h=To:Subject:From:Date:From;
	b=aFPvHjc7UVE8t4tMGRc5KJ8y5KuhHTai+s3FAHZPkEPlzcpwSrY69ZkWSUdlQUJhS
	 2gR402SMg7dAk+KnNKrsy0NpdTtdRv1LVisgZRERafNznhU/0hRv+Av84pa66X5SwO
	 eFi5yeZwqkypx+YawkWAP2j4/hMLo4ReI68VWuC8cLBZar7H5QLV8o3R6oA7tSyP0M
	 asECNahgAjBnFOaKSICXBXvKbik6NHILp2nMRHwXxCJeg8KHaqNr+Gl2HWw9gMBQvX
	 E0j/eHJ5qkuOj86Z8uJ2qHM1L/MKYiUWCiI1CduhzfNSlvGRaADL2NoFmQrvoilLpz
	 O4QwfpS98LMpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A80105F79E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351569358.26326.5614132752059640587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931ce6991a1d4599624f4246244e529b4c7d8356dbff31934b79beaf8aeae365
Date: Sat, 14 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773515693
