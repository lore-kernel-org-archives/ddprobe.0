Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630C826A0B9
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785700234; cv=none; b=Ad0a4Rj7IP5e912ECwb9134/9/zN9K+SANimL80SEOxMcFcQbPhhHxO9sYvdin69sol91gDHlavERv9FikYKQTrEddpT9dy7tvE5PuhRA0LkpCkEa6+5vZeji/hI3C6GzpYm6s66OLSgVkvYS8MotIrRf/Ch+M4kx+zeCNs9rWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785700234; c=relaxed/simple;
	bh=WqFkrpil8Xm0bosf4JSKIwGPDwpjF0RbPBra+vivYWM=;
	h=To:Subject:From:Message-Id:Date; b=WKdbRCx1Uxi+0ph+tIJ3oHeWbl69yW3hEuy+WtHsgHGUSWclrOg/aHjOXfn52nuX/ot+Pg3EOvmkQDlAqA3D/kA7KZCDRur6y6VweCgNn4t+11cjqlCplHrYnj2mqYPJmQ9+hzHJuGcIf9Nkg5d3MXu4Pmlx6v6+9aONoEz60Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pis/rEEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pis/rEEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D8EC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785700233;
	bh=WqFkrpil8Xm0bosf4JSKIwGPDwpjF0RbPBra+vivYWM=;
	h=To:Subject:From:Date:From;
	b=Pis/rEEB6+m9srycQ/wToBOkD5meyjzquziVQ9tnPFd5bbPsTk3E3kzHXuvZ9ooBH
	 EnyrRriIah1u21c3Czzls8xbgdduubNqd/OBkc4cC5RbK1X1eCNBGgSUHBXvHRTafD
	 sxdWwitxgcLMkNdp2T6ekFFqL978VxuWnqJmGm0rJI8Yx45V3v/QjHfRkpepijigvA
	 1BEqJIB96y3JK8jnzrDPb68rbMrl4aUVuUE8QAtC4cROJQKlM0m7etue1jS3KMpaMB
	 zMZO30XIFApMQHGgwYs/pnXDzspLiv7ouN6TAu76kvQfF2x3xh9yQsB0sOnRVQs6ny
	 E5tsUxcFJNrHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96EEC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570023368.5399.9902415390813841383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78211f285783a4ef2c48d755b9796e6e721eb256d3798d9196005e0855ca5203
Date: Sun, 02 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785700233
