Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459D312E1F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721300723; cv=none; b=nHHDZgzzL4biFoxAQPTLy+3h/mcVgDlcxpFEQdX6e5gCER3YsqzpumQjusfsosu+ViCU0pPO4AX0O5OhOeNVmRWdAWtlSm9TEIPgHZ/UVRXsJCbpnciWujKQtsb/bktj0ccgLQWRt39wh7ztsOV3Nwwzf0ZRfn72cPVbm8seZ8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721300723; c=relaxed/simple;
	bh=EUvb19FCOqeU9rkxMoi7XKQoIah7ZE3Ip2UVRuhihIQ=;
	h=To:Subject:From:Message-Id:Date; b=QFfOwAwcYeqo0+Heq8ReUZEhiVKLGdDQJ/uIAjqYNILw3j7OEm7evBqPeIMs8IxP94tmIjfS2orBEAU7qs+A46c9u6ojgtMVw854ZykgHi4R6oDHAo6sCPKEhp7W2M5fASyhDenongF4C6RvI8/VgIR8WceiKTeiIgY31RmFZoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvGqYAQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvGqYAQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DEFC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721300722;
	bh=EUvb19FCOqeU9rkxMoi7XKQoIah7ZE3Ip2UVRuhihIQ=;
	h=To:Subject:From:Date:From;
	b=gvGqYAQ+0XWSiN0RzRVHVZJkPApIeuqpCa1FTGVqQwIpNsEE9GEJRKbErC2e8UjJV
	 lzQCaU+BsihOukGdYtUjVo4dSqRmICn3kCkACPSQvxry/IeigtAPYovx3pkPO2Y0pQ
	 fUt8a1FlPD+KdPBNZaHsYw5RT4Nx7biUHz8mJmpbuzWWCF0Q5G39QrnlM1TWx/cbDg
	 BC4m/KVzQviPWVYv5bvZsBk8UtZzcrSJ0txSRO12GZhh9WKpqNtBDE7z0oMHB5P3Ah
	 esT7Ygb2Zl/+Gfc3btnv1tk667+GfGOk6P7kerNJXYps6AVyVOWfJXhCB4i00Py5Iu
	 1HjZ3W5ql9x7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12F3C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172130072277.13685.13809445390073719974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc0dc74f0c62875321989ad3c79f6d23fefaf1192b76cb1ba3d8b9937154e89
Date: Thu, 18 Jul 2024 11:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721300722
