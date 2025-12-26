Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B5428682
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766780034; cv=none; b=brat9yD6LBIO1whm81Xm1zY7yMqLiK0ZQ1mEpVtNx30wx9zdVrYAUa72pkASaZegDDvDzETBlnu87jMKQR/WPRM5PL04vQMnKUe5W9dTmQ6pnGpau+22eBEP1SX1vU1FzBstcueTsvFES4Vh2g4yX5rvdsF0uINv3jC6I2W6xOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766780034; c=relaxed/simple;
	bh=eZgBFvHIbTmfBHqK98aOCcdtnb/aCpCNFI6hrKq6C5I=;
	h=To:Subject:From:Message-Id:Date; b=Nvxodz6SaNDgVhSJAOXBQBQHm59KI+Xt8NqmrtM0kH8ou8MynwJMZGtT6uvsDZvFMRbKrrxPFGHXScPbskIddklQEgVAMEA5B2+RQqqpWD9BetvJqjk+aG5H8AP/kcg7rXBGgoBCSAScJFIpNQLtbYHgQ5IpSgGqYYv9bfTPXVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al7Z1mvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al7Z1mvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3EAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766780033;
	bh=eZgBFvHIbTmfBHqK98aOCcdtnb/aCpCNFI6hrKq6C5I=;
	h=To:Subject:From:Date:From;
	b=Al7Z1mvyqAf3VllwYOHbnPvcMzNH/GRh6PRgewVNSA5CC5iNT6/rY7kj3bVYYqH6f
	 qZnESGVCvobw0rLh3Zy8j7V6xQW1VtE2uMU2o8z9D/PMnk8+VTQlG+AeEbGhnC132t
	 n0ImoWgcKWcHIGdp7JupD0US7abAZxvi8CwPufVonX6uK7LRMhywI50lFtYF5HMCBK
	 dEZmnciF8J/PFBhn4WYLaXSwtqy6JnNKjy8sAeVA6cowYCOvOrO+5e2rcxzRbsEYmq
	 XVus9OB60hHYIJeLt+3dfAsLlZSOC9wbRE83+UJZ0Sd7zewTvrLKVyW6PptNUpj+zn
	 q9BN1fOK1RF5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5E1E8FDB5
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678003358.20466.3908349881525424100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89aa0fc944fb112e1e9fd077f96c877b258c505dc4f70c870a3862e6b964b87d
Date: Fri, 26 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766780033
