Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A0B2FA0DB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755016793; cv=none; b=nImHw+VerSeh67FeTDZeur57Ggul1krPRdQ1ZqaMX6zNzzk9lvT7IhspdLrD5eOTjAXC07MabsHHQ1lSHNXBtT6Cvgmr83hGoMEfDEvyAOfwBNCiiSEi68uO25HmHgL8KFOZHZlHCESKYav6UMrFtGRGv7bm5G+BrgXhQQrj+Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755016793; c=relaxed/simple;
	bh=yJ74rGkj6EhGhwOvco2F26OmJAW70PiNxPy5wx/CwOk=;
	h=To:Subject:From:Message-Id:Date; b=mRtXjHmQVd7IdURguSF+1S+BOIa31TbfoQ7JjqicPah5dOzl7O8IWwW3cduXibJp+SDAPWMqLDF0cBcwUr+w0ty4KgQfypXBpdhgEXk3WM/OEGFwemT548NYmmuIvEt96APQy/+qNJm06c26GtHubnhHeM5Ie0lepMqdPmfqthk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOFZ2ISg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOFZ2ISg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E48EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016793;
	bh=yJ74rGkj6EhGhwOvco2F26OmJAW70PiNxPy5wx/CwOk=;
	h=To:Subject:From:Date:From;
	b=WOFZ2ISgaGHkwYSRRA6EpDvciSTuN0DPyrSFfbQVQfHi13bJRvJNdZXwhT6Zg6HhA
	 2iI8TIzNJK7OQbgFaIpHXXJxZJycOzsYUoYsVeaIq6L8zw74GSsay6g6IfFYriaBvD
	 mz/4aqcAy+TMq8HBH86QJ8mLQzowPeMOxnTXjU5bxu+fuUaTfAOYZiosfQTf70W+AV
	 VZIXNsnY65BhntUNKdd21o4CRmAC92XRnc1pRcYrwpEhfARPIbzdsB9Y4bbWHsBYzI
	 /x8p2zHgdTbK/LaJITyMf+EaGJHau63Uduh38rFBmmTLSsbRxf+idQkpGf4EXe/aqI
	 MvrU5HGbyowHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8AFCA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501679358.6960.13393232692668672096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3463d20360da469445b21b7cd5c76e3ee8c5132fc28e98b5d17f4fa8d661921f
Date: Tue, 12 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755016793
