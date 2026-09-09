Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2245F13D53C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788916834; cv=none; b=VJA+X3FwMXsvXtFDFXObkDVqKXTIhbIiSBex4Ol7aExBee05biY6+sq0xzv6KZjPzCm4S5ohBvA38sk7axGKK2MAtaff8o0GUOdHZrIyk8c+NvFrQ5GCoxiqcaS57npC/3XDow2CVDZtGYJ3xFsRUNgX+1rtqR0yfHFKKR2ESE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788916834; c=relaxed/simple;
	bh=wQJQFYcXu/inK80g3OahE8t/XLeG7/ODxkiMOzXiNNs=;
	h=To:Subject:From:Message-Id:Date; b=tbxm3MbGtJrv7hvaL8W+9IfjB66aB+owi1KC9DfABn1lIkfHN11lD2ts7WsFJGEAYNBz8T6c5VZE4nRSOuZnupKiaL+GlD3GlvLU90jlYYeRXyY3K0d/wGSc7Pa5keW3T5je7EQKvBEP8mx7lHJy2/ipZluJnRtzvX+fxcVXLVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIUwbyNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIUwbyNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B59C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788916833;
	bh=wQJQFYcXu/inK80g3OahE8t/XLeG7/ODxkiMOzXiNNs=;
	h=To:Subject:From:Date:From;
	b=tIUwbyNjsqHIiP3VACeWouR8kOBk83bHgMynpyp95VNlFLUh1jazKEyFPmDo22VtU
	 ascMwSS2ThxmTCrk8Cw41y6RoVY/GdR0SiMcRRe4dcca2vT+NGueiGrvf4O7lW3NOb
	 PBnAajHIzsE4C7xOsoGCy8JxLjVMD0d5T5OYAl8y1wTnUY8z0xL9CyAQbzbkniaB4S
	 4vOk9n9z9AnNVJ3DjaMwxXLuVJo4oTzYcZE0xPl4deEL3IrRv7iGPB/dN4tP8BkVgk
	 JRpbm4IJcGIRiFGdMJQdO8GntGojYAd3HXVIjAhJFAmp7+ORoxV+0iGeMG1xmkCcSN
	 GN8vDT+Gdt7GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07DAC79FA1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891683368.22005.3526144948529320909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8449198a9b0d79084b3e9a7a20b5eed82c229a762aa6578b116a7565a8dcc85e
Date: Wed, 09 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788916833
