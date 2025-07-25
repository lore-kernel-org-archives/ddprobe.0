Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D9B2239E62
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753412394; cv=none; b=KaxgyHN4A50HH2VSiw2/JnrfzXlyVqyenPfrboXKPJJidFnv/IxT+2hG1lwj2wgaqKfN4O+v+jBJXrWVoBbKRj4utrz4VVhwx4N7dzW1rEjWCU3vrmzL/3deHrqHig85nG36Cn7wIlo5bbVMEPMAUohTeqi0LVXBQ2E797jZrDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753412394; c=relaxed/simple;
	bh=82qLtkqBUu+dJiskK7yKZVcw62FY/G6pRhou+EXX70k=;
	h=To:Subject:From:Message-Id:Date; b=c18qdYyKuVxcfYHOnRBbJTCzthy5Kn7U2xez3ZxL7tDb/wYmWfzTCC+/NPB+/YBxUnmsVSeBCYk1xfJPbyhmG2TsqZr0HHt+idsbT+nwfhtMYrBCV0ILoA967u3OmAx5RHgnsCIIerGQreYYjQ6Yd41riTlvOlPEvU169U6tHzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pems9qVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pems9qVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB782C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753412393;
	bh=82qLtkqBUu+dJiskK7yKZVcw62FY/G6pRhou+EXX70k=;
	h=To:Subject:From:Date:From;
	b=pems9qVMXcF58sGa/cWW7rrrJ32mwmidy1VrC248+DmsdtCk9M0n04DnPglnZB47x
	 //j1eNPui8lXKjAQ6mekt5Cljn5VbIO9p+U45XHf28hlBhzVk6hJzCVdq0/IZJhX4b
	 kGxHfEBFIq6MBmHnOqY6OMsCIp2y2qrMZbqRsjOVYfL+krh2wREtqLXpFsoLNsHlra
	 TTWQ1B4etzpXezF//WHa22kqEL1WB8/IKKdWXiO4Nsal9ehwitdyrPKl3UV9DrM43N
	 63q2e+UdwHIJh1yBjp98Z/9tPoShLGT/lHFtjlTewlsaKJ6IdO1wqekpqNnttgTixw
	 gTj31zk6yqArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98246C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341239360.14118.5068977121009402829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e306177c06af991334cc67c974a5f098cdc8e79a3e9ceeff83fa99c147ae72
Date: Fri, 25 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753412393
