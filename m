Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E21D2D2394
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788927034; cv=none; b=E0OkX+586ksZWVjWoiVN7F9cED2bhyrsLQXrh66LxGsyy3rrT4s/3rUCrkEE0ui1HCLBYxNXdmF6NBiTIXY2UgmFhyrHpge4GHwPQUs6Is78iCpQ9lfitz9UpySDfcVptWDPge9HBF1ZgJ+ZA0S7Rw/4AGjOv3jK5pQ6MYC00+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788927034; c=relaxed/simple;
	bh=lAIMcoNFXP6+nitL4k+1MCluijc03uzuXr0b6s9EIgA=;
	h=To:Subject:From:Message-Id:Date; b=P4XYR4IbEMKxHEBd636c5MbWjAGlur/4KbxuStSFHTuadMPCpWCyfw3dBLmLUYjIKNY4ifFfXT2Ws1K6e9W/+x9SVxpBl8EjHBg4rzgWYVPLv91ducGkVZV6sZNBZEGI9cFmncOdT34OMeq74w4vsBfDgSwKA+AuEJZuBuTsqzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWNWWLnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWNWWLnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC252C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788927033;
	bh=lAIMcoNFXP6+nitL4k+1MCluijc03uzuXr0b6s9EIgA=;
	h=To:Subject:From:Date:From;
	b=jWNWWLnBN+BpWYaxdXGnFE1ogKNQmAzML/t6sacEdMi+pngVqGzWGI2vlax4Yafj9
	 KGLI403NLK4SteLwpWa6dX2/ScINRsNrRxF0LqsEDzbwhmFPhfE5+TXJH6C1cL0YUi
	 FJk7ce2V4H7KC38oiMeWiakW9PpLpQV0t3Uxmb19uJW/XMNfr9Tizf9NdlCzGmvtmj
	 fnqzWs0KQUNO+p/0YWAr/jtjMG9XY2MEQGEyK3SOprQEodiZ93ZItH7FzEobNuT0sG
	 /uzCbPhxHwiB2kVvTyvaee7QKcJgCICfhNdn5ug64rJy+DNPsSjt/E+MTdqo6NjHwK
	 9N92qDB8f8eNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9808C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892703368.5509.9124354124296250857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c64ac28c2f2d9b9a5bb040795466382dbafcf01f85601fbc8f00247eaca3c9
Date: Wed, 09 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788927033
