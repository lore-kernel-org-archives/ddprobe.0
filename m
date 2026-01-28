Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEA52737E0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769624034; cv=none; b=iriWaE1Q1jPpqzBvOwshOma5kmjVYYnI7cj1iI32ZK6O+02VFT8uR600riFcASlAUe7kTatKZKmlhVxhOL3Adbjz1DM09WJmyNRBfqvMsM92wY03sPZ8qoFymGF3sbloQiLnMlV1kb8NxvUzNhTLzHrILj3LG2D7xRCLuvbcqqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769624034; c=relaxed/simple;
	bh=mXT2Q5zFK2ucTy2fiY2YAl5tk5j/kiS2hJIxZPkLWRU=;
	h=To:Subject:From:Message-Id:Date; b=F8PPzm01pP1e/En8UwMPXjHylFbGlvTH8QoYBY/q8MVzmCWVHY3kxOEFnDfeL/oH0NJ5vlYGq/wvk5fn6tBmIHakC4SpRnxas/0O9JbO7YJajK2quMUlea73e84+z9X3+JFP09lZTJYkkQpfRwESS94V8GdQghVgtnNpu2wa94M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aq86RT+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aq86RT+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CB0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769624033;
	bh=mXT2Q5zFK2ucTy2fiY2YAl5tk5j/kiS2hJIxZPkLWRU=;
	h=To:Subject:From:Date:From;
	b=aq86RT+3kEjf8cVHpj1+U/c8BZv/AQFHJbKbxgkjn+Ha3TUrc2RZjWyrNpYv82BGt
	 vYQOfbjWDOZYofiphIv6vT8rOHxcbgloUSgBaK2sSAepOAFabxtOH1DgOSQkmEAlQE
	 wpExxST5gw8SWUE+6NZDZdXbs845ZOx1hw2/5QNZyYJwzwkQQCL1r3U1rgjF3D3VjS
	 aQOY44mQqngJtc0egal5NvY6FQphB2PiSHmuuxIQOHok1zhSLYzueaNrRNW9i2YhKm
	 zdsMgg5xxMQv2U0l7SeV8tkLRoI1muA3bO2M2abqzlyY4MeDOhTzna90g2cTzocuO+
	 e60Z0WFHA3yGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA7FD46BE0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962403359.24250.11497887974653995848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9f5d4f1b876dc6ebf0a5d965a669f1d04d6d9be69c8b876424409bfa0dd2dd
Date: Wed, 28 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769624033
