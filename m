Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294F326A1C4
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775887054; cv=none; b=QbtmC1tq+cfjNHVdVLg5qqcCW93QRSvNv4NCY+hnYQ+VmNoRtK56W389QMqaqIw/9e8QS8uxL4vMhHWOCz11e/Aed4964OQyCsVceclY7zWe2XdG5QCQml2FsTSJ3U7vm8YLwKMCNmNOEnNaokEw2OiTQB/i2RjlEi5pXWZCRZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775887054; c=relaxed/simple;
	bh=xl9q/5eHLe+YCrJJONPB9IPSA24HlvqeCw/V+7v65Hg=;
	h=To:Subject:From:Message-Id:Date; b=qAcQMar51jOcl+BEHa+0muxDNKSlOeysvwdXqtYzsJLGuRlt8ai3asQcHFS/CXErXKCDMxLVqdIzT2kBRIhzbN0K1zxrhaNl1psr7FiJ5YLjAhf3xaybxAQKkfJrYdsAv0uy3mpf835gJ4EZMTDiuxn3bf1YSny+wRDRelmmFIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIcF7qyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIcF7qyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCC6C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775887053;
	bh=xl9q/5eHLe+YCrJJONPB9IPSA24HlvqeCw/V+7v65Hg=;
	h=To:Subject:From:Date:From;
	b=mIcF7qyDEKJVR66cl3G9xoYg+lTpkETq6ga5UfTxH5aB25hfJkOAxw3ot4bOvhM+q
	 Wu9GHPFU6NoeAnsIB1aVVYN7wjgVufkjDOyF/Uk7pExmOYB03VvTT09B6H6/aOHxq2
	 HbZg8OZIS1b4T96L24qgKS+4+CVgtdGfU1rjr0z9Jm/XkEw5vfdIap34M+kESUYfyD
	 vC8tRstG1Zz1Irj45Ew8aktaE/B91eDOQ65XgiffsUVGBrHrX+zRuLFHx3rY8qgExM
	 lqX2B3MwSg2s3RAllLy2xOhMm3WE7fVRHapGj5/Snan9gBLimTbrIjEUZv1XnKIJAb
	 zyYsW9h8r7wlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02D2E99058
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588705368.31759.4783665570046156281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a9978f9c1b6b9d8628af9b168be038b1ad67a0c2d9ed1f6bb57b619305f2d2
Date: Sat, 11 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775887053
