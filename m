Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05196356A0A
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774460094; cv=none; b=Uzya+ZGraXnFccjeV4KUq++tu8MffeLODEYx732fujDM1A12ENTtg62GV6utP87infVknqxgrhhwrncZakODMIodVrBpNAOvhDeh1KK9OYAwwgWLWHeqZ26wkc4gbOBicNSW/GjslPbswfxAHfsxzA85tePONLvjn3C8heQWrG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774460094; c=relaxed/simple;
	bh=WozCjjC2IBxh+m3OUDgilGj4TYoWsZoh7pJK7B7nOCI=;
	h=To:Subject:From:Message-Id:Date; b=Yf6OjJHqvnwZ7llqYDHSZmFZ4rUp3TcFCJf77CL6K0CsoZMseyMPSJm/U7JJu0C8cyW0SRYkjydtiZwFF3bsHWzeXmyqtXUEv8f/nahtlNnfU/G3HFu2zXoXZ5InqUOpcX3jkuEwEFuFCLWdAcyIltGhnfmlAHa15PvrT11PH0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIaZRvgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIaZRvgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBDCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774460093;
	bh=WozCjjC2IBxh+m3OUDgilGj4TYoWsZoh7pJK7B7nOCI=;
	h=To:Subject:From:Date:From;
	b=AIaZRvglZbtz4nuGpCx9+CycIoL+qIEz3CEB/+ZxAWJ0XLbuylb8Pz0Rk0rf5Wvbv
	 5frHgPF3uEihRzEG44QPDVr5Rd43vY8JXCuuBYjfipkWXTsbSFEfq1G3Xz3gDLC3vF
	 gos5VpwY4rSZdG+NY3KTAeW/9XQqFlTOZSmQj3e5296ypSrINruD4hI+e2lGeeQkN9
	 Ag1PI5DwlVYCulpF8vZlgBl+cKhypTEcLdXyc391CQqIHtri1jwc3bQbRmv+guXW7V
	 VSuWXgBQRrtKaZPeKYE+f+M9nNSK4Er+JVSEG1Eua5NH6y70Ez8M/HGsi84EJrBC9c
	 88BK1JQrKFVhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D3109C04F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446009359.30596.9061857395201261752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f8986d014f7d774cb1129d4772120195f2d8a89b3ca0a061d7449f85353fc0
Date: Wed, 25 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774460093
