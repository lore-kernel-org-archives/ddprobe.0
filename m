Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BEA2517AF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772277894; cv=none; b=eDrHX9lLwp0Lck+egfQ7vurMIwhgVaT8by7C94/gQMWZKXEKpj5NB1KhcgxUxW/2OESUfnt7z/JU/I0naVb9a9DmLyuzI/PA08WeqKW02uWekPv/ILZQWXzKyqJFZtbmQPt172YD+JZgzDDfEC1P+iCA3X56w4K2pVmYqts1xNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772277894; c=relaxed/simple;
	bh=4s2UJ5hnk9YC5VYDJ3IKXkXwxm6Q8cTFokWWP0bB5vM=;
	h=To:Subject:From:Message-Id:Date; b=Fol8ExaKVT0idz3C67mi4Xo9ebnwKXXUqB6fWPkeHj0iZT7SlW4t5ro1L0rwCXj16BfYffNMYVDPmPNLfQZOChmr2Z+lh2+TM3nLAM0lmeghOLyUvbTUu44dw2u3kIfbAibQx/dongWV4X8oKOjBl7ztdYFgTNozZ2tiCS121Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wk2e4OL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wk2e4OL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5711C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772277893;
	bh=4s2UJ5hnk9YC5VYDJ3IKXkXwxm6Q8cTFokWWP0bB5vM=;
	h=To:Subject:From:Date:From;
	b=Wk2e4OL9G4mVdhhKIzhhH15d9onkQBo5c+Gp63LhcCjgZu6cZlsH6nYDfvDB2rEH0
	 RvX2p4sFIBw3KzSbSvJNSLnLBAoWajvNJ62Jbwo2r2z1wTPQPG55SWpOl7GN41hJKk
	 n8n+Jj+lJw4ueNZLokOKhypXypP0E+cpvFAne4u2Gxkln8jkRCh5LPKw9kBsx0oV8/
	 LaKDVlJhNWCTCXqZpd8TbsA5fKrHqxKXqrBRhqrg6Q8zeLaJb7kF+b1FKgNIreOGHV
	 x4UTxYiJAZvZsw0OcQ6Uu4dHY+wS8Z7s+mWFuAFKnRqEyMjhGpY+dOhEWvgUi7lbiZ
	 gZ0qjVD7jH1ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974C6FEE4EB
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227789358.18974.9996632587631023858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48828b11ce50111bc524ae9fb6154f33f17418cc7ac85353bce6a876dbace694
Date: Sat, 28 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772277893
