Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589F915ADB4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743808194; cv=none; b=lyvUoQVgiKjLddFZ+AHacfrGjauidH7NYUlvXuMa0XvozXYtNPPDs4cTQ/DNbEGDRDPJJW91aLbCEoKMKSMjTxM+yLHm3jx/u2K5PMlrDCBBnW6ajsf3e9FtLyxnMOFH7zYJ+OqtEwSsBDyRgVQH0Hr2mS3EZWYtDYtb5hvxihA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743808194; c=relaxed/simple;
	bh=dGnPAEOmCdoSBGEEKNtReJSZ+DVUH1An4LeI9NjBxfw=;
	h=To:Subject:From:Message-Id:Date; b=BFof9SDo82hrSkoOOCYChrpeeSBWIaBDDbI9YJ+8D6q3j2Gl273slOtDVaQd1azaxi6fvE5/mxleVlp1W2BxzbSVUQT0j9DriMIQSLZ25NpK86BryVbFP+U22nv/402xDT61A57p6JqQnXL4KUj5i18R5a7cKbSgw+wfZfmFB1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdKU4n/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdKU4n/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC06C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743808193;
	bh=dGnPAEOmCdoSBGEEKNtReJSZ+DVUH1An4LeI9NjBxfw=;
	h=To:Subject:From:Date:From;
	b=HdKU4n/bpP2iQuDOINSK7PQ/5e6v53tg9Nn+aRBaa5bOerdRHc5s8KGFyVee6GQLP
	 X1YlzwSaFozoOEujbaRs+ANliXAUX4dbZn+MCRfp7xkZh4Edk2+8GkjWWBAsaktZQ7
	 1PZx2UhjazpmVKAh/z7wXGpnJ1F7VR6n1KDhBAVtJEtYdMZHkUqJ/gasFwokLAaV7f
	 6l0eM15eg6fGg6p2Ub8Mg8G9i6f0TaMnRIyVrf/HXXiwaaSfkflyno47F/pGDeSlBY
	 qdqiIM7z0FtBs2SJvYmjsqVcubLsNRK1S6shfKtAMuAEOn/yXZHv1PnZRl+1IXuO2m
	 sciJ/NtG/6GKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD4C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380819358.21935.12053353142290562847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd392cf3a8f3cdb971c80f3a806144f9c9c282ef9aaeef19bf32723cd6df1e44
Date: Fri, 04 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743808193
