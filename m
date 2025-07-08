Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA382264A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751968194; cv=none; b=XL7aZqo6IyyVdfkoLlcWpMsAgHZv+jtNB0v/VANof9mK3ENJy0Z1PRzo0zpch2v8nb+AcUiYoBNPs8Sujn/uKL3v0mx2vEAHD52XVpB6n2EZFsX8kjvxWJzFAfJIS0UBMalCN1E29KSzTSfb92fy9Sq0mAx9Clcpd3IoScwwuDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751968194; c=relaxed/simple;
	bh=FgVniVAIALxBcHW1wEw8g8QJsSKB4ZajrR9SBO5co/E=;
	h=To:Subject:From:Message-Id:Date; b=SQk4nLJrNay9tHoEsI4W+8a7J15q392Qm9g9pBmW4v3FeGOn7d34+pmyWwuLUWQPRMocRcyBjmwFqTWkJV46CEZ3ktKw97xZSGMeGqiVUdUYJjZ2WwPHH3u9hc571s1E9vhysbusjb1JHQnBDIQeaPTJrp54s7BbgJwQX8RagdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mp/I3og5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mp/I3og5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0370C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751968193;
	bh=FgVniVAIALxBcHW1wEw8g8QJsSKB4ZajrR9SBO5co/E=;
	h=To:Subject:From:Date:From;
	b=mp/I3og5ZUZQQ/fz1OmvWE35Mye8m2GtXgUrimfwpkyBEY9tePvPbQLt8JA6R4KLh
	 kRd7yyMD2xWeAZf6GZdB2YCuuAXsCfYzpjeY8Fg22SScZ2N3QjpSbwaBrWrtiuV2nx
	 qoKPZWoTOcc7/Ly+zy8j7H5xLXEcEoBSjrD2QTLDdKZTmR8pihcw3KDBEcOCg6onRp
	 9psNKcT0iXw28iB5PyqUkBQF6Cu8LKcEpkn2oj2YKdtDatFqgzKW54YiY1gF1iYc+j
	 i5u2s3dL5Y5WyCXhwaRHJZFW86Gxicew6HH5q52QMQ+It6Jbdp/UykgCRqYj6XWw11
	 ObA+/+1VwEnmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC2C83F0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196819357.25326.11751093313343723011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480bf031188c49417713b0185aedf250374161f49b7eb6cae4ee7fb8550fd1c7
Date: Tue, 08 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751968193
