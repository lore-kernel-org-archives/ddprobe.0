Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCE62A1B2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736684753; cv=none; b=KhGKpqlmVKQ3t1MbYWZk9pvSrPBThK1yuHBYavsRt8NMVrqmF+qDPCmDLI2tqhRjiCHV33MgvEHNaX2/rEsng4L8m3ZXQUR0wmvAWtI4AM+HDCE+iUGhCpaOtnSQZu4wVEMBDgxA7pumPiGcW2nGfvr6flUBsC/fSr4fi1IPf/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736684753; c=relaxed/simple;
	bh=bzXkvWb+f3zrG2AcqINGPY02i8I6EBqOBTBlJYy/dfw=;
	h=To:Subject:From:Message-Id:Date; b=MSJ+dGjjtMwYi23PKh5REa7JZluCMPjDN2yH4FPh+HzqmDr0j6PZ3Z286p6fXL4xaT7c80bwtL8n6HTz/ojvk0LJLU7ZtAGhGjuGUL7+eOli/RO+ZJ0bRdjuhouv+Vim72BycuhtsBllnt5Td6+cLKqD1XfH3Jq6Vpd82eBdQGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYYUkDKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYYUkDKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D38C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736684753;
	bh=bzXkvWb+f3zrG2AcqINGPY02i8I6EBqOBTBlJYy/dfw=;
	h=To:Subject:From:Date:From;
	b=FYYUkDKZYZV0Lx7fTexKvyDrvpuww0lnNcF4sQ5EC9Jw+KDikKgyF0GKaFs27a3s9
	 sWLB7BTs78/2Sr4qvHyC6Snq7WhMj/wwcXK2W80PfOLMIrWEdc8uFuK/P4DGyolbF/
	 LxGi3swVv948f6rLQDCagmBxcczfCAUR1H9D29Mr1bvrev8w+trBa+M80+HQhhJ0iE
	 TpXUBPk++qc+sflEK1gZv/vDE7KIkhMfGNzSGs7hZvjLjDdaW6uP1KxF9jnV03R/E/
	 Fp0o+8s8u26N5gXJdFh8u5fZQ65z+DsdS8cjIr5191Y+CaWqaLGOLIBiOy7H4TW80k
	 vklwKYrnN5fdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C49E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668475362.11529.9298841815509587376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6332132f4298a615bd3d589b4e9768efe93e3a3a348e6007fb654172922a9c79
Date: Sun, 12 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736684753
