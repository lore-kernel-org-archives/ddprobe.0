Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBC019A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752285594; cv=none; b=IEXFhmYPWWf8VyXSyzO92x5WHmkwJXUl4Zqa+ZsKKuE4V2yvOIqDtrHJVV9gwXl0sG9VayEb+QHwXpvtx7RKylmvPj8oEwO+uX/wxcOSBiOhyyqxgtJziRG5woMcHhxzdkemTySGQqXOnallgIExmh7T6saapVtZBUhQhM147v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752285594; c=relaxed/simple;
	bh=7fUujbSjorWJopDhwUa/J3O97Z8dutJKxA86ElIrJOg=;
	h=To:Subject:From:Message-Id:Date; b=Bdti5TO+b+k2KE4J4E608gb/ncRzHcv33WKIoJn77/ka2B3WzatPN12PUquswWp1TgS06soMVwGC25DjhRSl85sWvAkoQfk3XUa2A6GDWgZR4pb22AVoW6tzIWY2TD3MM1Y3CJ8M9sshHkyfnSNPI0ekvB4Zp1MiHfmNxfP6VSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qgrm50Kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qgrm50Kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A049EC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752285593;
	bh=7fUujbSjorWJopDhwUa/J3O97Z8dutJKxA86ElIrJOg=;
	h=To:Subject:From:Date:From;
	b=Qgrm50Kct/mrzlqiQui8JQpM6+gMrVpwgo48VInPvVAdp6yMrkAMq7MAFjBQHjYGG
	 n01YNG/dfcnNoolyMnFN578BTm/hB5xZ/4MbDPETcgxVit9TZOT98SDTLb5MbKurAP
	 UeP9HWs+klgg0nHmQpNpzKY4Co/+aV7XXTJmiZ4bpQf29fv+5HkSc+LKU2o88oJrMg
	 Kxcet6WS3kiX833wKkCL74hZCK/SvSEj3cht3xTZugAYurke+t7esZLqSk4cKIusoQ
	 L5fodhMrPepxHOvGa0gpXTe04QhJsUuLJR/dyQ3XJak7b7sX0mGHTUWuXq2xr3fTKW
	 5tRJMdxi8C/Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC4C83F1B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228559357.11693.2992438060982696545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c65380e715e2258385ac32c7af88882bf01db9df97b7b977d0c28aca98f7bf
Date: Sat, 12 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752285593
