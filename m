Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A16D28B7C9
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752136194; cv=none; b=oILlDJpN3TUuxQuWgMD5ZjZVxBT9OMs6SJO1XTvFnRWj7peAffRIZLfQmw4cXjkCnIvz+RH0KLJ79BfkvnIclXf7WIVUygZYucgM2yR8v6c6YErZccHEWWFGVa8MEFnxuRGCRy+4V6nVGNNA3cs0zWh1OHXeE2fkyLVNj9OaQw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752136194; c=relaxed/simple;
	bh=8W3jmTP3zP1hx5a/qMXD4LPHYAzeMnSo+CIQ9zb3EFM=;
	h=To:Subject:From:Message-Id:Date; b=UuXSCXT4Iq4OVgXMmNKRurfqUlif8bjTE5HoaA59MaVcDVhhgOOOteamc/BmbWxmJvXIT2FmOLTH2uxgqurtoQG9gWpXNmsSR9ykha/bZ/JgyIUlmVkSma7DGOM7nNCiKTxxOlx3l0ojZCE7ohUdfU3/PB1uW2aMNdXnkP//F28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVdIRqVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVdIRqVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C6C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752136193;
	bh=8W3jmTP3zP1hx5a/qMXD4LPHYAzeMnSo+CIQ9zb3EFM=;
	h=To:Subject:From:Date:From;
	b=XVdIRqVhkeVCh3eT4X09Be1REgvuhD9PXz8R8eWXc7wGB38iYCU6hPWALaY+1Wyel
	 76XvAWg2rfPmeRLz0vfG89znFU1NkJLOirEAD2HJesEApCnWtbbwHJjGHcbRnkV5IW
	 8qDyEVS76bniS0eShIPK+h9RsQGGRM8rG8zoYrLDHnix4cVtNNQvPCgvaIwK0WW/oD
	 8IxRtHyhTiZ1ptO+O3I7I9ck3eoj/Ard6aROHMJr/HNCoq0L/pBlvv8YloyihWlTci
	 ne5nlNzHknrksdhmgzuLwqeWSizzUbw+j3G9M+np4PA5rtbZ9OS8k/qFIRNrw2iA6l
	 ehaZx75d8VH/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AEAC83F18
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213619358.19093.14458478578755214039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30cb99127c0249655a2a914b2951eede83d5a85258a5e7be476471f13c5eacd0
Date: Thu, 10 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752136193
