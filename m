Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4573B8D78
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791502834; cv=none; b=HIXOmA8STFPDafvECiUui8DDk2rOElA9N6jWz9PXeUye2VAvxSZq0rIg/UxL8K/8TLYX+tSw87YxGY6R32zSEI4upnpPUFMLnQwg7oZ0AWXzQe18zMMHhV5SC/KMEP4og3B620LpZehprojFHpGMHRLyMXYwCP89t9XLvqy3v3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791502834; c=relaxed/simple;
	bh=O637a+s3L23by3j4/A5p2Zwnsem+HG6jaE8+GlNtxrw=;
	h=To:Subject:From:Message-Id:Date; b=umnsfNf5i8/SMHTS8VEQnwLkWKXnYgLseITolLGUHlk3IO5bmnxYy3fVRmnt1wLQvF3zO63PfC9mKXQZqbzo3m58rFVTj1xMcoQDYAI1n196qWwZG+T1WMQz0mnOsdipqmVdP3k6c/qObWLd9ACDb/4nCHKrXC1kwLOfz9It458=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMKnnIYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMKnnIYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC2CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791502833;
	bh=O637a+s3L23by3j4/A5p2Zwnsem+HG6jaE8+GlNtxrw=;
	h=To:Subject:From:Date:From;
	b=jMKnnIYNJkZhDAHlLjJaWqbnXZ+1KNWwgLzw2MkY5qnns90aldAAM1ihmpQRsLJCs
	 DGt6APiSpd0R6mQeEvYMd55XjT2N2cVxqEslRJrEZPrpT+QXsMBzKFbpE+xokNjAwT
	 LGkAMlRDRdilyjInN9yPUbTmrcigHP9ZKTU+w6rWM8oQoO3/SsT18ZgOi6fmIJl2X3
	 uM/wxsCMSdDd2gQMHCibhinb51JERaRC5lO7Cf5Rh1DGKCz84IaHBHtLVmPir9eqIw
	 nr2ybxCmjLCAmIHHdzBfR5yvmpRe8WqwbDvxN/X8oA/S2sez8pg9iQvT3glsbeDxDx
	 whuunjipTETgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1BFCA6017
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150283368.31864.3679449688191536465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34f7c3473a651899f171283db636f23c20ec9eb6fca816e3be90bcede989801
Date: Thu, 08 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791502833
