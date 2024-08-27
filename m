Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AA080054
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724738154; cv=none; b=jgmyUx5oKYS/emfn2ofbIgGTkPLcM8QYokG+Go/ZvMVEpUoxjz/Y5QNOODtdpKOpWqrFGZ2Ten8sF8SEGjAlomCnvKTJdaa+96eycv50Hwt1c4T5PdJk/7bKmpQCqoEBITgDJwJal8MpW0hjjUutgXI3g73xq0/H5B4bCE9e/aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724738154; c=relaxed/simple;
	bh=EGpX2emASlFk32ZqCDM8usQVyr35lz0HxH8LShEKM8Y=;
	h=To:Subject:From:Message-Id:Date; b=e0e1Tsozl1RICPtKFeuZ2p/oq2OzBhao9aFan5h4SiWpdaCP+ytl1Q1FklivM+YMG9Qj/SKK+frW9P0JSuKGIcgi3T+nks6QfVe0dZVB9o9uTf9/Fwc4LWpQMXcbS+oIaoq1IeS4XxdfkFeoRktU824r04AaRUaPw1fsLYBElI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hi088MI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hi088MI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17B7C8B7A4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724738153;
	bh=EGpX2emASlFk32ZqCDM8usQVyr35lz0HxH8LShEKM8Y=;
	h=To:Subject:From:Date:From;
	b=hi088MI2+LLVz4Diz/MqCr35LpKZbgHuXjQAbo+0W5FhuN1TrCy+44Quo2+QkEVgC
	 DtdBMNcsJbUqTFxtagiE6/YG4utt0DLWv1u8yKdrsRpYa2ZURfauOWgAbGkg5+RzYz
	 mNn+MiL4TjImM6iKEIfJc9pc6GJZBRD8bMJX8Jgmpfu88XeBTxNvU9s+ANGjPWzJRL
	 zXtieFq6G7HlP+/MKjCG3k9zi3UDOGmE3cylJ5ObBnzRLSB41OtcKtn7aj346MHmti
	 0lB0fEJPXXNQhW5mexZK8mCDSb1c8N4UBII+KQI7+4iKQ2HMr1vwzq+qSTQjyYPGll
	 VUE+cNCBIaQsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD31DC52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172473815366.12448.2179921427773643619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc91975312095f1d467b13e9141a03f5731cb9ee23911aa88fb63797e3f007f0
Date: Tue, 27 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724738153
