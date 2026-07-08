Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBED378D74
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783552714; cv=none; b=auLkhBqJoF4NOqcaNhDmARY1CylFhNtPQKZIcBw29u11lT48UOLehvOb2xF0AlV/DRPUVvQGB4rbusjB/UU6EqyasRR/0SsiM1TTykzom+x1NdOY4ZUUG8wBB3LF7+0XdqUl4JkCazaG6URUJvVaaMTialuuqPmucU3IiCOOjm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783552714; c=relaxed/simple;
	bh=Ok9mPOniAYL0gNfGkoH9UoJDchN+S7kXjUvZ12+j9do=;
	h=To:Subject:From:Message-Id:Date; b=TFCGsjBkASvhTX8UXkuNL9xRmvxiGOtlYyJzLE83YxYPWDp3T9Y0+47RLrFe9LhUJQpOBbw6ugH4rkXN4harMsw9sAzY/LP2I7yXPmPHjNW1MnlFSDC63maGUPAql88bjMXEreIPelDbXqc/tMjz9JS9uXmuEq9odQyUUkCQSEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kO2XmVNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kO2XmVNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7069C2BCB7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783552713;
	bh=Ok9mPOniAYL0gNfGkoH9UoJDchN+S7kXjUvZ12+j9do=;
	h=To:Subject:From:Date:From;
	b=kO2XmVNHFmf4ciWynwqzevv7wN9HkSsxixgdBKZhsrl+vFEzIvTxJT7fuvEaMCASi
	 97yFzOTJKGk4BtzRjGODj7bM3Q+uvpD+g97l3ooLaMxdCJAjSLpkOBLUn7l40NYfPB
	 o4koIhfn6vAnRGdYkDKfk641jVuMZzXzDQCo0TLnQEgs6A58a5I6ZoRdCduEEbJYWb
	 4RgFHq67qzkypDH9siH97yWMnsMXx0hmlzuberVE46Oi/d/tHjxfE93Yn4k3Asr/ou
	 HaVJQbbfInzQwEl3z/0AYgcwhWje9j2N0sFNaKsvAKK2JunTaJIq3CsBmdbMTTtZwR
	 IPdXx5AUUVpvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FC8C44501
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355271368.25744.2117490853933116977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe25d4f43a89cfb7952f16f45b4e3d55f14b3ce978f509c49b2e68c2cdeaddd6
Date: Wed, 08 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783552713
