Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3772F2E40B
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748225394; cv=none; b=eYtvTzufY/t4MQZ8H2C9Q+jLpIXyGrVc47IBDODEKSKRVOcxp++/gLodLGgtXCwV+bDq5d1vwcIsgmwZV/w+AW7A6c8LC+a6acZxj2+g6VdZmJ7zQnN72JGWuB1FdwGGnlHh4e/Jq/8UaQjBeLObTSqKomYIIf4KkCjg0l97UQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748225394; c=relaxed/simple;
	bh=plTiCOA3CtBnn2kw2huEQrLV9rrg305yFTSim7j9Uyg=;
	h=To:Subject:From:Message-Id:Date; b=HB6mC29ir5yuUcd5W3blzuyXS+9FLRAvZpFQS9x7VWXU0svBZIQ4OR8AjYYZlHq9j5O02evMhGyhZVuyIvOMbv4hShI/otHARFZvr5L+7xMNTlA1hiXlf0AYvgEi9AsAPU8SNAQQTt9u6lOLxJcFxe9ZEU9+kFnjWDg8EPLRfA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e//6zX5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e//6zX5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3620C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748225393;
	bh=plTiCOA3CtBnn2kw2huEQrLV9rrg305yFTSim7j9Uyg=;
	h=To:Subject:From:Date:From;
	b=e//6zX5uiasaPQIezih13RZk3TtvcaT08OxYCRP9bs+9A7z7z9akygZCvOqRL44Zz
	 q33zuoKI9j0trJ4ivdgjhJe42inJ/8wY3gFX/XAycN2xDzcR1NmLdcVyVLHRGfKuBr
	 5A1N929NGgDCANAsdeAJLboW+jym+JvhFWaNmxVcfAR7eVkx33eWgn8AJoxkt9jYEj
	 QUl7eJ+0AG6ehBYkLJ0O+ZAhdlaupfE3ZhIgSWyFhZuuy/iPPNAJaEF+y3SHnZ2o7i
	 9cJKvnt5qTchImlVwztv2r8m4WVxJbiA9WaaMj3lxArYqfy4vZZWcko/vGxbow39nM
	 6EWo1SEgc+1qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E0C54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822539357.16000.16681172313775080658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54f2a0d92020e949f90ff7213db1672cdd46421a2db9433a86d8ec6559b5b07
Date: Mon, 26 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748225393
