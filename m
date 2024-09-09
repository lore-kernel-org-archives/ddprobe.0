Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A59918A943
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725915354; cv=none; b=MaMH7ugLjmSt4pafXt9PWJ/xIeRtyF3lv3JuxXQgU1ZoGs+g/ViyP1VuB5T7SJr1khME4tvge83mH/FqfDAwR0R2TuUrqmm4aYU0WyP4re6Cfw7Be7tSm+anyYylu2KKP0WoMy+G+l3WVJUCG0npnygZzl/ILe/cyBdcMOs9Cus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725915354; c=relaxed/simple;
	bh=5eTOMTQdeO6uBTHIsXd7LVO7u/WD7vk7TA5IN7aYkyU=;
	h=To:Subject:From:Message-Id:Date; b=MZjx8Y/FhaqiW8MkLzqc+/42DaL8vuW3qusaEc2nWb0wtvdJM33J5hOI/R/AY1ySjBmA3+ZXks2gSEIBhLG0q61cq6m4mvO+jjQtkIL4JlGHF0khCy+hXpuvI6n4yJwxLQFLJozi4YjWYvBu9goJLXbMSAJKT6nwBPjmLdBXuEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTPP5xmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTPP5xmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A484BC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725915353;
	bh=5eTOMTQdeO6uBTHIsXd7LVO7u/WD7vk7TA5IN7aYkyU=;
	h=To:Subject:From:Date:From;
	b=QTPP5xmhMYVqIB0IsO3Kw/F6aQyXs6XgIrPQPmn8dx8bYEGvmdZ36J1Tsi3uBiCsE
	 qQWKCgFTLMJOe3Ea341EUNEusul0DpCS/eWSZWgrYI9RVIaqdGogzF5SfqG+AXkKoH
	 UyxEiuueTYm/qxHEsYwrA6U/C30IeOb5I9qCNpmEhFAtM6AptNvJO3lgjcfC5nbRC/
	 m8aRMN3dkzVqLoSSx4rXfPlBvwh8RGsHD+LdMi+3pYgd8vgXJ1fLUf3gXxhC1TqaP5
	 XltlI9x75TdKzUHvMNLEhPkBLLzLKdMEn6CeqbuFKcluZb09M1kRudyHcBh5gnaeRJ
	 8e0cbYzK/TBgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93383ECE58A
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172591535359.29711.3493907950890527194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2f1da3a2df23423341b266c96e06e192cdbad2d915bfbfa7636c353a05f18e
Date: Mon, 09 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725915353
