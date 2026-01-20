Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E0330D58
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768925034; cv=none; b=G6jYUS0JL+YraI4q5SW9sGnMnWwFjfLQ2AbjPHYsQG/m+oAUNVTrpd3B7MmHwjxx9qDKv8A2v//qZX86tgnEZ8bDBJ5mXDGco5+7i9Ze82+7Pne1ea5Ton76XGmiOU/0+VKYASZpieMsLRhj6TE84fBWSRh/tQZTNt1KUkSlrlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768925034; c=relaxed/simple;
	bh=KvAn0G52JlJ3eZeobhIvnkRjR/cNMk58Jq7yniqS5Nw=;
	h=To:Subject:From:Message-Id:Date; b=Tgt3Fgq7LmYJdpHFA4QY//cTQ/Ngskt/35QroUc0gi2TmcXEhHbG93Vziw+c1xv0WpoDwdGLQzRZvGDrE2y+6FsyRLXGqW6AdvuYuzVnOaQ0HEpky60ba8Lu/o7X0m373YrD2jo+zGyTUCIwJPMJgVYNY1zN5DT41SWq9+gM+jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTdQi+XL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTdQi+XL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB8AC19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768925033;
	bh=KvAn0G52JlJ3eZeobhIvnkRjR/cNMk58Jq7yniqS5Nw=;
	h=To:Subject:From:Date:From;
	b=HTdQi+XL5+ke80tlLGt80Y73xHvfDmErWPm8Fm6CerXbeplEsa7+Fs3sI+4kdPoaf
	 QwxRzFdaaCauXKoIr49M6NsjHzlViVnEzx/C1hQKmpHnuJ/6mn2lKdi3Nzm+V4BElm
	 nZpxuRy5sl+zF/nkRFzB7vn1p1ubaxAfc4BbCrgOM8RTgqUZy8byWrcm85UEEzF1JT
	 2UWArEWO2xEo+bKM6P1dZhMdisCSFZ1P9KxlNJGue9ZQE7RIJOg/pvaC7HLZdF0o94
	 00vZoXwEvh4vFWWp78nKAZsEKnM65Dpl94GFcjlR1qhsc9HoZemHs7YN6Hs60W3bYH
	 VV9tT6TuEY8Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9050CCA5FA2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892503358.21224.6254157864771389534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4f9d2ca57ae41ec4ee2c6e33a678140540609804653424b04317dfdaebe76c
Date: Tue, 20 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768925033
