Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297E71D63C2
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746119994; cv=none; b=ORIj2k8fZ/R/FSyk+qUticoFir71HQTrcf5XbTuGgzDkCsDf94IRK+8UjTO4KKcyjcn3WBXI7Dp5pTvxWtiWozJB8WwVrh09EES0vaD0N5+PWue25vH5SXOl2xokuspGPwmNQfqN0LE55QpK8nglhxLSHCQyqd7n0PosZkD4rB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746119994; c=relaxed/simple;
	bh=RFofcYAIhiiHNeUw90B1qk+bnGpr3QZV0w5qZs4TpxA=;
	h=To:Subject:From:Message-Id:Date; b=B+4Rn3LUhy6ApUadr41x9LKCPh6PmrKbDzxA67LGAeqjw9QqtJhFa5L/rkQ23Ntv2wuPETaQykvgOBEd8DB+7GXaXOqjvpigyj6b/QUkTuJfk3aUOZ+oXI8rO2XLvaFBPv3R1eD1/RQ81TyjgSutxcpHAmmJLkgw2fw8EDP706M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMvyecAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMvyecAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EB7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746119993;
	bh=RFofcYAIhiiHNeUw90B1qk+bnGpr3QZV0w5qZs4TpxA=;
	h=To:Subject:From:Date:From;
	b=WMvyecAAFf9UTvlEnHPYffd/qFe8CgztuSjrMP/DpyUoDswIkWJsc3ktuYtXC//PN
	 E5UMEBPw59wUnYPAkOklhB8iVgftg7XTK84IhfDvg++IIDjAixnYO7q2hDjSkgMJV1
	 8rP3CWJ1mmgHvTKakbWSkIoH7gXTqgnomE19ySQ64UALks16hlalfC02TOiTRF7q09
	 WnrcCHp1UPOjSEARYbGxkQqFV9V+Z9lb8ylY53dEN9nrGqSxSZiV4tVVV5H79ka+Hg
	 rS2OIeRtLr5mFB6buqHcfTzkjMvT0YFprWcmN6n5bOPXdEn0UnyIVstaBjTWvMYL6m
	 g+6yL880rL03w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D84C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611999357.23337.2112274412990340350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf51115d0cf854192939918494b82506b276dbc83cd048bc4d6eb3f5aa20e30
Date: Thu, 01 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746119993
