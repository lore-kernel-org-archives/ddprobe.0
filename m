Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE1422968E
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734027354; cv=none; b=sjNez1DjhyNpKBOaZBXNG1XvV4yPQDV3y8L6rm5IzitV287vWzTOWhXJ6L6rVglD8XTWn4RZKjwiAeXwhuuugx2hlGbvFimwier4hOvBL1707wzp4Pjs/xkoQe9jtbK+ScddT9VDoVBlumoYGB77oiywNOr8HE+ajr8Am5xa4Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734027354; c=relaxed/simple;
	bh=fs1jScMXhiFfSyzxCQ0lBAnZJedvp4/O+FbM4vs86i0=;
	h=To:Subject:From:Message-Id:Date; b=R2RrBu5LMrLx41QZxDLX8+BsbaRAfiK/39wvHGR9xzrWGl5Auc1aOo4S3w9SQjqxeWC0Kj/7mO4QVnQg60HJwkdD7iVGor37m9ZObKK0m9JMdoGGT5hwV0KIkdT+wUJt5GkdWkbP9hlBGMfeymbSBrJI5nYaYX6RU2cXV/9wLAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQvTDfMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQvTDfMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32D0C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734027353;
	bh=fs1jScMXhiFfSyzxCQ0lBAnZJedvp4/O+FbM4vs86i0=;
	h=To:Subject:From:Date:From;
	b=jQvTDfMOCxODSWKFILzV9iPMYDKgIfonqgH0fiHvZfjyfpXZ0jKqJ5fxbnMUcPo+F
	 o47mEXK7CBKESNEt1i+IoWUkVT6K2mGnvoOXN3Ml3pBitr5MjudXaL27Ub7rJyL55z
	 2e6Gzf/OUg29PhxkU1TXwL+3/F1aoYREZRYI01wGbAto6P/V3tkAKRavyXCJGOPp3l
	 rGFMVSrTCd+kbTpUNbpg2H11qREz80CdammRdvH1Z++SAW2NuK/BHdtXTziM/GC2dL
	 hz/RsqUKONDVQVHQ8UIgz43/0LKuiLHurPYe0gyh5ljUZj4TSCusnbmyS9JkDJHE3k
	 Dba5Vx7fUKMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F784E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402735362.30534.1242574550006651880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e60cb1e844c6635878fa3a24c2c35a9871f1219d400cf1b5b00c55282d1840
Date: Thu, 12 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734027353
