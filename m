Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA7323815B
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764436974; cv=none; b=d9O7qBO+oapZCVadGWrKTORwtGL+ICzB++9QrPz3fdQCHqEgRVXbjqfNvMLq1Los/GgQZDXTAi5n0skEAy/asNhDSVqfPw7j+A5VsMHemTyXLrGog2NWDmyGrEncxzSJtzSnBFVGbSAQZ4lJDNG4ZWlZcjvel4TjayJlwKG7ebY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764436974; c=relaxed/simple;
	bh=ssF2+fYWc0/5uI6dg1z01MrAr/U4hsDXy/QF81zO95U=;
	h=To:Subject:From:Message-Id:Date; b=SCd87Xbwmi7DIk0CulNgpZlvdQEDW9/rHheXW+5Q9swjO7GJLYQaEepK33TbIyZ/VD50Z3UZ3BJRn8zKpOBD7C/Aq+7OU58bVGfCnoJzzJrS9ro5f6+LiFAsqeKuS4/v+NnsW9WfeBzke87kRN1z2gG/jUQyx5Sl0X3X9efa1ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wbyp/fRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wbyp/fRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6E3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764436973;
	bh=ssF2+fYWc0/5uI6dg1z01MrAr/U4hsDXy/QF81zO95U=;
	h=To:Subject:From:Date:From;
	b=Wbyp/fRm7D+Vg7bHi/tM+kkE7Eix0fzNv0LEawbA4ADnfg5IDrTU9uUz3q1A0mM7Z
	 kIzan2ylcOhH+lWtH8CpYQR9ersBQOgcUN3ZeukqiuFs0NQjH0zQJJe8pbe7wsVpna
	 fBpk7HN9A3MJ9noc47ge+GUO3HRn+BU6IovO6q2v8WTiBYh5AgIA0fP5cxtTCirGxc
	 au/EAPsZuqvAWXoDsSHVZoLXn7hG+4Eiy1HmKbj95UTBEsUBcIrFzE41QFfSCB99qY
	 YYNk9tzE9XghFAj7NGzgdAzSuRUSiLoFQrxeyBTaV3f/egKNQnKMEJctRcx2qsMlZx
	 lEqBgXLN3aFWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A7D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443697358.31385.12606165957697586368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d5dbef069f8369aed5ebcdfb9b31502c2f7cbae285074a6d0290936ddd276b
Date: Sat, 29 Nov 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764436973
