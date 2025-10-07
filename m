Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D59B1F63CD
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759874394; cv=none; b=fq8iA4EtWwvX1JbtRzlu+LcvbMV/iRhgZbRPmBRhEaMqdul3Iemwj+zE6EObw6+U3+IW8d00DcDBCl+kNdreLYVgFNTbF0dYjnZREZ1pfsqKEy/PtaKtiX1o1wOXxAR9r6j/hnn0yYDSNeh93Spv8vrXA43yEyHVZa4WfgPNHEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759874394; c=relaxed/simple;
	bh=9EvX14p/h4NsLCR79CLxAXSAukG5KYXswWaPEjQckDk=;
	h=To:Subject:From:Message-Id:Date; b=EkpGEwUZfbQtW6UfZrmjqnk3vGavCWrWl8VqV8uJsPTMGNnOnHI5tesxshkoJFeC+5yBShsD9VnQmxF1m1y5UenW4pCdFLxeQzi3q5M6fHy9QZdURFE6ehk4+dftOB6hZehEJu5mZWzvH5mg1SQLnGzQ1G/S91NP7KaxVKqsrsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eo+Yv/+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eo+Yv/+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E60C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759874393;
	bh=9EvX14p/h4NsLCR79CLxAXSAukG5KYXswWaPEjQckDk=;
	h=To:Subject:From:Date:From;
	b=eo+Yv/+/IHXX22jOJxiKjyLeuLRK+vohx7TRTGjsEt9oHpkVWnGIlRdozT57rt6si
	 f/R3voGkad7rxAfzvpq3V1lSVupozRTrL+sN+9RCvcZkray0BEl90fHAvfZkwydp0f
	 mf5PLgRUqKD5EegVYCMhWDgT67uBmK1LD/HSShwnuDwsk03FgScUk98mieBV/r2gnO
	 TUVZgJNdFIcd0u6bJc2aCba9NEse7ZQNdngWkQ5I2dee6WoSitNTgh9K1r9yzP/dhL
	 EChTY0AHIxDz7B66rRti1JED6MNiCPLt9QbUTmQcBBlbukS1V4eeiBkqj07jExX4XI
	 qMcaCE2xPSa6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0DCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987439358.3844.14561805073915809712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f755b8e8ad16540a41df4e947984bc7c1d62e4c5e72d27c6e7c40ae1691b6b2
Date: Tue, 07 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759874393
