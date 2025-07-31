Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DE718D643
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754002194; cv=none; b=nU/3IeXbUm8OLN/cL4npLEtVxPB1J5Av3p3hcU7v9I8bgg6lO9kc6tHIXNwpZ78Va9yRXIRLGHDSQWIHdFOgk5WhFm38faHzfbGqMQGr4V7fhPewg/bs6xvhlELyFZk79LeySdCrJhG0YQ9tke+0ScoaGfibPK2NiTzdKSugv/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754002194; c=relaxed/simple;
	bh=a9HFiqBSUhO7/VXAi1BhIxscb5Ckj1y+1kGXpezvuow=;
	h=To:Subject:From:Message-Id:Date; b=Jvfvqz16oPzeijgkDq+1f30DboSdo+aqjwgo9BMspn+RsfUrzSdcJjEYJHUcisxaqGGX0EmbAgHlgBMR3jTO1tNOKY/UF6lguqWbeV67fVTSKJYBuO22C8euwUGS571KT052NusOHDAY5nQRUdX8HFCbCRb5EuXPk2+IQbg7+HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDbW9UVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDbW9UVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA7AC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754002193;
	bh=a9HFiqBSUhO7/VXAi1BhIxscb5Ckj1y+1kGXpezvuow=;
	h=To:Subject:From:Date:From;
	b=BDbW9UVJVUxT1QjCjNSNOMgZ0cwqlu2DsTb507tINfgSTbCKmAkNusmmj7RmiSgG4
	 HGQOXCyAqJCpwKmyG0ShLgnkkmiUIe8AdqG0u8RjDsK7CI5kVbbVGFax8i5GdGQGQR
	 GIoteXR6X4pIsZ30XurK9NyaCJeejhqH48JdFwFp0XycNg+h1dnyHf0/nPt+efws+/
	 yYQIcy2oZeyu2zrV3sJohZ76UXOzeFGfofmpsry3HkR78Tyofhx7mX53mrdf8RSH2f
	 jouo0YJAdlWmGNmclhrUsDmJJqhdI+KjvPd/qq0qbb/UTYgiv9frgEaOLG6reDbo/V
	 9M9ny3oduljCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979E8C87FD2
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400219358.12291.14362168149290237976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee43bca9c7781b269243556749e57de5b9cdeebe024ef479df55dd565ade4bd
Date: Thu, 31 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754002193
