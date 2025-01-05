Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39431191
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736035554; cv=none; b=USN2ljmAJjjKRMgzQeYg8ws/r36c0RBoc7ToYywvi68wAh6T4wN1rFZXXpq07TMN/hmGYJ8s+cB52IyUrIBy+VegFAfkkA53vnKgzEj5Rbfu+ciY3qF+X6OzHVmCYheGCwdaGRIP2u6DHefC2tgzhsJ1egHMv5qjPPdrwTLGws4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736035554; c=relaxed/simple;
	bh=5/dQN+4Oc+v8NLOiKmvgXAPSx72pzfeAw9tDM7TCAtA=;
	h=To:Subject:From:Message-Id:Date; b=W1tNRgA3VKzunIMjHcy0aOTGXWioUItvghNG+LtO7aqjxQY7D4h/JEwKXHYUd7ARYCl0GS4WJnjCkJqQ+f29D9ZzYNOPBB/Axs/i7ebEtlN+dBTpKoeN7lcOu6uQ7YmpmdCl5kzVwPVDQcnM1roemqRghTP93IHQ3ybg9eK2G5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQjVuWwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQjVuWwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E73C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736035553;
	bh=5/dQN+4Oc+v8NLOiKmvgXAPSx72pzfeAw9tDM7TCAtA=;
	h=To:Subject:From:Date:From;
	b=iQjVuWwTVCf50nX7xjH4dKvFcMEYZiOo/PhPk+bVfaYP7KDP0dtZ1ztSqFi4zRVwj
	 9NXbGIfVYGCm5MMeGdBLu4Igg46Vz2gnPbIyFNmPmIw3ZgSkAjr/t1sjCX5YRVp2un
	 OdoFWtR0SGsAYWIpgjbaCkv/nK9TqMjf8/4BcMKCoVCBLrinTvBYxJyJmQvj9CzDdk
	 7M98Kf2UtmCli0T8BPhhZyd9JIxEFo1MUuWIfgecmj18+zg1KOyADkRqTPUI6+AKyU
	 eryv9hq/sgLrSq6079T6JWLlIkS8SdUVOKReD4Gk6BpxQ9oIQx55um0mxodQR5jcjw
	 jKU5C66sXOnvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9880FE77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173603555359.15155.4492621987300864782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57cc4d78e4e168f30936fc38c2a03d0c3987d5eb921abbbb167cff2173bb4ece
Date: Sun, 05 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736035553
