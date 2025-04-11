Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A35F26F466
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744333195; cv=none; b=Xx/MkFJFFyN3F1M/H356CeurZIpaUlKotGrbLT6RtNIwu5LQMTurRtDOSnAxifcIS8f1llfbwLnJiGW8Tes/HPQnLYC0QvPc7GLxMFEuqikHEDGhWqQeSrj4vjoSNRd7Ipg7ePJQicv/+adEx7FoKujUgh0CQ4p6oMMDSxUcX+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744333195; c=relaxed/simple;
	bh=lVr84wS93bQjam2HYTp8yuMMdoY0YcLVmbSAEZP4E5c=;
	h=To:Subject:From:Message-Id:Date; b=PEc9mf54K/QuZg/SgW8hFDj/VnZi1f+L/DMMfjtHv64Tv8iaCucx9ZFJTOVy9EdpcZYsRU0tdjXyrsZ8IhB7b42Ft+ucSuZ4TLATZepxdi/Est7hPn0pDmFQbgfGdmAuniazNSgL0xambNT4uHDFoay8vDr8LRXT2/ZxgWDVLpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdTUNTI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdTUNTI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C5CC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744333193;
	bh=lVr84wS93bQjam2HYTp8yuMMdoY0YcLVmbSAEZP4E5c=;
	h=To:Subject:From:Date:From;
	b=cdTUNTI/xidsV1L6TQiaLcSRgKY/H8EmflvlmbzmvLMlnll0+3oCYLpo+sVwenFey
	 T51mlpdyIB5h9Y2p64re45ratyMR3+wkNVLR+ya+ksMoceqiRxiVoysEbhSbzTDupQ
	 Q/KmpYjohojp9GUwA4+SChYnBdBdGCm8j5QA+aUD5knDDVPAphCSRDky6qAWozu4P/
	 hHdY6fzKjp10iqNdcdMmIdLkW415dKuy24TzeH9IqsRgvjlZRik0rqQbhJMidApu2s
	 5/M8dtqp2LSQh+GCWmZXpyAHSfWt63ffm7Y2uBwyuyZQXPOSdQtfp06CHFzca5Y70Y
	 b0Z3Dh0d6QF5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23F0C3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433319365.4002.1690683192563739518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba7b7047cd2bc3e76af78583d4a2bbe959c9fe930858b03291ce139bc22d86b
Date: Fri, 11 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744333193
