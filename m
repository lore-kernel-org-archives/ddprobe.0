Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230332264B0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750131594; cv=none; b=HMfjF0TabqP2vXeHoUYKvJvY1bmcKFFYcHhFNKt1fX58dZuuX3FAF+Z+T2f1TVjb9+aprvUrtsGzQ/7szX4NWp2gJroXVGp8l5Plhjors5aIHeguxnDBVmw5kqTUzewVBNe8UPf/yrpV0GvrTBETVawMakybApWuqQuY9pm3YB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750131594; c=relaxed/simple;
	bh=itwoRFa0iJpyxnMHxlThgEE8HVaYNHAnhlvPAgzkzSY=;
	h=To:Subject:From:Message-Id:Date; b=US9Etg83EJ/KppNYL+mmrsYfarvcv0XPCGj1keqKAcDls7PAH7T/OUzP+KOFyRj1f4lYE8acYbrbjr5bh42vM3TcDQCkM/GBjs1f6eB+fFHoSVdDYGdNXH9epsFhExlyqfUIV14arycsYw5+f6wR8YPOjAmYf+kcIEmFiBI+o9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDQR88tV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDQR88tV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B384CC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750131593;
	bh=itwoRFa0iJpyxnMHxlThgEE8HVaYNHAnhlvPAgzkzSY=;
	h=To:Subject:From:Date:From;
	b=IDQR88tVA8RyBgKl7CQwAKJ8HQH7porkGB5uaCjedsTWwaKgoxc0AlEZpCOqyai1Z
	 JVM8Ngqt4t4zLW4cDFehNmYWbLiAFzDxyP02Vq8IrXTcqOLVaoomz8IhRsE+PMlFbe
	 zYsDJN/vaSUScjNAFGOM21VogNZ0bf/qO/uom3GZgHQ0x9av0Owjb0ap8taGtERYm/
	 fhgAtI9p9Q9ZHISASSk1tegWTVSmG7XLZImVodkOixLmpdGn9s5XaOsZ2h/zIWisxG
	 N0iIRcozRGGK7JqYBLOUGh0+LrdEcRsfTiaI0IVIM87mYLhVpomWIbDlFCMTwssBe0
	 +N6s4gXWSyeXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6E3C7114A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013159363.3672.3767296014932940633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85dba5963a536d58744df825a66a4f3157f41658823e8251c135a5e72daff674
Date: Tue, 17 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750131593
