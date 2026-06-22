Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E62E10F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782139594; cv=none; b=BPDiFBYDk1DlC1ZfPnULQyGJ1ZLnmBdinizBrZodVW5nZaaR5rpgNb3cG221QWoKO36+1jA96FkWsAV8jTMVJ/BNk7nSZb4irSJdW+RmIS4qckgZHe0BRka+GVCDem25Xuaz3yNExRiiAx1hxKXxvoYQr87JPObP1uk1qTbFNHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782139594; c=relaxed/simple;
	bh=XMxZ6453JiHP4YTYYo088c8Ev5Y0CR/VFPzAsmQYxFk=;
	h=To:Subject:From:Message-Id:Date; b=XCFKjDGIVDiM1j12bEzp+/Jr80ax/+WWh8lY6990uLTWG2SJnNB5gdZni9CmtX/HhP7z0u/vY6+fU5GcUNoRcJSO7NmZHvp0e1oB01/ceqRoCfoaedrjSfBuSaKKoZ42sSNlZpgYUiYyhGZkrGT6zhTKb0sRcD0RpkM7oGLq/bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZAmj6c4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZAmj6c4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE97FC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782139593;
	bh=XMxZ6453JiHP4YTYYo088c8Ev5Y0CR/VFPzAsmQYxFk=;
	h=To:Subject:From:Date:From;
	b=uZAmj6c4JMCpqQgThM7phrOdBs1gnYXvdkh0w/pt8v+p/uebLe3T63BJVZ5TAMQB+
	 860dr9yNmdnEWe19od22VULI7PIxOvNPbDymTJ0E6xG6V3t40TpqC0vLnJ++oI4wr0
	 bCCMoGwVHin+YZEukbBA7H8SHJ8ub/xEC0pJ1MpwUBhieeuWP0V3kLxYV7lZWGTfEz
	 caHy09i6VZ2KiniACrb/9AXSJC69xFnv120obpAFlNiBxR2SdM20N+hJrDFFZ6r0kf
	 FI55iyRr6FjbsfklMI0rdDkXs9BaQU2QNK7IXj1sPfubtKCrITP1VN8/R31PVcjAdU
	 g7LCs2kZ9/ZnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0305CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213959370.10224.1179065302916743166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dba7fd56b848380763a42459b98bd877b376135abfdac14275cebd565a676f1
Date: Mon, 22 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782139593
