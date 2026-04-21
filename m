Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2822D3CF67C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776785254; cv=none; b=D07iFHoCz/RWJ/p7N/2ccXXvVWrjmtftfUbOyabCMSDeKE0HtSIKgx+gvhEZdioVxqRi3GO6mB1HRkmrGUlz3eO4mJoG4b0MtvJJUw1d4eTxvMbeLkhmGhIXTOeAe9eBD40oRocxS2HoT6DQmyfZsg5ocr6wOHZhhGVjcl/GXtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776785254; c=relaxed/simple;
	bh=AJdByA4TAgwMnbJpI3erz+OxcScwuhgINSgv5JO3Rr0=;
	h=To:Subject:From:Message-Id:Date; b=pJ6EF04sw+Gw0rQuL3ADnvPsdQ8fentXhhdlSqZEGL2Yb5mx0yIWtnVBy507UKL1voMux34Ukt6VjPgCRlUk7wyKe2mh/DPcegT6G5VUjlvuks1BaowfuTKVk840FUWGGeMPqulJbmevEhVzqaRl7OFH/urx6ak1xHHfpLgWGPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuFiuO7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuFiuO7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80A1C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776785253;
	bh=AJdByA4TAgwMnbJpI3erz+OxcScwuhgINSgv5JO3Rr0=;
	h=To:Subject:From:Date:From;
	b=OuFiuO7sJvXTA1ctkZ6n0GbRkooKuImcuOQ2/EA0iSjEit3Zf38YNpVfjHOD584jb
	 zUZgH+uA+R/c8m25GZJ1E9HmDBtBtyhk3G50ALHk2CFrlQIqcCsL3T2XZyoCXA8aUp
	 5c8acaQEoX6BZqf90nPOKVpJYG1zSK/16Cb9r+XFZNnn17k45iDwFklVaNyI5O/XyD
	 ALRJPbDe4fDBZLaZzFwdmyuo3FvILn2ntwA2brNd6DCjtqvj/ifsnsTP9++5l5N5wp
	 yY5wzpmrb6vNk+f5jPTVx2jWHEsTEpqUdAfF6FRsiw9hqFxcmqdWPg3sFVMWPMKSVm
	 rnZv5sPZop/tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C2FF8FA8C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678525368.28364.15970805778485000647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8dda6babb8bf00720e12a3ee87481c255efc007208de81698b36628a8ce81e9
Date: Tue, 21 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776785253
