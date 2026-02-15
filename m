Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3331D23C8C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771147494; cv=none; b=nb78dVD5dG2G5nsUPWNyD8VkVZK/ehQ46RlnYN5EwhUrkC3cIN0GtHvsToJxe2bX5Dh1OL+lK52hrroiBpGWRq61E/JNEvZYSXZdOzTnqIFyiQRCjmsPrPMN6fGjJNTpy0RNuIOcqhtrxtZMVoF6fAXcu4Oa7SGp/G3PLk1OpnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771147494; c=relaxed/simple;
	bh=Cual7fRhuyxddqPZPTHyr3lnO4e/nU6O97AEs6GISNs=;
	h=To:Subject:From:Message-Id:Date; b=Q0RszJTxPOgf+/VJGbmz6yEoHDWRu2PoqsBcVm16f/PlSK+lIJOiBkCSCn2aNkV7coXBIO92uZ+1OvSE2Jf8i2uxWYIxaft+r7jzbm7v0bt0wmzszIABamtdyBgFBNyvEAJddsQJN7DwNBaEjj5tMLQN6bwHdCc9V5oyOYP+3S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xu8q3R56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xu8q3R56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC34C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771147493;
	bh=Cual7fRhuyxddqPZPTHyr3lnO4e/nU6O97AEs6GISNs=;
	h=To:Subject:From:Date:From;
	b=Xu8q3R56+Uw9G+1svhTy0/TjyNL6ivnq8b0C9C9EYccGbXp/2ca6WjVbucgoFa4uE
	 CEP/arTN56rDNxyDOToJ+NsVeoqSsYZZYr8DnCSDKZA4/CXgUe/OG1SmdQ1stzO18L
	 xS0M+HondytxyF1139yyOWZTEFlarCiY6rUjoiA9euvQKxxOeSaXB8cFmwf8CDvNFz
	 zfEB/GtYgqBhm4I4evRxV68/EB084fQbjgdlhEUG4uDcRr3DzwpUDk1qmVRiGL3uwm
	 oQFxbb+vn3D5Ipn5Ev65tTZh6W2LGMQy80JiOxDrusNOCXK4PUp4GyHESw3rrkF+sH
	 Q43tb9TyFH3TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF53EF586C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114749361.23188.17092327691011283797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3318fc71516005de8ff44760d0fb143b397a12e9820e67fafb52237a71cebf
Date: Sun, 15 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771147493
