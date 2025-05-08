Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3426417A2E2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746724194; cv=none; b=iA/q1WtJZRo4bfI20iyiPDBhvFThrPasnGCptLFzDhxd2ynNLU4JjtGNe/DXOG6xjx0hts9G7dvJoDQOGq1pIZs1S0a6dWBDM5gAFY5H1MOyXIBy69UPIDKm0F5PFG0J+sFASCkOcb5Ay6TDYHzvz7RITczfwxHuajAjlNm5b/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746724194; c=relaxed/simple;
	bh=534fyd9c5ITcyr670k3KZiO0lv3XhA/lJ3HGKwAEwfU=;
	h=To:Subject:From:Message-Id:Date; b=dL0ox+uQngv9oCrkuZ5DqnN46o2fiHY0koBkjzq8vlUXHhvGQ/2I5P+Rp+lQneOudt41IAMgOonIqd9WmIZLvpTM2enb3K5k+WaEiMZ12+JZU7m0pu0SlHF1EW0+8hne4/DagWtR06lHk32OShQQq0HVJ1pTT90g26sSka+ba3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gkzqu5ra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gkzqu5ra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED77C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746724193;
	bh=534fyd9c5ITcyr670k3KZiO0lv3XhA/lJ3HGKwAEwfU=;
	h=To:Subject:From:Date:From;
	b=Gkzqu5razJSgnUfKu9STOC3D+py9oirj+AdYnkepOrWirY9qijS7ly8dpSNxo9PHm
	 o1JAJfBeu2cXgUHlo19rSO4tLQPYtyrFXwZiX8ziZFLDp9ACAPP8/CpFF6VPnWX7Qo
	 jCMJ0XKsmoNlWZKuE+dMZuQ1DA7rkONLBE+1i5G+S1TxwZ3vw9NAgmTJBLnVBnWpJS
	 2tEq4/Xe/aUvyqbOsfTEDjRUphqOJjNZOyhvA7hPQGRf/NrES6aYT0YHsLjt6iCLND
	 2fpSzuPnxcYT1mh6ZqaDuPYixls+H58QAOKdNiUvVKRXkyKSZfiokA87OMsZvdP/3G
	 8CUTpwKruqO+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA9C3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672419357.28201.6579269654394217947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f1702f5b0412a528efdeb6f4604f431f83a0f836ab17238c3f6787d1de9080
Date: Thu, 08 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746724193
