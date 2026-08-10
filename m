Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AB8374E5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786343434; cv=none; b=Vl58PuJoAs9GyvE+T9lQkfV3XZO/SEo1O7xiZ+rY6c/xYSzuz0NO/+Bp/OoenCiz2N/kARVLOWNe23afiyZOZk//frNVNa80IAeH+8Cpenng9uUnroFuuNPUqDAk66BJcELccbiynOZMQOV1GCKLLlE4AMD7Q8cvP5j7her+rlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786343434; c=relaxed/simple;
	bh=9j0YTELANX7voWek+llpkK7IcQV0V3DaPhwZ8bAeQPE=;
	h=To:Subject:From:Message-Id:Date; b=V/eNp+6dg0gJ2N/PZgv2bapLjFx+mdY6lxA+YsJmPHsUQqU7DieZ3Z4mujB8GRZsOy58z54IYmiikgIzr1MeYG1Io2U5ltQZzgSsxxjisYvI+wgtbbv8XU60ZTtNrvPWKxkuwJH+zCW5SFuOPEcbOeSCCvF9zqnIp7Ezj+vATCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1UqXglV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1UqXglV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CC3C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786343433;
	bh=9j0YTELANX7voWek+llpkK7IcQV0V3DaPhwZ8bAeQPE=;
	h=To:Subject:From:Date:From;
	b=b1UqXglVzsThi+9HxF7m3z6Qq8VLD23bcshbpH+SmRu+nnqnNVH9Zkm/bv5lDoKxd
	 /NGPMJdnZJwrZVybxlo+vxLmxpzi4E0yR+e3QtQ4iMlno2njFsl9ksG7jXBOTu823x
	 7NGPMabZurbWcnPMNwgHwDwofEaUD9LC8FIIf+zmY7ennxd1pbxeG6PER3fTvJ2Ro0
	 wCX44rXHV3KAizz/6Hx0P9VXCU13f8VwmkhLIEFq4NqgPGaT4VcGImXylAydgx5Ivq
	 MzLByaKE08G9FDO6v1qBsyWfTzD149FaYNqhduEPVV2Zwhlgk6Fe07Aua18LzMf4FI
	 lVNWj4nfo8CPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B272BC5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634343371.567.7493792129235139654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73e4f562e48a89494f215760dfb1259f5544344f394b7b0a9fb58555cc5b382
Date: Mon, 10 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786343433
