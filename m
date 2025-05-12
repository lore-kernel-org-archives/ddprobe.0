Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43144296D21
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747070394; cv=none; b=fyw3h8UET6juymqGafzRy95CzXieY2jbEK2I0SvTVuP5pvGyLjSPhlj6T5kVYUJoEOJ7AKok7PBs93+x4l6Vbxqmi+bcbgrc7m2yZIabctKqhZepvkQkBnB6i9cOe13Z04RebEvTR074Z8R8SqVnjR+MpFMRLZ5ftB7iZM6kMxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747070394; c=relaxed/simple;
	bh=ZPn43q3gJeUjZ0udEyWbWmAptCqwfx1BTNnp03RpaMo=;
	h=To:Subject:From:Message-Id:Date; b=hxuoLEZ3KygCeK6gKaV+bRLNgw97f1EbhnWLxuM1VeJDrzf9jtBDnJgg4bomc6DW6Z29ZLJc3aAF/kxmWboHSv+YbrJy1ScGtRzVC/ql2Ex2p3aGFUyQy5fpXCx3dNszfFOUM3MU+1KNthJK/m2D7+gHeDLXsoD3u0jfPiy89Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhGAihqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhGAihqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05AFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747070393;
	bh=ZPn43q3gJeUjZ0udEyWbWmAptCqwfx1BTNnp03RpaMo=;
	h=To:Subject:From:Date:From;
	b=UhGAihqi9vg4iqKZ9m7YVSkctRYo28EUMqUU2rB2/aDiTWGqLokBUKZvo66dvBOcR
	 ojDpN8EEejY4JsunOlVDzSHpa9bonafhtbnDRgs3XHo6sRsKVTrCB75pxR7+q+OqiF
	 ReIzmWBkGgh/wzyPnGfz2nMfxex0VextgNk6nXJiMasFHVhkUL07qUC6BQmpxWxhUH
	 HceUXBBgpuQvmdk7+xmkvS8F5hlQyUoGu9IDH0DWzzrxk1M1cNlv7VJWcySveae6Sl
	 XQ33UYq07WBYACKDgBEEojtLSKyeOIhr7y1AvfPlOHG9UqXSSn6CICHFbmXonUVxZz
	 SkFPjVdy/wK5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BEAC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707039358.12767.205024106000787441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11c25cb49b1c90a1ddee9993950a8625afdab679f61127a94fafdc93485a4db
Date: Mon, 12 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747070393
