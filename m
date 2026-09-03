Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5B637C927
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788475234; cv=none; b=PK/Ss59ozw/pdM6RSW1xEqvRDFmM6P+ADq2NzLqY+epAEBoKYBN2CLuCXAlXldMWJ5UQc2dRNPeCmVYU8cNF9C5iWLF0cyYJdqW+8Rl6Ms5Ae15W472HTce3i05CM1oh1p2spI7KpfXMFmseki5L8qVnkScfJZLhFqjM6dU8K2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788475234; c=relaxed/simple;
	bh=r6cLmdu+1hxuKOK6QJXDzjg99NZcmZPbKcfSE4Ct+vY=;
	h=To:Subject:From:Message-Id:Date; b=Rs+/4IQb4UvW5dbWr/qiOmFFirgGc2HXCrN/f4tYy9+3juZ0g+4adLRIy/wNe/r9pzibCXrDax8RV86gL8rWfGkrIzlq5GiaoyJvn3kEC/+NhJRD77lBxbvhdAZBznb7uox5a9GnNBQFiMgMwoj3Fmr68UeYPWkzTeXApqdBafA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TccRpXYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TccRpXYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA31BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788475233;
	bh=r6cLmdu+1hxuKOK6QJXDzjg99NZcmZPbKcfSE4Ct+vY=;
	h=To:Subject:From:Date:From;
	b=TccRpXYbm6XtUEpgarMntreojQyiIsC9nefvd9Q1eiHC3AlLNnsGhCKSyFkPus/wu
	 iUwVfQkK6lRV5sM9W9BhqqNKJq61M6661rokDz6EXB+Umv2/YlAAiH6i4t+OVl2fTb
	 BiSVs3Xww8jI839MPcqtwdDDA16qMiGPKClCBPRcjdbn3ErczO0trMc4di7UJNKccI
	 77Qw4DZAspTRpH1fOsFyeha+9QUDQBZDebL/dwkRznzhK3Gu9wPxvqv4SuSxsxCNGy
	 FVDyBoSsEy01WN3VXuiM0JHdLY1pV5hu4ddePZzbv3wP0w4yt/82y5JTc3t4AV4oCI
	 QFMu8boArgDrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36D5C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847523370.23112.1455273476262083656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190cede1440b910a60141ea0117eb34b0e1cc9e38b2b45b46e5e5fd71555fb26
Date: Thu, 03 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788475233
