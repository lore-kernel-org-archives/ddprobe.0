Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164191F937
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729376154; cv=none; b=qKUTRKOnGgpIAxK4zv1Fch7lR7Hh1KSkaHZ4hbINlbMZ0B/PKTEncQ6+cBx2npalIINdYw7iQNWxd18um+uS/QVrxY5wSSdsZdfu2IRSxoAtm0EophE2aB9GJFUQBjcdJrZegXpftENpNOP/3c7GEfvhVgMnezXc2A/Fd8/+GyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729376154; c=relaxed/simple;
	bh=LveNFy4mXIhGsvpgGN7kO9UopqzhMz5r9QZi10gdZ3M=;
	h=To:Subject:From:Message-Id:Date; b=cMBpDtz+JJjlg7RqENZ8y0ixZI5YH8gROCsnd49CW4HqMraKBVcvr3l/w0fOpVZiwa4T0dNxXkjnWhUjn3sUUonxe0Uf6W/338Va6riOKueYyK62VLe1UtD1R+3W/pyDvbZ9gyijCd+UHivKE2Fw2uH8lGNPfHLkz0dInnfB/6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1X4odn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1X4odn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD2AC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729376153;
	bh=LveNFy4mXIhGsvpgGN7kO9UopqzhMz5r9QZi10gdZ3M=;
	h=To:Subject:From:Date:From;
	b=T1X4odn0W/6MWzHpt4cVVdBrDoUM3/9DE6ZXf5/Bfhedj+AE3w40aa196YouMgccO
	 1RVvB7qLNAw2XsShis+xbccWmel4UThLXlXx/T2YVFEAx9YK6k+oYeBaWgt4gKmEnz
	 IgLN3Q1YUCxPrvb9AeBS84udmlgKvlW46ZafqpARz0i9aO49U71rwNZpBQw+Y4NWAs
	 cOYN04I5h4lsBbshk+SODzk0jzPvXkB18nO6E2iWL7sY/2+v1XlOPLxX19Of5bRjEc
	 gbvYshYia0jHoXfssc8HjbHlDEumWRHLfLnVZE/HjbV0dZMQMsXNay9u0wx2cCVivK
	 Gc+3Zq0QcPl2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949DAD3C92D
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172937615358.25889.10137786556448898086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f010dd94e196bda93d12c830438302293c308176f705d7cf824f65ca1fc92dab
Date: Sat, 19 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729376153
