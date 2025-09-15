Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177B02F3603
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757941194; cv=none; b=b2EHXAAc22EB/ewc9iddW18zgV1v2N87iJdVMhdBhQdym6ACkLIUAUyOQdo3ENiXxdqUqrH8RobNg1/Odx0Y/DGHgeZYIUsh8vY2KDlHOCjW0+bWb//uWa5DTeIsN40VfJjTsxewk1Lf++fiPh7MrbAmdmTHbGUe2ZPehXRE6Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757941194; c=relaxed/simple;
	bh=rgGkufWo0WBcw8Nk8AST30y72Fa0Cy6nZgnYmbrVwgc=;
	h=To:Subject:From:Message-Id:Date; b=uMOIWTFj8hIgA2jMQEjnLjoG3avwGXGLOEfn5CfEektEEwKfW8fRtzwBgkWzG0mDGA3P2dcDsyYtWFpXN6mJ0nYqSg6C2GW6zAFBLeSpO4MdudOSTiL5xAIyYeIKGqfnqklLFCPq1hheYIFydbAWpH+ebdGeWhL9ZvTL2q15Pu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOCtLo3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOCtLo3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42AFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757941193;
	bh=rgGkufWo0WBcw8Nk8AST30y72Fa0Cy6nZgnYmbrVwgc=;
	h=To:Subject:From:Date:From;
	b=oOCtLo3UZV61smQYirZDNMRSwF39FlAjTpE1DVLbpeoD5CAXYvKnuJcw/8gn9GOAO
	 aF5VGErBitqok2Q0BNvyzTYdQ/DOiQRKvcMngLddBoLhzlYB7vGPfDrDFFimqBWMDK
	 EUqAjjpYx1IM7IXAOyllNMri1cGwmln7yfZ4zrWqgqUeI/81qN0R11EKdqAta51RBs
	 4GSbx4e79YDGCZ4Y472s4yCiybkAyqmrmGNp25vtrjSiaz+B3sjcJPOUZZXbDXgCJq
	 VjrKDNOe2OGTyuudc0+FekvkeqG7aHo3e0XyTUZZvcWeI91oAqkXz9Vd/jVnhkAbTk
	 keMYRaU4IceLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB8CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794119358.1216.14980601650951624477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f4770f2f652506640e42a0587c9680f4bdeaf51b846e4775ff93ce60e088a3
Date: Mon, 15 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757941193
