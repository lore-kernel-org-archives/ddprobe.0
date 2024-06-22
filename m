Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF15385
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719015743; cv=none; b=T6qokPLHcuIWxCywhaUlGnT7ydk7YkYnh77U1qjZ/+sSOrN6s4nm5iTkt5N7+MdQdPEv3D5fM2Uv95+kEa4RQHKsDBed/N91DUOJYGB8oom9BGfGv9cTh1yT877XgeudXV+P5m2YbEEYQvrtKMrRU4n+rbJKWuik6ZArJ8pGQ+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719015743; c=relaxed/simple;
	bh=6EW++zDETKOsJdWNCsrz+0jzDBMiy1d0SyJoNPUUYsU=;
	h=To:Subject:From:Message-Id:Date; b=I48rr6kJbpFG2xh1zBqWEh0jsR2KvSVBQPB4PY3JsiutZpCpoXfcu7I5PFJ46GfDrmbD5Rc3LAMHBM/MV5CKhnSXykiiQ4/C7DZqnwh+L76WE7i812S5ThyjblmK6kw/XzgZSH+CQuB/QU7bM7o+IGeLB+Bs6A5Zzv0INaiKkzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uK55TaPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uK55TaPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F14C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719015742;
	bh=6EW++zDETKOsJdWNCsrz+0jzDBMiy1d0SyJoNPUUYsU=;
	h=To:Subject:From:Date:From;
	b=uK55TaPUXj/lHCA3KTCY0RnaaYTKMWqoVg+J+cKwJC0gL1vC+UBK0LuuKCvvbkeTf
	 TsOzRM4WwIQJSz32r8HYScqCzEJ48/LWx+w7PY5Xb2M1dQY+ot9k4CA3MlcFwxToS9
	 +LOYTDocAInBWuIp4xU5j+G+Rth/oaScK/BUh04u3f97ZXj4IhY88lqB2r24kX3tMy
	 6CDH4eMdKWkry5e/09JWPEHdFmI3Sct2XwMiYBsDSRj1eRAQTSopG1TY1T7LKweMm2
	 pvNTUgEKJPVXbPj0jkUAt5s6rQPUHqMXordTHGtKs4qxa060STl90Jg7sxCtI7kEg5
	 K/KK45GRVqysQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECBCC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901574276.14994.2835772845870722819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46324e8d3d2058135ced182901db4e5b6a3123799df0c8759a7471c0c851381c
Date: Sat, 22 Jun 2024 00:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719015742
