Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0099D1D5CD4
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766152434; cv=none; b=nixvSbnp75s0EX8fqyD4kYFYkec/8YxvLT6WcM4IuAUzPaM8utyEDB+tylIjeqkYe/4E34/qcE/tVFOHqK013HwEmYDv9LV/Z7E/XyAjBnDKIstJ7B61ZCTyYnXOrhW1SmHein8KqvRlsthmIG6eiJEPLxF4ewIar29zWlkKe9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766152434; c=relaxed/simple;
	bh=fvOa5UQOWkSn7iFp7+be03dsIt5je3boeMwSPbv8sJo=;
	h=To:Subject:From:Message-Id:Date; b=kS46PfsbnLModGMj57958sbQnW+qD7V2/BqhC7NjObYVUezsj6UCyQWMpcc+CbcpP87ZXOUl49YVD5z5LPqzXs+Yst950mKQa0qaXpZqz9zyntKBL27W3tWDASZwP9/oQxsw1Dc7sJXYKQi6WHR6/io3v5Pqq4KGU865C1lhPAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJc6sLp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJc6sLp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B69BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766152433;
	bh=fvOa5UQOWkSn7iFp7+be03dsIt5je3boeMwSPbv8sJo=;
	h=To:Subject:From:Date:From;
	b=gJc6sLp5S3pRNp+GpGplTv5fSoEgDVrpg7nC6fiemG9WiOPcqD1uWMMk+3ZkDD5OD
	 lkvFUpXAfZXLsYMvYO2GXAfND2hxcJ1cKdhFSICMqHcDkr4wyLr+Y3clD7hLjUb5IN
	 Fr53GLaiHSQGkm6SKhHbMttg8ypL+2ayd62SXrpsg6Ripm6VCSQ1yQ2VheYH5T8pmD
	 Psa4+S1a6SriJMDwaRNFtGXf3mzwM75YsaZwvENteoKOGjxrrOnGVy7xS9b4wRJ6cQ
	 a8xH+L7K2i+8W+ArukYRJTg0Wvw490ShGB7/wZvClMdkKnb355zM56sjXWm/rlsT3v
	 759z5ctD9h13Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB95D78776
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615243358.13301.17292770026562883306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200861380e82428d7b42bf713c64b4d85cb1f0e6f885eae52953373543de27d0
Date: Fri, 19 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766152433
