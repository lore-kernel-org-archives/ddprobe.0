Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421024409
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755412794; cv=none; b=BL8hx0li2gAG43qGidkiDVF7iIY5bPfQqzOwafGsUu5uHz5wXIh3QUOHop+uZqj5/SOhM12ujxJnTkOOfj4IIHkBMTYHr9VD+wm55rjsz/S+yk/2ObidecMynbpshSRKeMwam5FtgfgGP+AQHfZMrldgN0cvUtkXxLmNN8C8jG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755412794; c=relaxed/simple;
	bh=DRds+zn698P8Eu8X6dTnOQscDwVPFuoWebrt67CnvME=;
	h=To:Subject:From:Message-Id:Date; b=ZhfBMBYjN/Tw2qgt//h38KnVKaYtREwLslzRzv16utZBGtlUbkWjjVXENIDfBMVcQR14/gTq55Cqlssllo+vOoPwpoAILpZQ19/UjdaEjd/We+AIYniw6VLCctPJ4VNz0vAo6OauYp5ULgEY5OfhQDhRNhXy76WLFiiNgou68J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCjAePkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCjAePkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5321C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755412793;
	bh=DRds+zn698P8Eu8X6dTnOQscDwVPFuoWebrt67CnvME=;
	h=To:Subject:From:Date:From;
	b=eCjAePkPTynC7WMZcPHAu0aNme8d3V2dhcYwNdWz/CFm0eqtrLJMxuKDaHkiVYacc
	 b6q7NhYZqJwkmg1bME1A5Q5tRUsP4lle9G4jqkZLbYRsWOO4rtBhVR9EfeeEqoQSyZ
	 EW0AxlWEFjFLGllw9jEBdEa3YIg/AQwiDQvhg+PdVqV+6mTLd/wu/mhD3t9Asu68eA
	 nKhgamKrp9lhnmE2DqOFXBg+iNmxSu4cbT0Mi6Q7ywj4Ys2CJaJ8+JvWSwriRKWidQ
	 RCDdYqxblgKTm63hbVvPumV/Pr0fySJojojELt4Z6r7EMuuufLlktubFPLVzNGHwG5
	 k7QzPudAkZPpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91869CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541279357.13690.6909198346581387889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9979cb8eb1d04f3b16bcfec27e4fab5023ccc404e683fe0a301ac87f0dcd5c25
Date: Sun, 17 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755412793
