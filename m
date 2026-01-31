Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145AB1F2B88
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769861634; cv=none; b=NLSDuNLtnqre4iU3ffSN/p6wDJzm9Z2x+hLt4ZwoIgySBYVW+1/EK/kMFutDRzWe+wDkyZ+4ymKzkPh86HmkRCQCv7A5P9FXnG+zzCOoFj9jPuk5glBlnM2RC1CbvBXRKxduYGFYlMnOEyeen2Yi/HH2DCowRKLNLXb8mC2HegI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769861634; c=relaxed/simple;
	bh=/w0gZhifjcBFoaB87yNim1cU3P3kPy3cf8cUrA3umlw=;
	h=To:Subject:From:Message-Id:Date; b=o+MkVj6cF9diQz8FEALaaG672v0FE7lz/zb0UHIJAxdwlXODp+SlMFQnyJc+4cKN7G2JVHFTu5MD5yJPOagBRPbURqjVJhGkSvx6Cr2zr4jXga8IxVoGlHv09/wd0f24rXFH8DnrkiTGZjRDxWba6o9jOZQdGr1AJ6drCQSrJPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L42H+SZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L42H+SZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BF0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769861633;
	bh=/w0gZhifjcBFoaB87yNim1cU3P3kPy3cf8cUrA3umlw=;
	h=To:Subject:From:Date:From;
	b=L42H+SZnobM+laG+tKIFwYSTFswImc4rCAnBrCGUw24ufSNmllxx0WJ4G7SoWcq8V
	 nBlWoq4YTKyVAhthyRtFDwIheTds/RhGIRXXovLKxw5gXIqQUAHlqUVPGs7UWWWs5I
	 djhrQWcPMhXylMSVQLyToePMjPtnFu7UIO2o2B+Bf0IL0Jk5sqhE3F3aOH8+If0Td2
	 /YJRRdEmpV6efF32ECnhOScsJdUfz5DOs+/R8h/azhhUbpQSA89Myh4NB1V9hhwwIe
	 /Bq4p7iIbrNnU5jCNpSQNXcicuLjCtEpG9mSSEV8pqlSUsn4s9MZJ/5G8u7dpev24Y
	 fsjS1hZF3AfSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91954D79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986163357.6115.11589506852477427573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd3a4860e41a652a1bfe5207f1cf9e2a31517ca550dd3e390a6cc59f4560bba
Date: Sat, 31 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769861633
