Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8283D5679
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780942474; cv=none; b=oD3PT4m1KFbni8X2DVYALccU/pZ0ZNVYS/pmTC8hquwQPIQ+Vev+BIeWdQTUMgSPCObQeu7vuy8E4qHe0ohubxeLff10dU7nauLRjDrMD83ioZFoal5VIEEcm4eboAY4v/JN2llOtsBkg3hEn42GWiiLFzU6tTaH1jkrPzm90nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780942474; c=relaxed/simple;
	bh=OKIWtAnaf1Z/KCcp8VoN5Df3xNIFcesdQ4ClYqOjiO4=;
	h=To:Subject:From:Message-Id:Date; b=lGyIH4AXMzOcjTh/jvR+7jhGlEksmbF9A57rFkfpaCclazNXfQpqO4OhlBazUkJYI3lLuuEc3nghHO0EyS5umMXuVbUx7UKRYh2NBzEwWgF3p0kmB0QdjaYz2obx0lxLqOtz0h9gc7ThJUXvzFPOTkLqPZuO+TPxEXljoiLdJWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRkAJkY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRkAJkY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EF3C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780942473;
	bh=OKIWtAnaf1Z/KCcp8VoN5Df3xNIFcesdQ4ClYqOjiO4=;
	h=To:Subject:From:Date:From;
	b=PRkAJkY82y5NN3KrsrXRzpVIUk9fUhOZ9QCnbtlOdZIdRemYQ2wKJKcrIPtbIjwfT
	 HvVEHCp2bMiDOitvgy8UOV43ocFtsbvIB5ChY+DfwyQQknMz06L2fPereZJOnLecoF
	 qSBABeYiRdEqZq3imNYz9HjZZJ/SHKaqemMJmTf1gsCcQ5ziOh0Yx4eqd/CKTQfROh
	 sVbutI50K0e+lcRULud+ZgMRPjKBIO6LJMfgT8IgZKTFXI7p1GUtegzwplbMtOhBaq
	 U9qfZGf7VWd3DeczOQXKuSkfhTwKq3re8IZYEPOXDHL1WR6s/eiqnX3eyomTjBD3Uf
	 62NLNiScRLBGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5007CD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094247371.14210.16073303431598248410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a092b8913e7497b5761c6b46726713a5f7ec928dd150d451484812a778c6ae
Date: Mon, 08 Jun 2026 18:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780942473
