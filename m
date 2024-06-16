Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AEA33C0
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718530103; cv=none; b=ZtJS1AAv7g2ncJAaCXOca3WzhNNbsvCQ+nil7AFER2Cul40VOI8KeLuV8MeIpmEpj+bcf4DUOHy+eUGnaF2VOzunJVobemK6Hyt+1WEPIC6/BLcUCPFFD3o5RH5kkEEYc+Mml7mKrYIHtZ1nv5PizmWDia/X0c4a26zIHnlSdzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718530103; c=relaxed/simple;
	bh=+36u8YIlWxcB4G7uK6HKbiZCHO/cZdBI20HiTiMvO2U=;
	h=To:Subject:From:Message-Id:Date; b=Ki7+mrzEZgc/h6c1hmlNfD3BcpPptrd2Y0wztHPMDInDwJ3e9hoilI/eVDhrEWzVV8rV9xVWUa41nspkJ/SvenGEd1vTgT+I4YmPbf5sSmXnVMz6iyScdzg/aho1UGB9w6SaJajLisZ1Z3rClFy1CSQ2qYFdw3ixTJep8tcndkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ev7bgTjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ev7bgTjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BB8C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718530102;
	bh=+36u8YIlWxcB4G7uK6HKbiZCHO/cZdBI20HiTiMvO2U=;
	h=To:Subject:From:Date:From;
	b=Ev7bgTjHe3GhUL59RLZRN/idhnDvDhaH4f5ngoHeFAK2my01uidZHyXhuGEYLh4+s
	 Xs778Do2lIUl6UQLJD23x2gMAc5JvDZROcvRt2VDVDl5mZ6SrEeoLqf8sFb9q4Nwun
	 K8pc+2zw0uaLn8gGkUOl0wCi8TuSmdfS6rSZ1Q2Q2+eyWOIVEEUkK5yBLUNupd4QsP
	 j5kUteQrpWFep+ZlFTDXnFwhvDtZ0yauSajbaACitcHbYeYJtxm24dRGqlzSrhFbUQ
	 aeQyOfwzMyKTmYJW8LN/zu2mrLC/W6XHYP8B4BFQmgfHQr3Z1fD7mOEjzgsTN4lN/F
	 mRq8oTyhSmnYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EEEC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171853010277.10367.13418159603831308114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c349be9bde59a99980f6d0027ad037bf3d08cd16bd00384cdcd314913b94c814
Date: Sun, 16 Jun 2024 09:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718530102
