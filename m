Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3091821765B
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745611196; cv=none; b=Ab4G5bvG7u+U0Fx8fjvXG6szpDbqLdkSFIAQpNJWp/rgAgBVLI+mkRXsth7HR4iK0x6QBv7NVrk6RvaU+a1aev0p0Vw0Dm0IWFi9wb1Z0W0M40kI1CI3p1/14v1TepHH0kP68gzhKooBbFu3JojT1dt+J1syKZwBjrVYfYNpQYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745611196; c=relaxed/simple;
	bh=58+ORnD/cUzHchYXeKa65aItRkyhJuxdFCfuSXUdr5E=;
	h=To:Subject:From:Message-Id:Date; b=CtoZ5XauLa7bUrhSbPHRRo/1LnkJLb2dt0J9+fS3wxL/1Isbprg0sqIRwN1EYmsV0IZnM06uAfykVfskLNuS+TXLP5Kjx5tFXhJZDfjEPSWhE+OrO5Ci1VT3dBIaSxa0n7RuoVg3LErppxP78/VyQSA9oLXKmdQsXNtyOvOyZGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ke2ApKGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ke2ApKGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5585C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745611193;
	bh=58+ORnD/cUzHchYXeKa65aItRkyhJuxdFCfuSXUdr5E=;
	h=To:Subject:From:Date:From;
	b=Ke2ApKGdp7E+w0BdfnOPEqhm5zd54fypR9NopWRenvHc2bduajMpD2KUnXjgVtcnS
	 8V3LuHKkIJgf6TpG8Pl9PsPE52mZYFPTwW7cVPaxN13xJNMQ3bIVcJNWcCnUIBo75z
	 BW4iOg/9+3ZgZoeh/xaTGY6947Pjy75xZX7TRqS47gxBjaBycjVMNgTwXsjdGblQPS
	 IaJMYpa5vLk3Oh0EbpApfcRxtuX7hwfhDNe2KuWQUCg/Ou45EyNpjun+20yGfQSG29
	 Tpt6v6MiJDjz6uQ5zlO5FOPPU5UWeiXuduez0qX0zgoK7dI3x4QBVOWZw8/97o5VVZ
	 va9dkwP4a+HtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E06C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561119358.12840.1837251389117353430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65f36126347ea738607ebcb9858c1d59714f54ef797a561cc8b8df83d4c4258
Date: Fri, 25 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745611193
