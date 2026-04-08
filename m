Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FC1284B4F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775675734; cv=none; b=IX6VXjkC1I/iJDvl/E5vTePKmt2JnHTlc9AZDzn9psULwDmDkORfnnRaJLi4Uu5Zg6kmGFgvD8dgc2VmP5vXA40IPsG35KnyiSKMGQQqu7peLGBw+Tql39e3p+EdeY5vzq/OOSlWeAwPYbBdHCheRwscx9mwCbg5a2uBoU1OnLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775675734; c=relaxed/simple;
	bh=6z7PbwJEZT7az1JEy7GAhNRwZdXiePA12wwoAPYZBxA=;
	h=To:Subject:From:Message-Id:Date; b=mP7TIKhdapwfKxFhY1nxgv92vSX7I7XuWRlOIiRi5Gh2Nrs7QcOz4v60lQBidhL14FWNUaHsf/UwiX+ftwlzysGueG1ikw4pXvy+bBpZBPBt3lGNrPmXUN2iJyIbelxId5Nw2QvC/q+XWWFuTvLcpCIkn9b96LvA/lfELirfL9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXutrVuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXutrVuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD283C2BCB2
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775675733;
	bh=6z7PbwJEZT7az1JEy7GAhNRwZdXiePA12wwoAPYZBxA=;
	h=To:Subject:From:Date:From;
	b=SXutrVuVgDq2Jmn/Rg/VqsMNLtsMzhCXGyhYn0AWV2w5zDpVGTPwWVMxdrn2fIWYF
	 DtvXHSt9MIZRJX6pr8ZjXmZU6uULohkehD3u+B8eyohkHRFi5cHuMrl5N3BGG0FSxb
	 j84Rz2RHSGvc7gSXd83armIlJjoPa4+YjXxrPfpc8ghdwHsr259yxtxDoF0AfqtLE7
	 2ATAzh16TWYMbtuI7l+cI7tNpvDG0wT6zdFW7EF8/AA9H1uATqjOE3SUknOV78pBty
	 f8Sf/VlhnAQUjEnSUFMGJiqB/7ffvtnK/j67+zzdVakXphPU9WvknpuFwejPVdOZcc
	 DFESs5vsbPYsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE3610F9973
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567573370.32332.12739065242709330635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9f0ed0da476217d3f84bb2f08d1d7ccc07a6fc7a714cf141e98745c36365dd
Date: Wed, 08 Apr 2026 19:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775675733
