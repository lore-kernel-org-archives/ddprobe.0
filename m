Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D2D291C10
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776365254; cv=none; b=DDW4L6EPxQqSDCgKixQx35W7ZVqLPRQgwkFuPl23udEc05XFqAImXNZXSIcEt6cZU1aWOrQdS05wMAh+BmDxkzrunzyQ9JxC6R6+NuSJJoXS1/FWUsROz2xThopHJJaM7h+a9OHGZCEyJs5FF4OoaDDFAbHzv2pAa7YoA2JbqLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776365254; c=relaxed/simple;
	bh=CfYDbcLixFwv7BOVxsbiPO7utf2n2W6I099wqtZKrp8=;
	h=To:Subject:From:Message-Id:Date; b=AMEuaTEx1L/kNeNUYKNjuAfWPNQ8zDC3zkJMV/1I7D9gjf8fgCfcCm5vhwwCFN6JUYa4wqE9Whi9Fm5ALBLA/Fiy2kJS3L9T9F088xIMQpmTdIaYAoypQbX+PiOiw2Nk/KXjr3l8RWRGURLoAs80XJSZJfrmmTZyBAFjIB72SsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfEPz0G8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfEPz0G8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4B3C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776365253;
	bh=CfYDbcLixFwv7BOVxsbiPO7utf2n2W6I099wqtZKrp8=;
	h=To:Subject:From:Date:From;
	b=QfEPz0G8YBDMFyU4gCSspJCIw7fbt/yjeJEAiyvagcVQvkFij46YNGtSkIzeRCepf
	 7EcOCH/j0BhU+SsA4NvX0HxlEBIVBo9X4xQ4MPVeUtsi7UTbGMNpUsw2YWadgECSPS
	 IX3tQ7OVi/Hat/7zieUR5QaxmSCyeyv6ZHNlU6caW8C8CZ+gSzdY3x4vRwqaCVBwki
	 GdidrOAZjyuGsqPGtmuQQs05gerjevOdCjTbnTjOI7ie2eN9DccmU+fKxXHd+OyUKd
	 ceztctA/XSJBM4sA+A/i+/yH26gKBSv4f6Y72b+dlkxi4uCvjJ0EsrhulY7ralihvO
	 UZyKeATVTyIuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF38F8D765
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636525368.7350.8780238101872030689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b659b6f5f4468b9e02d4af9d8c56748435587340cf14d0d29feb3694070482
Date: Thu, 16 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776365253
