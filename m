Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C9334D4FA
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775718334; cv=none; b=hrdBS00AO8pfqitXB6PWTBuMBAUaE5OdpxiLajCN+h/BmOHSkOMs6oUh+f5bIf6QSku9dkHb/rFbu9EZ67UMYli4O7g7CWEHV702/1ky2JJ1I/CJEtFtl40r/LbK7pFcL+bSVZlfWXpO4SOJhZ25oqjo/jePUBapqxnJW+NnnsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775718334; c=relaxed/simple;
	bh=Boc+xYYOXx43A4cy7N4Mjn1gHBe9nyT5JSMO3bQgmI8=;
	h=To:Subject:From:Message-Id:Date; b=ry1jr5HLaErX/8931aCm/rFY+xCtVbtNe9mG8kdOEyBKlI500t676TWVEb+OGEbzSRhuxJCurOLl4Bb7xfj2jw6GaNOPSF1UG/d4QGonrHoUaDWnsUCdD5TiJLeN640/e7HiK55TX1SkvH6PQ1j4RnGS6M26zJMHuucfO+/T/ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fq0TfkNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fq0TfkNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C849BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775718333;
	bh=Boc+xYYOXx43A4cy7N4Mjn1gHBe9nyT5JSMO3bQgmI8=;
	h=To:Subject:From:Date:From;
	b=fq0TfkNSPR40olCRleW/Cd78BCtBDjig2BCYe67UCBj1hbKLcTXoic+W/t3ILwdX0
	 Qw1C/GwCrULcKBr9Yrq4fghwpgnZVBZmb9AwQOWdp5i1uCOlTQBJap9RWgFE4v9+rv
	 9QP8BQND7CVplSjZiFwx4QOzVt+sEyI/lgWpm/ZbgGdPlamhRNgg4bMy4cY5HGdcbM
	 Gx58kyITqR8lh3UG4m+PCydfDeW5GLJZ39RdAO5hwzRvsyPbTBwD+gbtLySJiUoW8Q
	 vjyAWOM+T4ZLYJUXIYVjIp6w02gKDxjbZo+b/IkUy4+IaScQRwe1mGerVDxSJ+Y/VU
	 HrD8fvQvfHKmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C15E9DE41
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571833371.29629.12827008299852961280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b109df96e81cfc42a3b225ef7e43a8ea931e7d0695afec72b59666cd12d48e79
Date: Thu, 09 Apr 2026 07:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775718333
