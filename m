Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1697082A
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734579954; cv=none; b=uJgn6g0KxhcO142OmxK1FVtu62hZusT97ezMF5m3CqfhX/VQykaX0WZ5ToPkqgkg3KvbTZsu6Qp+sn2CbosVrlJUaiBpGHXgRI7SFLwarevW2C3pKgG1qt6FzRxRJ+joLG15Bqp6r4SO/dZJ/VlndWT0iorW0vu/iRK8A7hJPZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734579954; c=relaxed/simple;
	bh=kWpcondirQ2lWkBMzZiov4EwfWH6jN5Dv4OKemeWQd0=;
	h=To:Subject:From:Message-Id:Date; b=GFwUMWI6rLyvRItfawf9V2PsmON3brOW5Zbwrlqu42vx865XmbAvTkmDTTDXBczXpYcIyCtHdy1EPxdzX5qe/FS95d/68IsE5XVf62tDwQz7zENrmsDPx32QsNmF57VDe2va58L1ipve+TNPmiRlfo6kG7RERKa1R1+juD2YQYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMdQI7HI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMdQI7HI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0E4C4CED4
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734579953;
	bh=kWpcondirQ2lWkBMzZiov4EwfWH6jN5Dv4OKemeWQd0=;
	h=To:Subject:From:Date:From;
	b=SMdQI7HIUpRiSXFBYaLxd87feuuRzbi9eEjCkGqLe3FiburO6xjEtdqQzfezZiXHG
	 eXDhn0nG+Kvu+WpetwUeRf0YJ6svI9pkLrdpkT/9sSEMzjSKosERe8yIxGa9cD7NKd
	 g/l07YAOALgeuy1PC+/U87XdlhLz3bv/gZi2yfAOz7ZkcoZqazSRqnpMY5XVIe2vcJ
	 zhUFsuUi/sMlwNdvRqQ0a7Yw8CK0jIiad+3CEflgUxlPR0IgXWUCy4UNHdzil96EZP
	 fbaN/KDdSe+UR09EHordDHmw6FSklYqZt0QBn3Vt4b4P3x1XGamDxo5rnKkHfYK116
	 zaGIvewzteWgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9539DE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173457995360.23647.12436827144931105591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1bd280551c373a3e06921d0fcadf5920180f246fb0db2973082e8f62583ad0
Date: Thu, 19 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734579953
