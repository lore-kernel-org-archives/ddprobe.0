Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2481A1F4CA6
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747655994; cv=none; b=VJNmfNozsI5W+nFG98uCoIF7AhVoPYF5YRTJ81YtLFQwuXT12V1n6ZZw8X7hl/uxtJlAULjRWSBPzSuwEc+gzb+Qlxr0SRAen41JeNSgGxOmQFt1OGp6NIqb23oNBtvYxE4eo9FrloRa+ExsU7kTgoKVbOha2z9E8lJ7RnbDCK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747655994; c=relaxed/simple;
	bh=GNYHzhdSkkDr6Xdh18RlzqGxQjOMN2OMfcgt7FvFrHc=;
	h=To:Subject:From:Message-Id:Date; b=Xq9BltkrNfgABMumS0dpTPPFA9V4yKlUyFLo7r5KzXF2DiM+aZD2u7iCuFKHzT1jhdcmuE1XT+IZo2g0iKONO9a6lsMzMsxzMeLWoog4Kx9FeFuyexVkDs4e3Aj0w47yATuOT6hGCPQePm548lAfFptfT34law76rydKzNkj1Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5d5tYY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5d5tYY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E71AC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747655993;
	bh=GNYHzhdSkkDr6Xdh18RlzqGxQjOMN2OMfcgt7FvFrHc=;
	h=To:Subject:From:Date:From;
	b=B5d5tYY7OLpaxkVkJlHi7VsOiLK9U8mF61Ig2KXNs5O4IRewftuR3lae8ReQEPm6Y
	 T3Hws2BYa1FNshOiNUQ7ctjp6RWFJohzfbjgCKsnyWf9XxegtgOFM2yiddaAAbeIqt
	 P4AfRIrsPKly1bfjio7ozQEy+Ir2yp/GTzOVBPD5e6xd3a4NVjgm8uBnTH8sW9cX73
	 sMydTZCC8XOkU8FKc/Fai7HYeZhKGi59VFK0PJ3b0+isWfllVsl07W4QjlTMorGLEY
	 XLnvxEWJKemwIKDs4Dl8BZKqRP5/FzJOT5tIW7DM1WMG7vhUUaDx9MtEokjJJkVbXv
	 AY5QsGeow4Jrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F29FC3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765599357.15350.6828522955130626280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33aa5a8d14226c40866081bc6df105adb11672c01c3b5f1ff2c1b75677217399
Date: Mon, 19 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747655993
