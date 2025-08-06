Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F8919A
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754494794; cv=none; b=jMVhMnXlKYE3/dvoSrsLldziafUqM+Xr3XZXx6p10fdVpgqAgAkdq0yNlWu9nNDajYCSUY0VGxX7aS6e3xPHNgRS+bWlS+u/pNKXfjmiN/Xygh49h5eNW2wQpm6a2EAC2jwdrT1f5u0cWU0MeH+tHKuP1oSJRkc1DsTuwQHnT7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754494794; c=relaxed/simple;
	bh=kioNcTFZYnQh20VncCiz1ykSbD4gpp7t5zNa+Ikksds=;
	h=To:Subject:From:Message-Id:Date; b=MlJ5ggjUuy6Ip8JnEaJpHGYbhbCMDmpAYyiX7BmLXaWKYkz1TyBRo8KLV/EctaBKn9YAnIADy4agC69Ghq6YubBh5rZTbvVsPwO8wPb+JVQ5wbdphRJv5cexOZbfSp1xjOgzrkhAV4OsD3ERoE7iuyzd5kcj2FhoJ0FOsNS975U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGpGx8FV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGpGx8FV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AF1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754494793;
	bh=kioNcTFZYnQh20VncCiz1ykSbD4gpp7t5zNa+Ikksds=;
	h=To:Subject:From:Date:From;
	b=EGpGx8FVlZaUSo4ewc9xXh9oVovxHwogwoC+Kml76VHYMwJICwv3bTdiaaBCpKSge
	 TO28knuVl/5HsJCcgzOoDJXD4P9rtAoCGX9uWb384By2iC6/J/Jtr+VZws8i3Len2p
	 IIoHpjxRwOXYtlQKiB2sxrdXXBU80dZ25yH6QA044RisyzueN2Q6OztqE6/Mt2zAUt
	 ClfHkjo3jmhBssQutdVw1iEIzhhCHXD5IW0KReW/Oc/OpUaaXGS95Z2Ak8hdUubIn+
	 lnR5ShHfxp+aUjQ8kr013WNrSuC7n6ljyhm40lExaGE2zXeyvbo5i26P1MS5JN1/Jj
	 0+66XWjjZiZ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D05C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449479358.26396.6213801758424629343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150654d47074c1c185701b1af8ebee9e45b404e731cf1e1246e7c8de98bfa267
Date: Wed, 06 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754494793
