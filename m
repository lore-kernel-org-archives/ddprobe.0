Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A60D1A7262
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743890394; cv=none; b=sLVlKJoFC3OOXNrjP5VbTAflcBBeLhRsTLrtivbAwn1Swy0bogAoNhmKW5SBXyZCcJjhP+/9uIfoC2ZJSy/jlN7HQmwOrhHYp9MdmNR/aLJrKvUBw9YySM1YnbTY/Z9GF23sjKvrxx2/6n5MhH9YooeSbO9jBUzSiyei56+iOsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743890394; c=relaxed/simple;
	bh=Szt3S5Ckpbj1axplAhvfXcMDYribItkc8xAYoaWZ368=;
	h=To:Subject:From:Message-Id:Date; b=iVLUQsoZXVHQyQ3SiVx/G7pOhV+k6woM5pkhLgojQSTQTJi7GVd2OaEDOlV4TgC+AIPDgQ8X00egNNgUm6Fzpp6oXN0eyUO8F+iAgS7bYHMx38obXCkHNm83lPtKO5vx7h8X2fyAuSTDsj721uNgtncBTNxzX7Lx4frfFxPqw9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVNJUlUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVNJUlUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E6BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743890393;
	bh=Szt3S5Ckpbj1axplAhvfXcMDYribItkc8xAYoaWZ368=;
	h=To:Subject:From:Date:From;
	b=HVNJUlUak1pciTVj7Ml5CDf4MF9Ig4wcWcrcf3kyO6KentfS8JFk419BaFYcxBTCM
	 oQ6TtMhZ1JnG9W/pkHf002x7U6Ghi+Y1eOZ7nwHOvSLg7WHfcQynaLPhXUl23X4zp7
	 YZEDY8BlvvGokao5lbIJy0ivr4hu5v05mO6wb/Shb5SK69qh9RRlf3txaczwFRfB26
	 mX4drTp6VNheemv3V1ajS6nNUB+T29yFe+zPOoL/fcgkje9sAH876vV0bjQZuWqqRG
	 j3Mpn13q0cK3U38i/mBtJrewDPvtH3kDkf0pJKSuwaDyCVVdp/PlWlAuZ1O9iTcMxa
	 tSLHWjP2ZCN+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96AEC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389039365.7041.8253825059746165414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649785301f6ee6873d3b5d8d3ef66eaeba81e49abdae0dffadb36f2a8f07bf84
Date: Sat, 05 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743890393
