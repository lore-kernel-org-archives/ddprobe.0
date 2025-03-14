Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370E81519BB
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741977535; cv=none; b=OUywMB7DDnKlXwDQvBAwoC/z4P3Hap2zW/xk1RCQy6W5367nAA60xTly5nCpPlacPSYZGyARsMZuZkAba+q8PuUCUxuIv7w2IY6OTlNDo0E0OOCFg7gELrIKzngIAbKk7thLMzQ/6IYllufY6X6dHJjZDek0/IhRZY0mmAJdjlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741977535; c=relaxed/simple;
	bh=q9GzDHotqVMfsAq31wfBrEsr1DnaepWYptrUC7z6gNY=;
	h=To:Subject:From:Message-Id:Date; b=jZ9lVgDAOGx6ay5tI6YwzMSSnurIu1pCJ3qzBHPT/hX7hRGlF5P4m9FZ0IJ+OiRi7LJpjN0FAhlXKCJEcqfM3O8mhkS0Z+bxj8mM0KSu7OrAC9NodnEmjPOheteOZWRmtuo5YJ53qFtGEWU9YQkDA9OKiDlQpoIg3GzS6BelEX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nxo/OpYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nxo/OpYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66B7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741977533;
	bh=q9GzDHotqVMfsAq31wfBrEsr1DnaepWYptrUC7z6gNY=;
	h=To:Subject:From:Date:From;
	b=Nxo/OpYjEHQ9eQtRTothwxUYV+ryDmvbPupsvdN2h/aoukVRy+9KR9KGxAEghNfJ0
	 iMsVctdJJaBp00mXSW/sszMncl9XgrjUW3EP07SFpOqLCKP9xFAJqahA9GVORO2Ovt
	 aizZQXOzjqk2PECcI7eF5yNKMs0PAR3bJD8FCAVCoe9pmceM7to+J0sxPEluzo4VXD
	 otQT58I6InH1j9g0LsAnGsfezc3w5iJBJaYHv0uWg/aXy7jOt19K1VvGEZpzI/Y29m
	 TC8caPImRbDDqXWmPbNF6nq/G3+aYj9hhc1hdGlEF2sE2VZ6+A2QYlfPXVnvgkpAEf
	 sFczQF2XTPmqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BB0C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197753359.25405.15625230364348835739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256e428d88347d7ba85605d502d1658a2e26ce1244458984a5b88f5ad8affe7f
Date: Fri, 14 Mar 2025 18:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741977533
