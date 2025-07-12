Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F2F18D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752341995; cv=none; b=ScBGA5rjVy7pNxFs/VaRtJO6YVTyGH3niTnftbJPaVnf1ZXsp2BaIQPRa7IDmRBup9YKndzdNkfEQwR9vpsQRpXFBk4FoC3URipjR/bRAHhCsbP7xlTkvFfMNKUfbTpspk2jHAKLXBHovpSfy+4+ivPNOXwOzzQCvgtvxZAYwlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752341995; c=relaxed/simple;
	bh=lMI30DPXO6Z+PwDi/StOcPf0DY6mkikC6R5lqVKyzNA=;
	h=To:Subject:From:Message-Id:Date; b=qfRDcfT/nu3r/FTbyoQnKhPZxSdHeAr0E8oEvTvskaC16P+QwfdTjlvOUPG5N2jwGa03oohD6PEo5jklTVgKJ48Byyu72lOSc7R8LLsrtESv6R+rlB0/g7gMqDNQ7hwbA3BqxDr3plBQuKxVW4oOxtawPino2684ibEZrlR3UJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKF3M1zT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKF3M1zT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78CDC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752341993;
	bh=lMI30DPXO6Z+PwDi/StOcPf0DY6mkikC6R5lqVKyzNA=;
	h=To:Subject:From:Date:From;
	b=kKF3M1zTw4cc1ijZVg6X19bYE75fQqNAXL7VMNDQCWmLq3hGDkFIlOfD5mwbeTRsg
	 vs+QJjdNfo5dMzPCCgUDMz96vSk1PjIrtP9/ZcpYL+X6JLgG5EGp31KL0uUPJTdH/x
	 0uBAxxCEwVBgTJACXvFbYo7xyNEMextH4fwVYnYlZkRKk0dfvvafY2plOAg/u3wjW7
	 +WuRvWUcs7RpQjJB1AsbsedRAlC3wQ4sQx5FRjhxmKFlrt1xESomxwaxC7zojCXgEp
	 /8JCe7771WkRgNJ11U3LJKm2VEn5KEoc5s+0ztp3JzWzJ1rcYUJN7j2OK+PBWd1IPA
	 RKjJDDDWEQnqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94699C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234199357.8072.4760294297691180465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f222c05d58cd527882ab32bdc260114394ecf48711beef43ce42b1f170c70412
Date: Sat, 12 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752341993
