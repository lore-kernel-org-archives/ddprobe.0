Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFE42F4A
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761350994; cv=none; b=rDt5SB9beJe28HwA6ma10cd0QMebR5gVoguTTZmhjeAMDXjCb/krsDkm5nGeq7Xr3XSnRtD2X2sAnYL13/br24aHXmobIIFEKGCeiZpIVmftiVUF6uXcbrz68xfx/TRaIyhuZ75gL2quRKxQFjvNDy1FFpX4rIDukexKw3nC+k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761350994; c=relaxed/simple;
	bh=36DxOJocKZc53EVtXtDu2QRbFgl7KkKUbp4sN+Itc70=;
	h=To:Subject:From:Message-Id:Date; b=mhEtXhwTH3fTnRObXZKfeBpgoCjvoOHV3EnIKA1CCGusOpA7DQqvr4FonZJWrpM3U+7qC/EsdGbgou3eUZd+REEwhrqhIthNZr1huHX3QYtm+R0srjf8dnZadIWG9Dhep3ukU6fdVE8Qq897yYnS5GBqj2n0LcFuGRpwszrTkag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZwvCb0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZwvCb0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDB1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761350993;
	bh=36DxOJocKZc53EVtXtDu2QRbFgl7KkKUbp4sN+Itc70=;
	h=To:Subject:From:Date:From;
	b=NZwvCb0b5ofXLQp3+3icsFKH2wxb2vttAHjPlzKm4xgAbVy5HM1HSoYjsAYgq+bIH
	 vTmf47PNBpOx8F4hHYgmBKiw2Jzob6D+VSypuKnFpKZgZd3xTd7RxLajv6ufja4o1m
	 JS6sF/2WGetLbTUcnWdpH72RaGcA9tmHWL2OfeOnVoLvV63ZsJlpg49M30HAm55VK9
	 2eRow5KzzKYRFhbXVa+nLNjwQ5rQWCGK2c5ztJve3OFoqqHTAZbWLk91C+iUPgoyRb
	 WOLaqYXhoGva+Fi8zihnozJIARTNKCMTO+aoxLgl0sN126TbB2rBcsdHJ7gsT9D0rU
	 k0hM+f+pbadHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FAECCF9E0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135099359.17641.15069525476848716263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff2f13e8990371826a96da6220d5515983f9b1bbd38447bc959adbbc857f951
Date: Sat, 25 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761350993
