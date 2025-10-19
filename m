Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6EC224B09
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760868594; cv=none; b=H9DPozlbbWP1p3DsuWlp01o4lYZlKgHLDgqRf9nTZQUAB0WjJ1hfrtbFL3zLuwDsnAd29Yy6AtHZAkr//r6LiKLVs0A1MMVDziA2SOE2NE7iaZq9430FCPHmAHEAUKPpqKh2A+FTRBCb2qAvGwP1UFIccqwqZbS/SEVxrAvSQMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760868594; c=relaxed/simple;
	bh=m4gXmdZsjaImy3S4NOT9p/u6pdWASddK26dxFAbpkGc=;
	h=To:Subject:From:Message-Id:Date; b=QJd7BUJ4bS9EO9vb0H0jy/lpnvVq9mv7dG9gshprHO4uUHa32EPhXYO8zn6iJXEeu4nIOFzucxSxWnSmBkmuk0Ww7YBtTnYlMDIiuafOuoTfMRMoVJ0I2rAAmPE9i3mBURlAGPDr14hkFLgWZXunHcGD00zt0Wc720zmCKj3lIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oderCfY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oderCfY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DA8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760868593;
	bh=m4gXmdZsjaImy3S4NOT9p/u6pdWASddK26dxFAbpkGc=;
	h=To:Subject:From:Date:From;
	b=oderCfY9AHpZpeIGmPftsHSYzi5wybj8ycd3CV0Xb1hNKIPa3gTO8bF6uGghOPI0g
	 b1DbEqT6tHG9HsoSdOd4JZc5NDtViWKGf3ARVzTdk0/OsT2we33PZGdpeYRXWCTni9
	 udS+HRGORMR4segpU9tYDkX6qCpXJdG3ZecEff2+rBSodOgs9VreH2GV6HZLs3jvN4
	 VPtRUxTnncQ5PMP512AbctwFdDzT49Gt6kucV3SJhU5b0p2SlPFimdGBhN3L1s5trj
	 gWbs2itgkW2ZbZ3ffSAhc79N/X5AI+ArmKti7jUFx55ueVhNiEct3RZfXfsVJehLly
	 57a5AjuGSBnTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E50CCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086859363.25131.943719033678443105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b9924e62d9b4c8ea33dceedaaa15e4548817e72e5495440c1bfa2bfa479fae
Date: Sun, 19 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760868593
