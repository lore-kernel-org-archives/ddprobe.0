Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486BF33C0
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714462343; cv=none; b=rgNduNqGZ9DTMA1OhTcTcOW/aTBXVH2ZgunzbrgsyrxiTh0x8jH9grfJjX/vYq5Fex+eUIk1mbTvTdo9znxDJUYU5k+ZBpWb4DBfp6VBb4mBKui9GZFVNJUuJWesn9FBVfl10nyO3dzw16PNiZrmN9pfFtBVEwjWPg0M/PByM8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714462343; c=relaxed/simple;
	bh=Cr02IAuRdeV7ik2ROyD37BRBltJLs4JVmPk6JjgShlo=;
	h=To:Subject:From:Message-Id:Date; b=iqvSmhWqBHKGT+PkUmxub6Zyna87mu5aPxr4kBtG83VV5NWiDQ0iVdfAH4G+xtBh3HJPG+dsCKG2c7YHVL8sOBujb0o+VXe4zBBUwkV/9pr6UVjTm81SlZ9SHXFct1TqlOyxS2FifIfsfDC4yYDFlL6GFDj1Nn5KuGcBazNYZFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMfcOBc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMfcOBc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D0FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714462342;
	bh=Cr02IAuRdeV7ik2ROyD37BRBltJLs4JVmPk6JjgShlo=;
	h=To:Subject:From:Date:From;
	b=QMfcOBc8Vhnns6IPmYxxjtxxIyjcedRppx6qFhY8G2Rclau4dV2B5cAMtESEp0zy+
	 iN9CK+Fuw4loup9UncS9wWpQe4AokHCiKPHwU+a89m8A9+WIXB5y7t7G8cVfEyRl2o
	 b/y4ZhGNvYSXGd0RYkDV7nuqaPQ2I98eD+/j8Ld1h4NMmEKhEYDh7rtFYBOQFn/esd
	 0Suq/6feDiVGJOPd3Ftb12WDvVmy9lVMn6lJH8HOLrPxa6chrAxxQiCgWqSXs/BCJ0
	 pqg0bb3cLDNQvVUqfJi6vYQJv+zmpHfDzwmhW73BMzYvDk+BByaVpRPx04cqog4teg
	 wRZehhYIbypMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33EFC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171446234278.32442.8303716532492908692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86e6628d81b78b80980c41bc7b18103bdd54171bc4c5f41ab13467f908e5f03
Date: Tue, 30 Apr 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714462342
