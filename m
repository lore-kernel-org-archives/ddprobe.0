Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3244023DE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751096394; cv=none; b=eJNoH9gBuci27Xy91LMUHSJ0Lo+cWKY8zUPVe0qPxK5gi6XoWAJAkNUb7idQ7WKUfdBgnJftYjvl1kFNsmq6+0nSnl2yipF8RmytaQukkUBC5YUj9bI9x4j00WsoigviwqlBByOSXkbslWA+nvy86OQmeDiyW6+5T2DmBJvFvdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751096394; c=relaxed/simple;
	bh=/UcpegEb4sR2TQ4alPF3mdu8gk1/0F2M1LiRbr2IEw8=;
	h=To:Subject:From:Message-Id:Date; b=TxQ+DS1r+mseAfoOpwNrRQoDhKSYCGC3sFU/WNzsZjG8Oknga+zFyEccCpERzv5pU50Z26dYRXUtcz3y1s21QWrVz6W1/RFpy0avehqfMHAJPt9jeQdy3rhe48yPntEgtIbyH2n5H3qKxH7FelNnKW0ddtRIa/bTjEIVD7IR1jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKhGVkVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKhGVkVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A250AC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751096393;
	bh=/UcpegEb4sR2TQ4alPF3mdu8gk1/0F2M1LiRbr2IEw8=;
	h=To:Subject:From:Date:From;
	b=qKhGVkVGgglxU7j115x/lumUAucbnTnZjHd2prNHsdVzupC9JWl4NDd1sH6WZ/I0L
	 g1PT/jFePyKF80yBNRIPFyCkXKPflKe04AUGzsWHU0GYGjlfWz0sV18EhTiFimR6UA
	 n3b6oI1w9NF5bAzrSukXv93tLWxm7CMv4o7+Ww8RuUwXgSSQSDl1L0xetMYfhKrdvc
	 NCUENRmJCOJAJuczKuBZpINixht5MhDg6gPmkfMvZrTllw/ysXBRmBkUOhW+WfjrFp
	 lpyWdCcPhwzRn72KWXJ8piKqWr3VphwazMxissduoGqGO5Js03rM6LTkjn4OzKoZnI
	 TD8BKDAFXzhgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA64C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109639357.19863.7216318483032364565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5af1b939edea490de2603ad435cddb9a30ea3e2ecfe5e85525d9ba41882c8f8
Date: Sat, 28 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751096393
