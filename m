Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA2526E6EB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763200194; cv=none; b=bddRWaoOv7fQ026QkL/RAdKAJkxLug9lOZPh0/drosw8UP1hMWw3OJeLpGFAaEdGQ9GXVOhK0rekHm9KtKab6UQvKF6F6Gn2Pm1+nh1T/4d7cLL8cYLAsrZ4+QGKOeg5zcJvI7mfqYPpIeWncxmrtqGCsthvPi5rSoOvqCNSQy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763200194; c=relaxed/simple;
	bh=JqdzRh7Km6s04Ptx6fSh5DIBTh6ym37libPuZhFA34M=;
	h=To:Subject:From:Message-Id:Date; b=GASFZtE1qVusNmV1ua6CSLTNxGjR0aNFAd8Ztnd4lGBepOsJIsIIeXXSqFrQJgKX4QhPrNfXKThjZ8XVUQqXvKkgfTWUGb9EmHbu4YvRrSpTpJzWPof03Ir0EQ7WQ1lVZworWjDp+Z9ry5+hqYhw1gdrx4FcxZ64atpxGYXe0Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hv+Ck2S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hv+Ck2S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7C8C116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763200193;
	bh=JqdzRh7Km6s04Ptx6fSh5DIBTh6ym37libPuZhFA34M=;
	h=To:Subject:From:Date:From;
	b=Hv+Ck2S7SCwqqpZ6mzMyexllYb2/5+D3UZYiye2xSAXcx42y8vu0T/0cFcX7WaLCk
	 FVgA+OYZ66HL/fIq7qGYqAfJAtLTby5wBOc7bYNDEwGbltNsMxh8Nz54mzkpizWH4p
	 UCPcHj1JvhIlgGmjK4sOGyhxDJ+lbrHgJEp5UxyTtSWG/6MoTzij7x+MXwICEkxZ13
	 Lvm9+mMe7Rw2cexLyaN18eX6ejjywMXV85VrRNFcqNkKzVTfpyrmD9Q4YfF2BdWgwL
	 FRtxDN/sTVUYETVusvNTKUYLYOdo7A0qYUF5Mmc6skomamqOxKYtHBck2VtYGWvZJM
	 +PRXT0RqDbQpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBD7CEB2C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320019363.11800.8609874256176978025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2dc96b296dcbcf178743c066f0f978825282580667683c5cc95370c1f2f58f
Date: Sat, 15 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763200193
