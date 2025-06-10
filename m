Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A600289E3A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749593994; cv=none; b=e1gpxMwLL7q/dcOwN6/H31O5n8eFeBiNl4tizl61if2LZ0486ryHaol+If8E+ICF4NixeMzkavcFdHJs1qA41HNVdIU3fvoO65paP0ghWuhGtxBqyzTJ5TLsTqomblLEAncWWQcDbLZM7X0SoD6OklIjC2pIGTqm4MKnoajrZ7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749593994; c=relaxed/simple;
	bh=KZaxyOieIsgVB3gwomN1oEQjg4KIYhgifdvhScOYfYY=;
	h=To:Subject:From:Message-Id:Date; b=qj8hfxNZ0BFhvzI+52hfA9dqdbe1UrXhGl2RuTugfOEVu7fPV5MpCR2OmJR/GKyjSZ+gm/uW3CTT5XfznlebAKRQ/ExmajYrl/vHvIZwxrlTUGuS5L/LZAR/A1KHuBwKxTwmOBDs6Rf4MZ4eaEmcSyaCAWQmQsR0ctWO1M0nWgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/0u87MB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/0u87MB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA8C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749593993;
	bh=KZaxyOieIsgVB3gwomN1oEQjg4KIYhgifdvhScOYfYY=;
	h=To:Subject:From:Date:From;
	b=j/0u87MBE9LErwFkkvGEADqOrwlURFPnTRO8EWvPyDEUa271QGWpYim772JYzixxT
	 05fwzFi6EOlOQVAVjvw2XSdzht9NAIsF9hsSKQO+5hntV0otHtEHcH/0QNoTea4kdM
	 365uKH/Hs0Fy/JA+R6SxJ6erMZ2h0SHmJaVPoy7ldieZoEWCNStMtJBaGcDssQwIo8
	 62hp47tIPtvVqvAjpjX9vy3vej4ZsM9il39B60Y8WrekpnWmaeOGe+LuRS91HTW2Rl
	 f9qG+hucdJI8I3+n0tW+wYU7CnRAfR1p+uxV/SEt28c09oTEnYmIkrGPPwVx8zF8OX
	 OQMycogNl4msQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC7C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959399357.31706.4568261740521726369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc796172c2b8f37999013ae9f4725fd783147457414e6574dd503652b3d0609
Date: Tue, 10 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749593993
