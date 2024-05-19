Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809C417C74
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716112943; cv=none; b=eDP307tfvKsGRt+fp7ZDHm+oMmy6PUACfdNsFNhV4C0inVNdqt+HIRgUcWmnCFF5Md9Y8BGe9/DgR5wi90Wu0l7fCYplAYU4knhyV6TCv/6qfTvxxmRqkzGiFAFLnUvM8ri92y8gPqwA8C2SuITSd8fGXqJRh8UgAvzMSn1aJBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716112943; c=relaxed/simple;
	bh=SYdurWZaQb+LtEOCDBIHbyjj8yp5BlKWWnqAwT6Z8ZA=;
	h=To:Subject:From:Message-Id:Date; b=Rhr0feLXRE/9wFkL6nlEbq9p5BZQ7TvMRp1xgNagS4shnpfF+ROU/7oi4x1m0vHc62CzmAgzxqgTaeCxcFePP53CiK4rshKRX5GIKD2fQHSPc3pzjx0KcjyddqAkZUQahv5zcFvHBAK610bBYfCKodv6vZVIKVXlhtKli2ABqBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbfCq/pF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbfCq/pF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E92C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716112942;
	bh=SYdurWZaQb+LtEOCDBIHbyjj8yp5BlKWWnqAwT6Z8ZA=;
	h=To:Subject:From:Date:From;
	b=YbfCq/pFLyaKR/rdszRZNIbUXuiTWG5pq8Vet/7IuthDR11ZC3ZEtD1Y8Od0wQ9GK
	 5BAR8luyi7FaRjnIFji8mA9ExP6n7w1GtCO8q9I7vpCeu/FUrFnUyuWMt1LbvLlnMC
	 V3xrltyd6QUeTh3fH/QYxESWyKdGQQZPs7e93bTuinlknKQf19m+CEC1JP65r+Y4Y9
	 mxxTIp/y3KQX6nQOdpa6ihgqp89ok3KsjJQ40YUzgKECO2WIPBkYze/4AJcg+1TsFr
	 X42AzCvXzu92Zs9QsB+Ig4k29kxMs593O8hRpe2P1x4fmFbvpH3Wdh39ZHJmSRQkVY
	 9GRpvaH1znAng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CABC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171611294277.30249.10350090500580569576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0cfb21ac66e9ba470d4a177a45b0054338dcc28016c168df217d51b4476b838
Date: Sun, 19 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716112942
