Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147FE140E5F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757475595; cv=none; b=uDTt2wGukn4R3ULhxjMDvEQSaGhwZup2gwE7TWzi/XftHBgNLQUMdUtspyYdDgq7FwSwbmGqRC7oRi0VNBNTS3mAWRwL7ThWosipUI9INBNxTuwXf1fbkzSLKfCHzKZG0xQIiC88rwsjXDW0pEip4X3uOVzR+NctOv+AcGUVNwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757475595; c=relaxed/simple;
	bh=26RyXXjVNbDZyWNqdzkyh9ZJylZ6OJmetWwqeoXfCTI=;
	h=To:Subject:From:Message-Id:Date; b=Hw6sCsPRzHf5nsmvzodpxTmzN6TMWzV7pJrvDnUspdNVfp0Cuv8V7f7NsFIC8Q/PJ4rKGKbipJmruWpvZlg3WibUJuoKKYou3AZTgLJPRxkRLuWv0mTOTXN7oLeo4GvHSWEkc59jWyleLrI87SXCfOjFNAUktahN8g1CMqxsOC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5hxxTm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5hxxTm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DD6C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757475593;
	bh=26RyXXjVNbDZyWNqdzkyh9ZJylZ6OJmetWwqeoXfCTI=;
	h=To:Subject:From:Date:From;
	b=Q5hxxTm4Hrg0ISuOBoJ6OUx+M0epWjCxQHvKxfYdj4TcR5jN1rVHaqERQ94uD2PXE
	 AZ288af4WqfHn7fPANLz5a7+D2I5jWykHeqTXp4TKOLCmIHaiFmczYQCFO3Ioa8tFg
	 skI1dl4fWTOfL1ejU3joD6FDaWNWKJbbSAJFD5+/fIZRQKSGZRJ6XDbb6FvAHDA9A5
	 XZcDy1d3xZ0NMs0rzgYnvylKHP399h+D8gPJ/9yYN8m4HnPtBJiVZ9eArmjIkmYUli
	 zKdLSoHhoHQEndxJd2S1pNuO00E+LBHu+jktwvdR5o7H/PydQyP5lMao6e+I662ZsX
	 BU6bVjOdmPPzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94715CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747559357.7882.12805401235269152137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef1ed6c2ce34b4c455e82764efb449c5e1eff50f1504517952176ac23e6f202
Date: Wed, 10 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757475593
