Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3925D5336D
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734495354; cv=none; b=XZVgYHSlq5VuHiX12Fxrr8l4NHuXZrJWqb3WyvYQomXVi8u5AGJUBEwOMujTKd7mkPhRlxVKvISmaPkJdC/0yAifv7vG13uwOz/afQ5w1jdSVcTkHdZmF+/vxIkJ+qQhI/aRzT2FOlHKtiITtSiDNszf8cU1f+cJ4ilyAXgIc5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734495354; c=relaxed/simple;
	bh=0KVcAjxDlRJ2gOBL5z0eTgPZLHoCGOcxZrs3LuyMXAc=;
	h=To:Subject:From:Message-Id:Date; b=dlz4Pw6sXhkkBxlCwniVYVeH+Z1D1WxlgRiQ3Hj4ZD0JIE5zkF0YTqONBMGV+RynjHubqgmfGm7SZyQW/00tAY0pUDKPOpgRcbGwk1E/SuHKmyzG6OePqnTo2+mitnYoRgaVrwmD1+aEogBmisIyUZ3PADlSXvN9GErCKKKNHgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o526Orco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o526Orco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75FCC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734495353;
	bh=0KVcAjxDlRJ2gOBL5z0eTgPZLHoCGOcxZrs3LuyMXAc=;
	h=To:Subject:From:Date:From;
	b=o526OrcocCEzp6BZ37LSksPu/AslQ+oEbSN7xD0TcI3pCPm2WpGEL8RpIh8Sp50Ci
	 8WW21u75UKNwA2vOq8nyUaOgjjO00ywUvx/UalPIDZw1K02wGCJdWMtFWLvAmKn5Xl
	 gzZfSbdEbIdKuXZClg2mtG9EJiI/MCgfJQpfTVVEcoPIeyRh2yUJXgSjuSGZBzCRUf
	 jZzCN/rAjnjCuDNSAqpqmchfl9CRmnladbJUk4Blk54qFGgi3q3foWhSTXSWeyUKgn
	 WEGWFk64idZzsM8q320P8OqEL23G3dnKJnmMDBevBJ/q10vbrEb57Aaf9OkvnnsNI/
	 IpbMDnTdh1JEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C954E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173449535362.13126.3465534739520003073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded42f75688498ebd915a2815a8b783f63c2e3a21906a0ff34fe5fa9a7cceb18
Date: Wed, 18 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734495353
