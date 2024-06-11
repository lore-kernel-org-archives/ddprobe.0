Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7C5170827
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 06:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718086103; cv=none; b=iVfcR5DYFw+hBc3BONE0KYeUUcLCZS6a0PJjGvA3bLQd8qikQCZVtrUCuGmjgtGreuu7f5uESVpN+3CDrcS3IteUcIl1oxqMVAqrXpCIbB8fdRfaJdei81jlnB82mUl1mc2IuYD/3r/t+/ShzZD+ShNte86lhWxdgRzNZSLvMvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718086103; c=relaxed/simple;
	bh=vM3O4nFCWcJou7i+3+ZqLFenziSXi3/XRlHRZEM04yk=;
	h=To:Subject:From:Message-Id:Date; b=ZU0V3tSrZQ/u5cNVCSnIG08uT0euA4yZhe03Tk2uDGjxim9bcOsJW16Q7DnKFyfHxbdsllLl0byHe1u9tomnAA3nr92VNpwYaFoOq3dR7MDtqzjWDL1azqqosNRBMvCOgMkL3ACas5yJzQ29PbbaVJ6fX7k44hHfOuHz0pAC7c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XImWnSqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XImWnSqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E971EC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 06:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718086102;
	bh=vM3O4nFCWcJou7i+3+ZqLFenziSXi3/XRlHRZEM04yk=;
	h=To:Subject:From:Date:From;
	b=XImWnSqPjiE3ApXbfd/UY3RtfMbf7Clj3zWMwy3aTSJQuS5qXfgMgjENNjfOCGZ7E
	 NZcn6hdemokzLMigZ5ZGP3908Wh21e7piGsEyI/Alc9jHis1WBF5tmM69nE8W56l2l
	 JCO1Xp2WAetMZsOxAemfpiQFjdiU8Pm43niHjF6zRuOef7KobxaCKW3AIlgBN9I15c
	 ddM2aIs4IW1eOIOQWXJmeGomnW5/DX54eDsF+39m5kJBBzObIi8UeYP7tNYpqUaZYv
	 UJIOqXkWRadV6SvBnlwk9cRCJeHUZ8RbzRYlhikGkEPTH0V9jasP+7ySyekL3Zu+sB
	 ESaPKYvdJlckw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D163AC25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 06:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808610281.17524.16639581229867859143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f22142e4c4715f7be0219087db18de24ddb4b949b24e38ff1c8b76f7ff0324
Date: Tue, 11 Jun 2024 06:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718086102
