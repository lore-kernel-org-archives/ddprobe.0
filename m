Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEDF7E765
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720566983; cv=none; b=p6AyTYED50ubT/M/SXlkl3IPtlo/QETyD1+aEx6J90eamUPbt6bFF9zoNAxRKkjG4sbm7LAu4kdg7/6rFZHff3wht1iOszV5f/y3KQ6j5e6na1VE3bMwV3BwYuWIdr9Dbrd5AwD5faAwMAjyKeX8C4lxrRRrpSRluBJVKZfF6xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720566983; c=relaxed/simple;
	bh=YmxGXW72epj68yZeeiR5w0SSwYcH7I7r3NHJVoioaFI=;
	h=To:Subject:From:Message-Id:Date; b=lHhLjoBlySN13hlIhS9Xhz5vyNdvruz9edvPvtC/D2bcbAJnxB0UIJ4crUcQAyKuxw++w6yVW+bmj9np1TCdhRHSRSGZuPtpHK79DKAxHDyfWnJWRXroSl5sZ2getRYk4GKbRgErZlev4j560wv3+XbbqiYjYeSJOcSUP1qSX8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoIDXecy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoIDXecy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB32DC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720566982;
	bh=YmxGXW72epj68yZeeiR5w0SSwYcH7I7r3NHJVoioaFI=;
	h=To:Subject:From:Date:From;
	b=PoIDXecyMMBdfUiy1r62jP2HXMV1WkJhBIO3XqyY4dve0Ed5sB0fXERy6L4eqH/SG
	 7Ynevjx4fxd1zaa3Ob5AuR6KOdp5/C2Wr9yvOJeonP3lSS/B+fhr5sAHuIxZXqgDAo
	 p+6vr0GhpmetRJXQhplPMSvF0ef/c7E7wLuZo1Nd+0TABPZ/xKaqsmSX6qLjsAsL46
	 FxN/CgWV09msKFl+sNxmMx7KWXT/QggQQhnv87S0XFeuMXZX6LzJggwb9dwRSEThFS
	 h2lhfcE9QxNlP20LkC+JsC3Rhyop4CUAsL+FV31rAyC28Nnf6ha2jOiBPMozv1+naY
	 RdCK6Z5gXymmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C03C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056698277.16649.10954839431033520559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df3036c28ceff1f085bb9d8d628c126a76116e7a65f8c158089f20e934d5ad3
Date: Tue, 09 Jul 2024 23:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720566982
