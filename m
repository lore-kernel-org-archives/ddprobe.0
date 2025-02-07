Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21D0194A67
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738902354; cv=none; b=IWN8845eh9jkiPhgRYzwLg04nOKinVmwskzET2r09wTFA+m+EIirppJGCmGSve4d1mHS6AYVKzidc4rZ43a923SqnGbIK2NObpqm09qADkxd8vWoqP+sOyAr97epGDZKFqFv69tuurXtfpj34EO3V3XkdXPHPPpX8lwpgupAtVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738902354; c=relaxed/simple;
	bh=J4r8n7rgaFp8MP58XityZnoXdLh0sOSL2IWDVRLGyms=;
	h=To:Subject:From:Message-Id:Date; b=Fy8HJ3hVa2QWm/8vpBiNKFmWiTrgiEDcMoly70ts2tqvxb1yTEFRwNTBznoskK1NKxlR7tfEwducYg/wFCY4kI2QE3QZtdm8KmU28Z+U/ZePfnmxR1LrkppVYgXctYfqwhjQEQQAyvqseT3Ze5nKAWnh/pRBmelz/Uxmcmkw3iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj9OQRI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj9OQRI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD58FC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738902353;
	bh=J4r8n7rgaFp8MP58XityZnoXdLh0sOSL2IWDVRLGyms=;
	h=To:Subject:From:Date:From;
	b=Jj9OQRI8voMzK1v8FdJCxgan8T+xjn/rQpJMgNqINXhfxXTDmPrNjPJBZNnuxcOGl
	 qwep4H4h9UAIU7ASbvFled2k3vM7z7v8KNDx8Y+lJaErgy4+W9x8OZC+Pd8HFRjS9+
	 r/5v3ixaKJGsHl1p9N43pcjx2iw5CimsfFPlf3R6L9GSnitr2hA2qWPK4voyD3dcPu
	 /VAfyPP2tCRsMPK1pSL9J2tSCSyIKo8wehdimF5Sx/3RKjmmNkjRA3gEKsOBgVSiTR
	 A9WeawRmlaeauWpUJGiFEt1PxU+/tjtnqZJpAEH6wDc7ETcohb5UdeMTluyVYrkCkO
	 J0rfINHLvt7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8B7C02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173890235361.7563.16619068192637227112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c2a412920f8d8014b272ee1f3b3ad46829fdb4eeb3c1521c3f3f211b67311d
Date: Fri, 07 Feb 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738902353
