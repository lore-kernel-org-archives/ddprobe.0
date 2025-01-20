Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435EF19D06B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737363954; cv=none; b=Cc/3wFMUobv6Pivg02QCQD1oX7EdrbL6KZ2mUxIOD2gWxyhsDFn+8q+um52SnAFHTn572GTx7xAro1flEIffz3X+U7bzDHGy1wzagsR8hTNzCLycAxDKqL3b6LTxk/7UetGI5j88xvn9ItHnFjiMRXZcZbps7P9xmezqR6d9/tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737363954; c=relaxed/simple;
	bh=eo6AmGYLojjNWQS+5EqV4qLfz9llRKCbWALBG9EHkO4=;
	h=To:Subject:From:Message-Id:Date; b=Os3bHjOxLp0rOk4yzEK5VmrtZDBuZCZ6EjsOxc+rywwP285GGYQmkkAu3N1t35T2VSkjXJhVvAyOtEtNkk51bUC/NavpTOKAeL7yT7NkiRwsklDaB+vVeYKVA4o6fcLlzxHIo7F/fYH619Hs2XDNHlgV+2z2XeAhWOwDlCvn3mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIaVf21Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIaVf21Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A831FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737363953;
	bh=eo6AmGYLojjNWQS+5EqV4qLfz9llRKCbWALBG9EHkO4=;
	h=To:Subject:From:Date:From;
	b=OIaVf21YVKZsac+gVOwKylwT9kcFBeszdEKUsz4A/2MBY3kRyRmu8DewSKWZKkXsO
	 hOHhT67DUKcrid63uyPinexPMDyuqIe1q6ZJeL8NFMhRoFswp551vVhGeL4xn52H17
	 YnI+Fppu2AcJqS9owXmQymLE/xT1YkQE/L3/UvUyFWRqy4Zig/6OFVMt09jYiYnt90
	 MbLwFX0cTYn64q0z8AkHVOkPUErj639V32tzURb0L7GAtAhWLxDS0Lb3cctS66DGUH
	 8LR+tcJF2Q1on/PwZYz14rXin7PldavuAd47K9ZkBPkFsUUkrG8KZTd01owuaur8VE
	 iGcaUeuIuyjeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94202C02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736395359.21100.5650117528806174401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b9e4497230430c6d05d57ddb2d68f43542a40a148ea11a79caa25834b854d5
Date: Mon, 20 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737363953
