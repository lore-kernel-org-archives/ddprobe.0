Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E49339B2A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764174774; cv=none; b=UafsXduipIFOjFyl/J38PZBVRk3Mt2eh3YI+qokATRUBJrNJd8sZbKzgqlhlSFm2F9Zf3BmnetQVfs09ZLGjsOOnrHRZMR0IzJD1g+99k6CjpCM9ISSaohM02lrq6NvuBlgBBwN58abs3tkNaOASAEOGt+dISqP43d+MrZpbCM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764174774; c=relaxed/simple;
	bh=TxX/LNl3o19oujUyzvTonNzTrUocn1Q/rJrwdhy083M=;
	h=To:Subject:From:Message-Id:Date; b=eBT00Ymbr4472FTjVv8HjVptkqCjUXo9ZNpBAgOwWGpBE8FaH7QgZnmkJmwUJKZ2q4POTme49EF8s7O48BByIYisbJk+/feJIZH7wvSHksk8Vombk/tyNOL4orwYQsttDS8qsEtHkWY9eK/9c0hE2ZwWPt2oqED9wA6D1OEZllM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhdqY0Tb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhdqY0Tb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C34C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764174773;
	bh=TxX/LNl3o19oujUyzvTonNzTrUocn1Q/rJrwdhy083M=;
	h=To:Subject:From:Date:From;
	b=rhdqY0Tb4AtJX6lZlAujFXTn3XDSXtb/n4FkQXXGdD9D3ORdu6eD5eZaNtrbkNTMH
	 Qq5vq3U74yjB8rMtpdEqXboZxu58L0AGIEbIfBqiwzb/gApN3RqkKGKcOzOtSpaUsR
	 pAEP2ECNJq3QoX1yU7CN/8k3S3x0Vt3Tb53bQtHhPp2JITKhsuUC86Dzy5QQ6G7agm
	 JKmi5ukzWAjlwenWemI7Sxv76UG3akrYUaq5cNqZAbNMzzHFgGAQOBiIiaLP5qErRl
	 +I4FPj5onwDBdEjS/rYbKDEVGpPVwquvH+a3cvXw5fG3HAURIlrhXJ+BtwgUOguc7I
	 0AdglOCVoLyXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55A0D10F58
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417477366.6799.13020739296186025411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3756d3e578f947f461b074155bf6613b7df6c802a639c8a634d11f2839cd336b
Date: Wed, 26 Nov 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764174773
