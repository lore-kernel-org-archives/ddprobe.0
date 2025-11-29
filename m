Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B221391
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764384174; cv=none; b=CuEgybAPwRBnj4Dp7KIoLOhOjf/pnpwIZC+onn00GlWGwYaHWHAiOH7gWOtYvhXhbytOKVYpAL11fW4T0Jdn+hd3KnswCIfJ1g9xk+vJVXZKnynZ9/IK9Go+5QhFlaZoQSlDlnXCTgAAvvggnV62wPZX8IEV09Ax/6v0KRDYlwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764384174; c=relaxed/simple;
	bh=iK+gvnfcdMb8icXO2M0rHY3ITfSSt2PvVjWfGBJG36A=;
	h=To:Subject:From:Message-Id:Date; b=ffM4LKm6T5FNzwg4rJJbdepb4TVxwlNhTwI7uFh90E6EiCiS5O1yS70TwZt1K7AqHp5bm6ejRJVACqeNnTxmIYM7fyyTTMTZAMK1/vUvSWswVgDAq8CY5kynEZ1iNHOg+e/DTVyU8GhsMKWvnUoan7+EryhncM4V+7XkWlVWr/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yc6mvk4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yc6mvk4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F8FC116C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764384173;
	bh=iK+gvnfcdMb8icXO2M0rHY3ITfSSt2PvVjWfGBJG36A=;
	h=To:Subject:From:Date:From;
	b=Yc6mvk4hthAQSnfccNpt3rrgHg9VGEHLgCp8BbOnP6rmgZ6Xnm0tl6YPYgkkSIA6q
	 pyq0pFwSTxVBjjEGSQSxwIUfFy2vgmXng5uMLEahtsBLEkbS9g5CECi90tSzIHB6yE
	 vWY7xRsT29U/7sMnG6Z2ksoVK+x8Efl9TeQe3N9nO9TrBSIWoUeu+QwSHfCLPuetJb
	 1YkgDwt6i1a7Px9GJ94+CgIkcAysMUf+CtrGvKCYz5DxdOTcvNH3kEWP7NUhcDKH+I
	 xAdtmODsQSntwnvAr+wQoxJWIBnvHBAOY3TrnDUdR5HwwpHOn+NX6Z0UqQ2Vq15kXt
	 YaqKUSCVIYZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B41D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438417358.24659.16119640576197229667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e61593d3142797c4f13ef7f44d92ac88d19fdf3ad34d822e6d9e72764d90aa7
Date: Sat, 29 Nov 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764384173
