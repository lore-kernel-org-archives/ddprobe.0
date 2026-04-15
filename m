Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC993CF05D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776261454; cv=none; b=IDH2NUHs4bT9dpfL17JlpueggmEQW5g77TAvD/UVMixFPabmY6J2m0fKWJGzi4ob6pp/lZPVG3to/sgy42dWfXiUiKITzEXLC9WrSRoI89phSwoFqGwE58zvU7FBcutU5kZgphMr/8Dvz3Ml8mAR6cFDIEXnwcb5vS3PHSiRTZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776261454; c=relaxed/simple;
	bh=VZ3IhEfuRdXTiE97m8zOVv+XchprSdQ3CD+KVhmnqKI=;
	h=To:Subject:From:Message-Id:Date; b=MPik+gFjqieFeA6NaRvN8CS+rNvNShxDNbbH3TPsfNGCT4fc3DuAHBjxGpmDJSicorjn84n36kuRxtx961yI96lXW7cJgs/d0lROf+fbK+TwGP0FsC2iFFnVMBDEWQ8R6FCP3SK0Gk9fBMml4uOkR9ZgqvQ7B4TITf3a4/LW7F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLPhihAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLPhihAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AF2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776261453;
	bh=VZ3IhEfuRdXTiE97m8zOVv+XchprSdQ3CD+KVhmnqKI=;
	h=To:Subject:From:Date:From;
	b=aLPhihAwbKAhmzfHAsNsXoVsSt2inlZ5nBXTK+osIFtMeSEokyxYnWQ0D8CyoWAqd
	 zIbZ7Wioy1uHufJFUI0O/RM+6CCPw9UjURR9snXb+BUwx5EAGimV3uZPqZXJhpbdGQ
	 IsIDVxRI8LJgFrPFWJn4Ev/AkVqRu28PjW8sXgUbCTi/6Yyd/8iKS3PrMMJ9RX4DiG
	 QAEUG3bt/jawVW4T1vdFr4U188ew+WdsZ8+XvnG0CJqMZ2ol5cB1drP5nCM4LuH4DK
	 ojDrRGGE9BNZW26qPBb16tH+kHUaBFMt+StuIpaQRScqF+SjecY9vOtPcd08vcCv8v
	 lako9HGIIxdZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3A3F419BB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626145369.20382.6042831545175663378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad80f5e827258990828dd9b94f4766d10913b8dd1906d47e2ce52dd221dfa2e
Date: Wed, 15 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776261453
