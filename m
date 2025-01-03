Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342BC157E6B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735887354; cv=none; b=Ti1AxML6meOJvJDaG+KBG9D9w0XCsvQHDQyk2IFqr0GcC/nhsUAQ4phU30rBP+aFBV3APwyfcT6MJLXXJMCURrRsMAxyAGdA4P2q+qE77qTtvbigdwHSdkAIhNnlvi6K+zw5r71Gz30yFNJjrHXWl5iqN8sS4eRW/wl49fZsGjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735887354; c=relaxed/simple;
	bh=zmgzxLj0b8qCe1bsQcljgYJyg3J3gFvTZWM8KPdQnZM=;
	h=To:Subject:From:Message-Id:Date; b=jMruO9jQtly2kSxnLJd2QsvC0gOHMscKx/rgLrd5FcTAZMX60Md6g0gQf6dNVCJ6eh9Tyq/s2PIbosNd8ylPeUhv4ae64MKQS+2osUsbY/SmWGh2BoGZMRcunHYLWkqZejJSsRKOyNd3MB89ImwiWJbnEDCN0yQg677/tlRvmI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJliq0od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJliq0od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5130C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735887353;
	bh=zmgzxLj0b8qCe1bsQcljgYJyg3J3gFvTZWM8KPdQnZM=;
	h=To:Subject:From:Date:From;
	b=GJliq0odWn647kAXZim1EcKQ2GvVf0OrNcAQPT+Tp2lQ2nGOMLrM7lBSNJ9dHXoS3
	 sy/yF6lEs9MylXDqaNBVSw0YOMpmHnzNiKTfPHj3Q19GZ4yeSu/jBA4KDBs2KiL9yy
	 TIsFLsX06rbMwKVwBpfGpfa7ANNhEzaxqzSFsxkhlfsszc4pkG7B/BTNmaOKTF+WTp
	 Lfq6pKbttw31RWL7hh1ZvUVwEx+fs8jrGKSeYe8pCCgAKs9vO+fboFkXrir+kttnvs
	 H9JWnbW45kJ4hjaezuS0O2e2JBIWgg5v5Xp57XDvDgs3Y94hoiOTjvG0MHubi5zHvq
	 I0nnI1t33f/rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99003E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588735361.3816.17606194862150906268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef592216ab1626232635ff09529f48ddb1593406a8636a7c81fa712818dc49d7
Date: Fri, 03 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735887353
