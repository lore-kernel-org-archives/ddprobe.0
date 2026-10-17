Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B71332EBD
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792241434; cv=none; b=pS/CiEeUBl1KcMJGmvBWlBZamgd18Z0+FCM81HWvJjGxts2r/W06XpTsvGgoyIzanwrghnLlGHhNC4Zl243q3pf4UaK2BoHphf2TX50VdCXxNhmvfTLkpz9nbyuxg6OoMVX50BVeobBpDMBivrciSjQB9BmiaYH5PY+cPxpuw7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792241434; c=relaxed/simple;
	bh=uWc6AkXt4Vlb+E6z5/iXVCflmc1vjyzjnLLzJ/Vn/pY=;
	h=To:Subject:From:Message-Id:Date; b=QWLTFi9n/cvjeT7Kst1ps9zoC0Cx/we/E0KHpKR5iu/gIWRUeILISbWloP7ySiSJRG3CiQSAPI83he1GWo8jy1WVCI54C3UHzL0gZJr1S9jirjZM+bb5q6nSxwiCrOEZ6tn2aUSKxRPszq6UJXlQ9cYu3HUQnpZoXoqx8baXNKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/FEV/mD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/FEV/mD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16ACC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792241433;
	bh=uWc6AkXt4Vlb+E6z5/iXVCflmc1vjyzjnLLzJ/Vn/pY=;
	h=To:Subject:From:Date:From;
	b=t/FEV/mDRjl3HBVv+yk7k5MMKDFeAqot+AQEUmWe+t8FOkHd3U6hfZmYg3bvEFRGm
	 5Gnmrdkupvn0WZ3OZVco2yBhfV4MKG25b6DkcNjEsRaKr91xg6oL7R5wqj2+FV87m/
	 Ds24SDdRvcEY7yaTPCoKn1DGlNRcOf4s9JvZ+RIW5ykLiNyPyFwZU2HO4773n7OoTS
	 B5J6qm66Bd6hUd4rFdH2O7hdto2lESaI2IpivC1PPCVg4ie3lEN7TpAs4s85nmbXJL
	 Lystj2ChHbOYdVmLT0Y++Gzhk3/Q1k+IMYqmckEYakQfPl9jfQRUhl2JLV69A5iA+S
	 YWAR8KGhy54kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9861CCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224143372.1963.10262136859464426105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c11c567e35f187ea12b20d0ec2b9003ca9b35694541caa2812c2562209f9da
Date: Sat, 17 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792241433
