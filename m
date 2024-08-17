Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EBA1C27
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723855554; cv=none; b=rTJM4az7EDawJoZMSxHuNBAY9DTUrPhbetLatYfbUFTKbH7XqT6J7OMXKhHXHBFLY/Y/FbcerVfm9S16xlmyxh6PkXSl37Zxl5gQaPtPDTLXq/E4g+cSk0DCvWU58DdYqPYS+U+go0t3PECjw63T2xFlGXZOrFYxUgBf7xxvMXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723855554; c=relaxed/simple;
	bh=YIXuOtWuc5Az6zIMweRva9jvy5N0ey8JNNLI/QrEB40=;
	h=To:Subject:From:Message-Id:Date; b=GqgsAitQFktMTO+HIpVPFB20UuaYtJeWcS+OWVWcpt1mkwWW69aBMgGPN/PvMapa908VQSorHIVW3hDJW/7X8ybDWKTFBWmnmVfsUgIpiH3wYpNurHUr+z+w7ZNMvIgPlXipqmhEq/BmN2kzExL1ZLSWdDvcrOjKk6DwXURBZu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eExD2hGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eExD2hGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCBAC32782
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723855553;
	bh=YIXuOtWuc5Az6zIMweRva9jvy5N0ey8JNNLI/QrEB40=;
	h=To:Subject:From:Date:From;
	b=eExD2hGZlouJWrzePJGLBZaKRAcusVriAM9eKNIzyY7wfMqxfTAvQ+ZmfqZQd1pJU
	 8JZahkBU+JyXWOmyhabQ7A72+m0fsL2piFGHVrtrCAnjv9wIOOJ8Md005SEiNg+gwB
	 QI6IaR5CkMZmL94Sw26fg3r7RCViDxovSVcbZHQR9blKDpp/683AaozVqCGqfTXNUD
	 hj8OdzLa0MwZ6JTFJxo/HZa5lYcKwwf7+m174QK8h/1tB386HANWscD5VCoOfpU0fd
	 JjpaDnvU8uUi0YRBxBVGkblCevPVA+gQLly6O4qA9guwAdus8sy3d/uDRpyLoxMv2e
	 Rg+vsLRPjUyzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E7CC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172385555363.4161.15275381736611733173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f40a3acd91b0699492d2ceb04197f2d5ad0ab601e686d6e6fb311545efa0bfd
Date: Sat, 17 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723855553
