Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37223197A8B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737016554; cv=none; b=I9PMOY2hhzs8cc+mCLv5MKRG1aJdyugfTXgpH9hNm4qRpQKW27VSWHKUwktrZJPdIL50sp/yAWS2Do46T8c8cVHUJmAhHaloOevu06ATrKC2DtMtyOT2Ziu1PO8xHmc/SqGeEAfxlzrOONqbiW4qvNCFu+j++cRJ3I3ha+DdPMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737016554; c=relaxed/simple;
	bh=ldPmFbzhY7FcU/Vjh9SQz2p1zvFpTfhtjOS8GvXNnoQ=;
	h=To:Subject:From:Message-Id:Date; b=A/QaY+GD+LprKlty6926V6AFIZ/JoY4os2MleaUmCU1bL0yoYoymJfmVzCDGeRnijrNHBoyd7uRboqbJICc/pUDodHwcEE9mymiTgPkjAmHx5x7AOWOuqangvfs1Lc07pkTAiwcj5elLJQDNBqUHwFAMHb0YFWxGjgM8DKKzcIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F05k0E+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F05k0E+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DDCC4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737016553;
	bh=ldPmFbzhY7FcU/Vjh9SQz2p1zvFpTfhtjOS8GvXNnoQ=;
	h=To:Subject:From:Date:From;
	b=F05k0E+7DCoaAgk1+VmU4qnwlv8UWLtiEHmy3QO6QY6BoR05W1+/NSAmzJE/4VUWZ
	 PJsoClklAmC2PIfOc5UAdqJA/Q6XS4OcsH/l/PEZAsbWQmqt76ah6TIPDQxmI/v84a
	 QlRSu0ZJXFo54y4iteG6+gesjbfGXPfnZTjOeQArWYRkX4FXPk1/5NF/AgKj1hpUIb
	 5zXkR37fXW9ySXplq4kVbBn0EmAWRCHguVChhFiO2EXeBs/W3fjHnfpUv/ldF3JDRJ
	 hDpKO4TViIiSWOvzFb9SPQ9gJVbgOItwkjsd/18hNanw4M6A+iNndlHaWMcj/+zOsQ
	 /Q0Km9hGKHEYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99515C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173701655361.7373.1853421831917530205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f565f2dbb796ab04c67ece3fc3994dedfbe4e4a16c70884c05b7b939bce3cf74
Date: Thu, 16 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737016553
