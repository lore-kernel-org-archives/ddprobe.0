Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CBB155A2B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718130503; cv=none; b=tuUWCT8KudlFNPrq7TkYSA5ooDeI7m3NNVuHm1zviY7vTwYquHFOVngJoU10BgfNl2APc88FBZfKhnNljLJfqplLj3cqLx+eFSvOw1/o1SO9Pd1bntRhGOYANDEsWv4fRZgC9DgluG8rxEO6SDv/1BE3+Kb2kH3xQMZiEtW8SlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718130503; c=relaxed/simple;
	bh=QDsDznUD1FiknsylkkqnEACjAY54mkPma6WVuUvISck=;
	h=To:Subject:From:Message-Id:Date; b=jF61F/008tBJCYxo71aeXjjLJ3aFE27yQYdT+3OynHKpCZNaBcTcPQWwxwXExK1mLnU35LB0iXKkI/YENkAhPtSShxcYf5yoDnebaTDX1ylh9+e2v//OWanF3h+nsXGMLr3YLde7ttiNwss66w0PN25v2yclxf77xLgRoxdh8EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+grqSiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+grqSiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2097C32786
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718130502;
	bh=QDsDznUD1FiknsylkkqnEACjAY54mkPma6WVuUvISck=;
	h=To:Subject:From:Date:From;
	b=I+grqSiuviOLDRytgSpLa7Rmd5BeiZoTGoW/Mlnpwrwku36DnQjlbyJT4l3eO2pEG
	 N39fvIGv92KONgSX+uyogLAsou1NU7WfgdBfOSl1Pgirtxy/9EWRSBYLQ+QdLfgn6t
	 5TnkiPR6tsRef10l3DYC383GRX09ioGlgZGvzbEhnUG0z7/YEtjOrelJgOuPqt5DVa
	 vswsXpXVw+WURM7vtc6TFT2mVMpEMx+ocsZtgAJos+UlcTlP74WIyf7Xu15MXC166x
	 dN1StflQ2+oJHuCBheVE91vfOlCV7ZiLfd//luMzDjS2Z8WD8qHR56O0p7SLDm1OCK
	 bb8CF5cMCmB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A8AC27C78
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813050279.8039.18363700253964748011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7b5fa0e687134415e001a665428e617cff8e743d2dbe536a09d4465007016b
Date: Tue, 11 Jun 2024 18:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718130502
