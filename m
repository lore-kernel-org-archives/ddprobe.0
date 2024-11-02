Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257CFA930
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730546154; cv=none; b=j5N0uyqinPRBD8yD4xAkYCDPeM+rxbISPILvFfBWbWgR+4UiAYnMDZ9zzaslqrb4mOPKAJ9KuRk2JsxMYTDy8uGbkTs8Ao39i47sTO3yazM3gfP3PliziGchU9OHROeJKsce9UtbvcymDGQ+qRSvWB96S/VD//ltdBIofra+I1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730546154; c=relaxed/simple;
	bh=gltkpIplsR8fAQOkODgBNqY+MyyswHCPKDfoU9e5ycI=;
	h=To:Subject:From:Message-Id:Date; b=Uvpog9k7tFPlkUyKmM1WTIw12CGpzQ8+RDAApVb1NTr0X7UXN1fOSdS/m15WE4JTJfqsBqyjoIeox/F2DWuhdVLidXpd3rc/tWFbuuL05guVrQAfB/RKcTiBXWhSxwnL7TK3/8UUV9dAXzU4YZR6rYm5MHtroNUr2mJ2iyqFm98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOSEsAgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOSEsAgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37BEC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730546153;
	bh=gltkpIplsR8fAQOkODgBNqY+MyyswHCPKDfoU9e5ycI=;
	h=To:Subject:From:Date:From;
	b=pOSEsAgJ1/7Cv6Vr1LjL3qmgCRDP8aP6PiSiOyaErLqUysTAnBPwvIDQ191De8MhH
	 8D5p4IO1M00KzhNHxz1nCO/9PfDNw9hyaTCAOk/BBGBcvyv+41SWxPvlOjHFt1/ABL
	 UKJeuybFyImQzPZsUaTat2MLnNrchOWmGpzuPqkUw+gWGK/G20SSwleouF/PR3hz6Z
	 OChu2R8UReV8DVdx9gfVGH1hRtiV4p8N4mN7KCE4ROP0H1zsajyNJH06gy1tNLaEEP
	 Cz3kOz6LisYOUWqI1cpqF8OdyiAyn7MAgHcEwKLxMb2prVsNXYf4oVmHznO5RDtzBQ
	 mygtnbtnWsDxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97795E677F8
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173054615359.22083.16253504965253822973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed4c22fbb446cd14aeb30fa56bba06e0069ce6375c850cfd38828444633e564
Date: Sat, 02 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730546153
