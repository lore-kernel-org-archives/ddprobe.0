Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D863264DD
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775467534; cv=none; b=FHBeVY9ocnIPXtAS/YAnRfy4B0VS+rtVEO8gklf5K7kKgkW/vd1OYOQjhW1jPzemQQz2THcoIUHQEJi+XTc72cDoH6Ro7NvM9C3qJbq8nZckex92T5/Is3RxU9ZzueGiXPlnIncGwmeI/6RVx9COGZeFvPZ58cIeMwXd0jhbHA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775467534; c=relaxed/simple;
	bh=liq8MAng727MxIyvtGxRUjUpq3YqgShzFNlAB07O2qs=;
	h=To:Subject:From:Message-Id:Date; b=U31tWJxrYF6ZR4EML3e0igWA6+hHzW5yD3O/DAHMFljeCw3V+DzxtwPVxxuCB587PLes5f/CpWRHTiKs4abhw14aF+eJgjskrnm/mqJZ2Y2gQtdInZNxvlaA95YEDAD5c6HDzdMlzwPQNiPsE5iCe/kUAPRRmu71V0R4DDNyxco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOP/H13y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOP/H13y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB0BC2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775467533;
	bh=liq8MAng727MxIyvtGxRUjUpq3YqgShzFNlAB07O2qs=;
	h=To:Subject:From:Date:From;
	b=pOP/H13y6BCyMUWP69nFySBy62aXqmrYTU571v3N527ohedRmclxyVatm4XH6Yqc3
	 wDSh8ytge8B9hx3+NOVAHIbpvbZ84KXjHp3G6nuIZBreIHQAXUXarUZQNNltUHEzQy
	 JySZSwECYTjq92s5m+qC+vf+oWDbwEyu6wwIXY12YlJeeSNHm1ys8dkltMCJqANey8
	 GFdciXCSUqjX8UXx3uwWT8CTa6V5H0FRvFQ60WYLIuZm1AyqNr6v8qyZxz1YKTIrG/
	 aQJO8AvnzeWXe2XwBeQzQ+5IU0ubtgBy8duJqG99WsOahgd5s70q4lE9+UwU8SifaH
	 MwJle/CLciU4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC61AEF4EC9
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546753376.2023.4414446703925214348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9d3783cbb531c25c981af895fcf3b2a20032ea889d671f1417e84503e2dcfa
Date: Mon, 06 Apr 2026 09:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775467533
