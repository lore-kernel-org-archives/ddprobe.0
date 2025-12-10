Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229B51B423B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765404774; cv=none; b=PS6lP1hhHN7gebyNjqplHq+RyxmklIi6JpWqF3g8xXiyV6ZaSmw7veqNamvmG6S6bA5MAkgSI2MAhnAoOZkHJKKynSczPHghscWl2Um4WvAb4Mgl1qzIrbJ030hb0n04sqzKo8+7lC/T500xoHki0lOcepHc+VdlgzyZdz8EX3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765404774; c=relaxed/simple;
	bh=Z0pDceQC6yk92sBYSFxVJsx5lv/6RGw+c3Z9JZvD+64=;
	h=To:Subject:From:Message-Id:Date; b=Vn02GZTO2Ajwu3MQELyT115n/EcC5kg8eWt6GxSVxSl5Sd18BhUjRhBZ39NGdwtgZEpX2i438oAJ1DK+fJMB4Rsxk3XIHrr1aLi4cXLvi/wsT+U0vDty2CHCEw0GRgxlYjTUpH0eT+2+UoGOYLXzuYY6ze9i4eQiK2bPWND3+oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbsYnpgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbsYnpgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B503BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765404773;
	bh=Z0pDceQC6yk92sBYSFxVJsx5lv/6RGw+c3Z9JZvD+64=;
	h=To:Subject:From:Date:From;
	b=JbsYnpgCQooUb+cqJSZ9d30S+uKoMO98QYZ/XKEThq5qtpRN109pmkNvH1rfytmms
	 HlkIyAJlvvws6nhU1FryHZlhSYEwwX8f7EMobDMGnMMQB6intSnEIJOuCAVktohkKM
	 nqwJh10TuZCnf2dkWXkW8Qww0DgzUkpEVgjqm13Aal2uK9x/Nj1n2tjW4IEbw8puf2
	 SsCKfIxUyz/kg6E1bAtd1PUPsZQIMPClMO//6hoyEKZz7224cMGh/2e1oItI1Wdxiw
	 tnj+qVmOeMN4eA65xT1NkiK4bsVkD+IRXpvtGt8wyGDbJ0Y1nKbKotZYiqGQn3r0xW
	 vgJ2tlaAlZLdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B43DD3E780
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540477361.28407.11203297286030887166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5249b9a4ac2a931512748923efd9f3ebbfbf1873a4ce3bd8f6b1947b2420753
Date: Wed, 10 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765404773
