Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5925E186A
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748582994; cv=none; b=SQmMF8EP1UoCNWOF1BAZBadtefznxd0lbYte43JZDb/wzXvtmKDokT0qVY53YoA9Hkk5xYBoPuggfRgLl94fAgjUbo/qjwZ9+DebnNbd2rt43SRsls8qBZbjUFSs1mUZWKrf240oaDl/vF7NlLCF9Q6wdkKnewo0vQgAqxZcqLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748582994; c=relaxed/simple;
	bh=hEuuJF074n3ZsqeokRlOkRxn76E7UPl106Ssc9a8S78=;
	h=To:Subject:From:Message-Id:Date; b=Otlinamg6qQDGr31HRNMltv2mIUNs2oQ128oF5D31LKppPXnynsaY03ax2Qd7hnaMpVzlrtOusRE6hISR6U87JoR+7ixL9ZR0tAiglqAreW1IFz/iY0Up9GJ8Pl0Kvj/mtdE1w9Y3uuao3xtRRR0GE6CbZa3flg2gB4Mp4a+7bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JO/yYrRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JO/yYrRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78CCC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748582993;
	bh=hEuuJF074n3ZsqeokRlOkRxn76E7UPl106Ssc9a8S78=;
	h=To:Subject:From:Date:From;
	b=JO/yYrRLaaVJsFf/iE2EwuGpIZnjdc152CnXFP9rK/+uqFBfVBaey0/cbSP57ysBg
	 2zLjOaVJVh6Bk+S3v25r/L2B9z6bv70i5f3jtI+V2jIFtKePW7eyGySizEx5dYZDaE
	 heqJsFRUprK+zQgpVpL4avpiXY129pLALtHQCz8AuAnBgfsJ4ggBjFefUvPdc2ot6d
	 Hj9RZuy0YpddVu4ihrV9QWVsfqpqvYiLqSVmGIGTsiVx+5cXQ6wrWqzn+EAHGgGCGy
	 pgHYyIVD9nMvMhKTdZt1gBpq0CPdABut6Y2zTV/RG0FaX0DVmJ1iYlNGU+6/wqZQHr
	 0CjbLwyinBKSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FBFC3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858299358.27318.4317904344101062374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4ac9be95459275f356193b93e78d68226143eda3afa7f9524788fdbf449ee3
Date: Fri, 30 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748582993
