Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9803E392816
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769050434; cv=none; b=nW7PRGAaQDjHFsb79Q7mX8EjDsWeW3t6+0JQVlqtK/1VwsCQ2HqTpUS/cvLBqzv5rbttT3avSP5twIynSpjQ/GfCVYCbYOe5tX55u2clhJ/0D7zlg0F0SfVvysVrh/m3sEKlYrBsErX91Ys7h2HTFu6W6Wth0I8GsTVELx7uZb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769050434; c=relaxed/simple;
	bh=BTAykgpCW9FFnjr8d2NK4z9coUvg5HACBzv3FPk1XW0=;
	h=To:Subject:From:Message-Id:Date; b=CNrgrLtfh+yFaJ1d850kT0JeFHNeXou6wtTJRpGg5QPiNbhRPFL2rPWnvQpH6jHevcUXKkDJa5WzvlWun6LTGSjmW5yfX+sVlg3DAYcUNwVrNlaJczjvowNu3aBgkZ9aMIiBknqH/b79WvZh6vfQTLB/qRILc2tf49jUt9KwDrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=np0I4YuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="np0I4YuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05DDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769050433;
	bh=BTAykgpCW9FFnjr8d2NK4z9coUvg5HACBzv3FPk1XW0=;
	h=To:Subject:From:Date:From;
	b=np0I4YuAWGEZhmiATmYcKBoaEN/NFe33HbDqxRlO2RwIloc7T0/OP/2p2Ru4u/HM+
	 +re5g78u4MQt/6o+kap4SFgQDe+IVabsffUkLJdvs879JhR6jnSVk6XBS79xBX3Wl5
	 bqcvZeruqURA+xvi+6U5+Gfp4Z+YtJYJS24CTaku7AB9zXtanbwulXR/rQweY4SJgZ
	 yPv4I1jSHZtVU1rl3XX/j7KdB+6z3Yl7npoOr1Ow2NBT8i+dKG9QvDFqYCNhRhjUeM
	 9df+pRJrs+hrwq3dT6hF7vP65z3wVXJsEN9oR6FRiKro7+YvzooRhsT8r2rocW1NuT
	 Xfx7G223oZrAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91435C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905043358.2896.5260113801737304560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6797ac9e763786f3db67bb2a89572ecc8c78029b19aa1832ff1411e1a7ea6471
Date: Thu, 22 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769050433
