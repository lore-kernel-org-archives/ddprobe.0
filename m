Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B84A40DFA5
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775003094; cv=none; b=nrybxzU7QSsyxTkTMhom2wuxdBCsLeOSzpefHoflHeF1GMBdnaY0DZN1myCigYy3ve87mURb3w18+xhj8INCZ6H5E66wMUqvPnZO+fLYVJqmf62NOzNYdjH3dXc/0549D0nlvY4IGivF4p6vBnrJeK5gkk0DKOeOiJdzufB7UFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775003094; c=relaxed/simple;
	bh=rFFovjCvAH+vjx+d049M9zr87qsrjim1dNsYRhGtX7A=;
	h=To:Subject:From:Message-Id:Date; b=en03L1w0oSDqQ1FBWa4m0kbBT0k7+kSed7PMzU1DVyCmKANWY+XhxGT2j4QQIzaxLUxx+jJT6Hokq5HJBktZnN7RFq88OfpOHFhsyYqUFF4GAAuKH9os/K6o/ELcag+LsgK9THoUTt8Y3fnUo0UDLKeEsbId7VdQbORGxikxeJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rR5KK9oT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rR5KK9oT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C44C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775003093;
	bh=rFFovjCvAH+vjx+d049M9zr87qsrjim1dNsYRhGtX7A=;
	h=To:Subject:From:Date:From;
	b=rR5KK9oT7QKmbq5T4dj2E3Sxd0D56uAoBRSr0v0zBp/hv1DB0AmE/GCCjYmB3neVy
	 CQa3+sq8OsIeQVkpQPb9EnJU6yEA+D9C0bbEBNQElLb/eYwGJOwxHgufvqssfEaMPP
	 rDiODqOYb18PjnVTt4ZTVznku+D7MZIff5+YY58qI5jIUND3JiGWjF67XT2MwtBg5W
	 qpNee8lqpsxZ/YoJkI+aEA75qgaJ7FQ8abKR+BPl5Obg5ly+zjHCF52Gk3LsMY3OB2
	 0mWy0O18GAVTCttiL2JviB15Ny2vQejN9sAYEsgmAXVSgd/Ms+dDEB8lSlJJ/zk56w
	 lWT+KBvHs3WJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9881310F9310
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500309358.12558.13649124053170157390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f22925f112ed55ac19241584c7b06e69b83d3ad1b75bdcd309f1f798eeb5757
Date: Wed, 01 Apr 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775003093
