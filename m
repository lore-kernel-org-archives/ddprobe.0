Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9AA191F92
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724168754; cv=none; b=jrRjMOxLDNXM8vUnnTMG72kzjipsX/vJoqJOvY4Xiywy8k45QxU491l56dNzD2SEkynsOB237JpWx5e9ECmfP0q0kEfPAnlCWuFKevD/0Awc7kQVE1H3xUKdjs8RxmlCVi78vFWw9NhgBRXxxr+mhW8FftrOJq1CDn3pXX9amgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724168754; c=relaxed/simple;
	bh=TPALy+UgP5pQ9sSmgGZdxAt5Iz2eL7eu4v4T+l3AcRQ=;
	h=To:Subject:From:Message-Id:Date; b=DUxfIUblttjqpj8nRNLHkFxoWONFFW2A1aQa2ljSFVsaHz0wmMWH7gv6EFUcsyRxN6chFtj//bREFumrdxIKIfDvJRX6mI7ddLbkG3esOjHckIbCcnECj0Dy0aIkEB57TQXlUXh+dVr3hWOwYD8DjuD92+x6bOSnzSQ/adL5GJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyKB78ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyKB78ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9FAC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724168753;
	bh=TPALy+UgP5pQ9sSmgGZdxAt5Iz2eL7eu4v4T+l3AcRQ=;
	h=To:Subject:From:Date:From;
	b=WyKB78obU5S4eA8v7uoP0MlW+CMH9qWv0gH/4192wjPoXAxAwLUs/KmUXQoqqHulN
	 SJ6QQ7mDc82DP8FePt6nT/DxyfLl/gQ0VzDtOU1L9HWskCYYhOWsTY3ZabNe5FWaVe
	 R+xqLLmkJe9VtfFh+uAdl/so8KjvhvaFeiyXD4xuM/EERTN56CRLl9S6R8ynZxEsET
	 P1sVWBVlqiNOS+njKJn8R8aQ9843G3mJ251zN5mNODUyWJ2LrZO2MNFJ7L8+1hubdy
	 pYLAbRCcIkxnl7ZU6FvhCx1kLB42KfizQ65ocdzAtrWS46F6/1ng8kCyhP13WcUXUB
	 ItMmKLhE4PQyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0812C531DC
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172416875370.19954.17966186359333050595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf480a98b50de3366a27582f9b3c2ec3c7a90a4b1e17f29a9acdac8b971afdc
Date: Tue, 20 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724168753
