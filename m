Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192C641A57D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787298634; cv=none; b=tO/g9dko6E7gQYTH9xjHoU+XMRufk0YgInXYJKhJDkiMF3IdH6wdAvLIzwM6Zu27mDOgwakIqxrnqlnqLPYnoxsxGe5KVrgwWiAUw55qMm0zYFmV+/DOIU7pWnEolXcFINyVl5avzfexce0NzAUjnHpjkyRasRHHMfmdQ0wl4ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787298634; c=relaxed/simple;
	bh=a0ux9VAT+nNkM7Noz9VEQUS8MbirOJLyzM0j1/aeeU8=;
	h=To:Subject:From:Message-Id:Date; b=cp8us3XFOia4sE8wSj35yDYsjdXB/89TBMmKonC/LKF22xFLG4iqawzF3VPFvEhqrp4h79mfscEk3tgQJYvgSpT/nyDFR8dzsQQ7HvfW1EE+iy8WjgSmsK3ZynWHfGRpjvuc9rxndpy2V2m41G3UQAdEo3gPrKYju59SGbzqG0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNhgYl+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNhgYl+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFACBC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787298633;
	bh=a0ux9VAT+nNkM7Noz9VEQUS8MbirOJLyzM0j1/aeeU8=;
	h=To:Subject:From:Date:From;
	b=lNhgYl+UV5vTkGSoMPokAHCfIup4gu4/iwKPNR6GcF0Fzj6kVa0fVRHbxw7jVmGke
	 sBF/qQcPUYJ0KDQA6fUBSfa1i6UnZgb3zujx5lSDH8aBH6hdSXfkOJf5mXplexgCK4
	 ak9Eyn4Geho9FhWVkniIE4F2zjLbB5wXEwkKanLHPJK8YXFteGJufOv2PbY5iGd/qp
	 GcUZPLlNWSbTb0KXCabgeMuvU4ubVa/y+UyyEy+Xnf5jOi0694T8h4FMt12QYP6lmj
	 ZtdmWtM8+XiepBdIqA0PGd96YOnVt6u6H2ZOBiFZvxHTlLIN1o21PujmVHyrDOn/AC
	 q5U/C3DN8vuWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD66BC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729863369.2216.15358681918315110992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a5d1fb4fbecfbccf9a610812d878807756aac21038e3a09f6b3c0eada7e73f
Date: Fri, 21 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787298633
