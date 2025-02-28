Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7F025D21A
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740739734; cv=none; b=A0k1V4vzzKevz20yQNvqKqUDfZ+oDKv2JG6q11EPHmMCdGXY4t06uZARC3pblUjXd3EMRaojlDZyTNJKhAIjKZegAyXBWEHH33XN+ghloiDmn0av5DjrRuGZaxUpP1rZef6ka65SdL96pJ3j6Oq0JAoY0VHri0ShY3mHazp9LFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740739734; c=relaxed/simple;
	bh=cOLaDFb0hPgm7tt19uDAszeQoeUPEC20vANY6PEYAmU=;
	h=To:Subject:From:Message-Id:Date; b=kkH+yAYOZuFsOjMe8zjyEM6nPI1y5hi6LpzT3whkGIc8f0PvIwxs9imsO72/xHgnGkV8Oeg6SMsjzifq7wL30qzZh36W4tHacJZTqwG+hJMh5ro/I9mmWaahQYaicIRztevK+kHoQZ9jNnMYfy9n4G3wU04Vld9VIQMVL233LI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwCOZkYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwCOZkYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B181EC4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740739733;
	bh=cOLaDFb0hPgm7tt19uDAszeQoeUPEC20vANY6PEYAmU=;
	h=To:Subject:From:Date:From;
	b=NwCOZkYiuaWnzL3HZ7OEshUebtTE4RmtHX5jJvpcQwcfseD0Q6VbKEIE83DQDJd6o
	 Xl6ePCt5q9nwofQh52qJ67nXFTwUdvzDIzcvrsD8BmOCGeYJnbF/Bek5fxg3GBnB0w
	 lf0lezkF4daFIhoqP0HWZa0n3/PERhDRzFsUH4RwE4IV+CaMeb8rR4ujj0zZZn+F0B
	 Oz3o8L1khi7T7lAb8FvkpPRvxiqbNWhR7SRTdo8oYnxmJCydiDnELyFIR7bPl10aqh
	 pgkIteNeChV0MhjYpBEYpcSReuyDDFtKT0MCxuFXWbGE0639/1nojQZ7Maak/ARvu5
	 G1fTfcH+4yFTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EEBC19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174073973362.23799.4124899114000343189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e51226e074bba040606d76d3d148d8a1237fb0fb89507bd66e17316c71fe63
Date: Fri, 28 Feb 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740739733
