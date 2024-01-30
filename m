Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DFF66B2B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706611097; cv=none; b=ouKpG2eMOlUcxfwYVP9Rz7quR0DvWPOGNXQ19Kfs7J14pxINxY/khANNx/O1QuOKTNq86rqUi09lUNJXf1GjUYIGl0F1p/P7LNOL/GiD8biDKscLJcddhw3SGzJiABoeN2GE+h1QqW3tcOt+eal2kGkkBEaYP3MNsHJ0MLlt0vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706611097; c=relaxed/simple;
	bh=DZuRx6fLaGpyzdcdcleQxkJajBiZKd2gZj69xWpbiWY=;
	h=To:Subject:From:Message-Id:Date; b=btzbVPbH9dL98JpjWBR8YS3TahnJAFtQeqpaKaYFdx96G8OGfaGjE4IvLZu78aunIFltI2u+TcHTqrpDvzRgweoZJ+KX8hsoSRJ8fudKFclHD0P4o02MawAUD9KgRUP+Zw0ORAZ4R5Gh1/EVfQ2BVZQXg6au9+U15Sz+dZN0a1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnbHQy9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnbHQy9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75041C433B2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706611096;
	bh=DZuRx6fLaGpyzdcdcleQxkJajBiZKd2gZj69xWpbiWY=;
	h=To:Subject:From:Date:From;
	b=CnbHQy9CscMAjEfl6YKXorcC9bbYq1wAhAw+O0ExA5efqg7L0qxBuICH9elNnuNm9
	 /HQarUi+TAgIoYX0/M2VWAM18UBKnQSVD7PMP21EXlzLcTbdSMABOkjAQyDbEnC/gn
	 vcR4MvuFs63BJdwznoi50jNq/q1K8QCO0NOz+xqwOo5JYZKFMyjSldgWnxbfcnIWQQ
	 jfPSIyJVqU9EBvOMjIKRzrcEln1roicXvFYsukWWpyRRFqBabSL7Ql1U3pF/QpDfwk
	 a0f/e0y2OPaYak+/tucjmWm4ZZHYw9XSgkSMnl+PCNyqxuKtweeS/y4476w/MD5fZ3
	 Mja1AWWhKExCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF7EC48285
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170661109637.17565.15720066896213182924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e05b6af24fd7c52770c5cc6bdec159ec5c0f6a07a5974666f02df26f107593e
Date: Tue, 30 Jan 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706611096
