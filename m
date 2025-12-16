Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083E41F4174
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765845774; cv=none; b=sjNrn6Vq4xSpBSRg6YkXEJj0PULFEe2vcHkYjF+Ma/BxBlp4Ye5uK4n0lKrDgE8OERSf0oJS7l1qjrqlMv2QM4JmajkcEW3zf5MCJh2z29CU14G1mrNsCY+x9a0NTxwOIYl69Y3yZYzF0Wbafi9Ubzz/NPhf8hZLq8/hL2yvyzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765845774; c=relaxed/simple;
	bh=9IviNsXHkjKG+L67UIdOhwENVHgGVlBMNNzlap2q+M8=;
	h=To:Subject:From:Message-Id:Date; b=D46dkuPnuQ4rSAwQy2ECoKgcuLf7aGOImZes+vfEzdO13Nba+YEQHoWVclV4HH3kyjn4E4LRpD5xnfpNs/d8p1kHk/QoKE8Ct/jbzCPeFqYhJv+LPg2U0Lou3aFZztFwQEV8rQ8UBW7hvnnk5cOOKllrfNfjg2RvK0yRtsDBt2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahc7V/4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahc7V/4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E3AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765845773;
	bh=9IviNsXHkjKG+L67UIdOhwENVHgGVlBMNNzlap2q+M8=;
	h=To:Subject:From:Date:From;
	b=ahc7V/4aGA5kOVUJ026xvQLG7mzOQJGo5wnNV0bbrVCRnRr0Vqjah+nNRf5GkqDTi
	 6GriT8E98KwBu2pLP9eEErru/tdiT7Y/j+/yOZOll41h5N86ZItHjnBD1+7bEVdzSF
	 Yp45D1/ke77X/OwXMDy62ZzoUCSQ7mXh/Zf5FbRuolDxCysJQmEJt3sP8ekxsBr5Z4
	 k/6hqx0K6KNQdXND2GM0K/2LMLurvqWxQqCe1hrHL/I5BTqjY9o4UhnVjKyQTF0mg4
	 HDZuStVd8qYry8or0fkRhpELE6K3YP9duZmaoO7pXsAWGpNNM8lrUERL3ywg6iqn30
	 GEDz+HmbVc34w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92161D5B87E
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584577358.22138.14318213536847392746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22270acd2bb2462866bb4cddae55f24968574e28de333f1c71eda276dca2b76c
Date: Tue, 16 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765845773
