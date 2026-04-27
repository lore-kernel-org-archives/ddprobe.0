Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC1A339A04D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777291053; cv=none; b=K4ufwpDE2NMtyIrejrr1qqxTDevi7QAlQ2AFi50LDNMy8aju0WandsD3XmRsR0b2rRf0hjYek212unxvNMe655Zw66HvOzlBTOnmIbRYusKQYL9AQFM0KFYLgQOkQJrNV699JcuqbUaMcuh8OCjMzA2qlwcfoEEZ4sA2GDrVmcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777291053; c=relaxed/simple;
	bh=Az7y4stXCcrICIwhHV4Vh+HrVsutveuuaBGkLzlNarI=;
	h=To:Subject:From:Message-Id:Date; b=dXkA/iImv6gxQxdv2IuY9m6ESq7CnI3FdSq7si3xNWRwDdfsZ4myVC0TaXfMXHGdrxPTkQ2fMhxx6teVa6QqGDiZyZ0VbopF27+OL26AqxaAiCOeToBPmXl5WoD+LgvaKOHkQ2G48APdGW0xJzpt/STthfGKrYXgIUTmzHBghvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0lBVtkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0lBVtkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87E8C2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777291053;
	bh=Az7y4stXCcrICIwhHV4Vh+HrVsutveuuaBGkLzlNarI=;
	h=To:Subject:From:Date:From;
	b=l0lBVtkr+Y03f7W+NX6G6Krk9Qke/3h2Qr9wfhZTPFd7IsW5ZyFCKokujPuTJynUd
	 zvpvEw1tJpsRMiNj/uqpLcg0gzXtZzoXe++VYeE8zYLwq5M4a9tMYMXY1WxHUp5NVZ
	 fXVBWTo0vNy93M4fLRzvPgFayypAcqbQNTgFvAyAVYEkZ/2DkiW4VG98br5Pjm5BwE
	 ibtOLd5EEvHe5zWig/mDK1G2FMnOjh838Xi6c3Ckk/6pMByremrAhP5yRbC5ADtqxr
	 LjkbNPhWCeqKM59UZhEmmF01JR5vL8ZAMOH5NcbhMvAbMEGAxdMEKH7f+Li6ssZfH/
	 GX5ckqyuljK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F02FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729105368.4907.12942290020603691420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a4319719801e263bad73f42f83b578e27ec394042d52391e579c7a463fb4e92
Date: Mon, 27 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777291053
