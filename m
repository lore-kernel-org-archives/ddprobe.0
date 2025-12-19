Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F093176E4
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766144034; cv=none; b=PaYU4zs2jVaKKptyAk7+vUzlIDL/7q2m147Tnli4v/jxmSS8i82+hwcw842rWXyY2/lftGDANj20GxxqKDQztU10IJYWfFawvZ95Br9gJle0VNBe0YScwZ5dhqmJIeAmP+Nm3FZMsekcrrW8aAzUr7ab9P6k3zMnf5PFzjfEC1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766144034; c=relaxed/simple;
	bh=o+WLwxDUshO2cxc7OLP60npkvfUcSfo+MfwqjOeoF3k=;
	h=To:Subject:From:Message-Id:Date; b=O1GUOfpv0FBOJnSW9BsuI7H9rGtS10ux0/XMhMrd58WMua7S5dOk/XipioVwjnzC5U96wa8rGa9s8LYQRSY1wOrDKibX6TatrvuDq/SWRgD/mxNV97wMGa9YG5pxzM9pXDh6WjHEOChm4f7kc2Z4OrJzKC6wo52Nl0yr/PRFgGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coM+Jwdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coM+Jwdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BE2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766144033;
	bh=o+WLwxDUshO2cxc7OLP60npkvfUcSfo+MfwqjOeoF3k=;
	h=To:Subject:From:Date:From;
	b=coM+JwdpKoOGvZB1hFirb1TbcnrLj+Hm2SInMczPsfdHjWKhSum3g4TwxJ6bsyi8n
	 BhSOma+N+CBWW6CS+vI2TLSJJGYE2IpEy9dCcm9Shyq50bWSe8iLfwLY219MUAYhJ9
	 hscCW0DaKnx5vvkJiS0+R/0KM7EzqLKSZV+iFp6OKghDXF02EEPwqFwnD5lcLxU2Af
	 640zsAUWpfaLEaOlsChvg0nJfCujWL98QfqYwCt0+5fgv7DJaTdf5APyNQ4+U6ANye
	 ZxrJqpQzo4qbqLBBB2vIUP0MWXz8FBRz7RIoRtB9IsKLQxI7lzL1oMHMw3hXJ/ZObD
	 5uCIb0YlQHu/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD9D767DA
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614403358.6103.2691957475189497982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2339a9e8ff9661c944f435fb53dda96c728c3e54dbfce09f720b51ace9d985
Date: Fri, 19 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766144033
