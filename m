Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2AD2367A6
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748684394; cv=none; b=qgU6FOlDf8PyTrPnmaN3DlN+GkISxMfh9FPiVozL1fal7fnS5fmkf4NCAdn+pYQdBldYj5omggzgHYH62cuJtFawBx77L+3fLrYuI+zsmexfd9vyPYb1mwRaPk59gGaSTi1UBn99rtpje60y+T9P2WaZHLnrF8x7jIFpMbz8Brs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748684394; c=relaxed/simple;
	bh=slhBDRHUR14wm7jFKRD02judEKVYwVWYTUVyjyjNeDs=;
	h=To:Subject:From:Message-Id:Date; b=O/yR14XGecVcEsBxDSTN9cMz+R4FY0pmrTFPzxhiOMwqRL/KvgFsITDvzjUKXcS5q+5fAxPj1tHqcI8qt0UWx2wxtjR2gJKtYQCDa5hWraiWJktQk7v4nyUQ80+QSjv3Cypp4pyuxRc553jS2Uhmu2mzBWJ/mZxVHWNEfCEQlY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQsid/M9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQsid/M9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A501BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748684393;
	bh=slhBDRHUR14wm7jFKRD02judEKVYwVWYTUVyjyjNeDs=;
	h=To:Subject:From:Date:From;
	b=mQsid/M9eIztwJYIgc5858QST+Iit5MMRGhcOsmCKCmT3V0UGqIPIB8ZYZcEr/BP9
	 PjS2gJ1xx5lFIKv3V2vk7yfN4Js8d5L9W5KkJ9sj3DmllyNXw/y8u4Pw12498RGrvU
	 f8VSvajeKZa1oCQPzYpLN7Fm+WmMu40h7C3u0/ddJfgOnFEbC6dAo9NvRYS3RLqs3H
	 eUTncUSws27anNCQVWTSgzuxvDe8iOzrpGVNA7Ql4SXc1xWG5glRHkiL/JMG7Ws3PC
	 hR4OaoFd8qnes4LsZp0Z2viG/XHC7Eq60EYqGR1uQUVmA48ADHA4E6rNICJf065y6y
	 HH49kdwTQnQeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB9C5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868439357.969.8430065697374768886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9237a10c3eb7439b4fb9d6aa50e04e50a436a3122001f029167f0fc2aaa57e75
Date: Sat, 31 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748684393
