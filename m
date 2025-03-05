Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B531FC7D1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741164534; cv=none; b=GfqJ+H8EYHZaQ10a+EkXYi/q7NfZj1xjVKQPj/+r0GTGU9ZzKiXy2zdOl/gdDB/5rIwg6APSGpxnJpcn3+/BQTAenjFpX4c7XKo3D5nuZi/vkz0tUqi34riMr0sDmK6w0v4C2jinvhOKh90E3V2yUqr2d+rxP7iVAizYryVAwZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741164534; c=relaxed/simple;
	bh=iYrE6QyxBGjjkXpTMCs6cPIW5IeKlxR6QI7ogvdtN6s=;
	h=To:Subject:From:Message-Id:Date; b=H+BhRi/umBvqLHWTUbo11eqIv/nJDn98ijJ1+Xd7sul43slILMQ0ty84/zj/Q5vKn3KdJ2HkrN4Ly3qPJ6ctiay4BAgL4uUEbHVYJGec6K7VaVHWjQgn6R063AVaHSkkJQq6qJ8GDJCDYV5hpcIwBvUD+hIOn7f7MdyU8xXKyJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owrKW4ii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owrKW4ii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B276CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741164533;
	bh=iYrE6QyxBGjjkXpTMCs6cPIW5IeKlxR6QI7ogvdtN6s=;
	h=To:Subject:From:Date:From;
	b=owrKW4ii0yL5uqAQ3I+b++yuiOSDxvy/kHLU9qChQSUaStPRLeOvHTfcthY9s2XLx
	 T9puO8QFeqFtd3+m4qCiLUTNneJBYGcW7rtylNnRwy+AuYpquSfRAUOZoDCUoVR6YL
	 nAJ9j11NMSIq4MoE1W8MvxcyPrdXZwAvkHTF8Y9YbplmjAWSQmzBMVpg0GVOJ14OUK
	 aQaX/KLqDBhm02Bm583D73nWekd1rYRVxTpUclfaSVWCISbRdU4XgH7sD0tMlojH4q
	 kQbwTC93Tgr590PDwK+v42zrhsAuICgDF3CpcbvXdfvbRgRqXlC6wceQWGqFb14mPw
	 QNwVIhfF4Y8rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97262C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174116453361.14447.10594699943315292815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd2a20e1950b8313a9fce590ac2a0409b066d4ec093cf68e7b2bb4dc8beba09
Date: Wed, 05 Mar 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741164533
