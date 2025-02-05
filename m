Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B3B1FDE38
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738715154; cv=none; b=CMrH1mru34abpd0WEMSJ/MaRZaqAiCNHFfDyyI2yxVh+14Ph7ZLqlY2dIiZqQfZv5tCEONy2N3ZdvYek47LNc30opebcFQQT55LzrLVYs26nu8zd9PJkaPJbwGekmdagg1lXeivnSVdWDeMneBFqFyfXzcxbGVHT0Gwyr1vAzcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738715154; c=relaxed/simple;
	bh=umg6kD0Ej4gx6F4YLNl53A/XDA3KiKzYwccFE7AHxDM=;
	h=To:Subject:From:Message-Id:Date; b=W/jbt47mlTtxUYIl6OZHnJFDgDFRMSBqOMfrmG8y0f+O/A8NcXicn9mkR2T99SP4BPcGoL9YpEAUZ06IVzC3Tdb5HRRc4BlxPICUBFt+dIeGCCR0fX6nXETN+lOPtXPOl3ex07QP4gJIy5RYj/tzz69mZEN+jn7vGzD/5VRbDrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nStWa6B6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nStWa6B6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5EBC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738715153;
	bh=umg6kD0Ej4gx6F4YLNl53A/XDA3KiKzYwccFE7AHxDM=;
	h=To:Subject:From:Date:From;
	b=nStWa6B6OPVv5Mwic/e0hMXnZClJeC4MShm34nGZjg9an/k+icoJDBUv4/Dt7X01y
	 +jMonnuJVov23MS8Cl8r2tgp0GuXY4NHl5tKpXgbahEIO/hguCvLb2oLDfDzKBqBcl
	 uN/uYCPBBhdUHlFspkyy9+SzxFFt24myKErhFhapuneqfRNi3j1l5wCbpdPk+gGdX6
	 36JQ63OYS/MdFWVicYTtQ4udYCJpoZ+jPog9/4iPuyfL0wGOKdziWsD43DWNz9GFb8
	 uwb3Y1qwoec0805MQSdOoapwpjq5ajCZ6JcT+AqFdI6j9tNBP3cXJw/ywsSuopInFd
	 +Jr3HyT4kgsag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CED5C02193
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173871515362.15931.314839789695739741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f618d652df0da38603280e0e4e2df9602652401d61f03b5333543404c38de3e7
Date: Wed, 05 Feb 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738715153
