Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D0A1EB1BC
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747693195; cv=none; b=aS6zD2GXAvU0/wh2/jTTsRuhd7A3GzX4LmxxVrnabKmJyo2739YmGjnRFfjFi1FebstGsPS9or3LJNdmkfuypjruoHOlZM77DcUYKf8zQnPLxa9wSK5NvCxv3ka1y9oEUKEIFN8kskd0YRAU/+oDMVgMxlupNdlw9pYK3W7HE8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747693195; c=relaxed/simple;
	bh=TkUCr4+Qkc7WErgTu8uxBJA8+GVuVxbsPrM8iKc4Ouw=;
	h=To:Subject:From:Message-Id:Date; b=ZBj8Lh4VtIYowZxEsyZI5w8UP4vHH+kGCkc6hLYQF3PBtuAX+Wvg/kD6urAqXhlaM0rSjX3hQ0aJdgNN4Bq0tfo6i6dFpokBuC9WB9akx2oGafKllWMmMtg/t52RSzG/euU1zYsysFZnu8p4hPtPrzPzVfbODx+I35XcZ3E3no0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYL50oqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYL50oqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA6C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747693193;
	bh=TkUCr4+Qkc7WErgTu8uxBJA8+GVuVxbsPrM8iKc4Ouw=;
	h=To:Subject:From:Date:From;
	b=OYL50oqcuLWicwaZ08rUBy5D94umPDIui8CoPwmIM5GhMt8lLz0VWyVcDS6uRXdLr
	 Fvp7lBPaGbriPm6C8x+mF+ZQFZvH7bP+7TI4ofM2CNu4B9iG7RsesTg8ZvUdJ5GOx+
	 Djn+tMBQyuafu2PFxzyrMEVH6Vg+3IVsGTKWIXvYNzLySFwnL9sAN2hrmTy4RjzG/G
	 5QVXz2nJR0siZOAj+PlDRy7VfRXYeMi58jEUDhp9vCAxUkiqlBvmehHB93DX6U6Lvf
	 esDXUY82cXe1l3ji1OYOAW7nLltaMub31K8pSbtMhx+8JqHeUTNT0VYRGnhn9ckCl+
	 IvVCJIcuTMJpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E961C3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769319357.12540.7731156523603161856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d950900b6abed67728b975dc77ea84f13a102ff84a255764df779bbd0578c79f
Date: Mon, 19 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747693193
