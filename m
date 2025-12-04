Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F322FF679
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764889374; cv=none; b=efXgdFrcBzb2FfY5D1saHzc0CgZPrZhUU2L5UznEOHQF8FkhFyUc2mQbwZt4Ioaj27rxA6UGORiQ7iwzltrmrq7Fh3S2AuOgHK9yYlyP0iyGeXY6GpM6RIX74gHxh5Uq+wOjksh/U+qe8PidWEcvhQPqQf19dMBn8bb2V10E/EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764889374; c=relaxed/simple;
	bh=A5646mxoL3rwHA1dGpOlGmbZmfxKeC0II3ZrlEYmEw4=;
	h=To:Subject:From:Message-Id:Date; b=soEn/rLMy5Vy9R3HMU+mhOZZDdWsppPJZ0r/YTAt9ry1sc1kX1cDaciJykZIzmJnQKvCRuA3z2WowyLfHi2XAf82pXaK4rpSx0koE8kjEWTX6vTsZK6gXZo7DKQd9247ZOTHoew6ZXilgsQv3bgbdR8YoEY5o3cqo6H4fvegIsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYYOvpe8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYYOvpe8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B0EC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764889373;
	bh=A5646mxoL3rwHA1dGpOlGmbZmfxKeC0II3ZrlEYmEw4=;
	h=To:Subject:From:Date:From;
	b=SYYOvpe8SmX6OgDxBzHWB9lN1TEUwOdlS+iJT/FsM3ABl+PdzslggRYutPeGHHU6M
	 rUWG1k3Avi6fJmR9RTJQt2XdosRWDM7FKisniiQUwA9HuzupKuZtF24aFunyUMbJuU
	 bkS96WvM59i4RTr6vDnCf8nCDCpsD1kTKFqKgJae6qAT5cyaQ/X86iNd0xXodiKGa6
	 66LSxOhmqDw/JrxGQUFLtnLZmFN3K00wgXINhPjWOaeLASjfZvTijHZ55QgBokOfjn
	 gCtGlED1kslaEOfSPVs7S9cH0OV+wUu05cV/rNp03/Y+sPiSU8MK2f4w75ar4+2pKr
	 +6mDMGmFZpEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94881D2CDE6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488937358.24996.3369511166868057816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8aeb7e11fae174578a31729fe67011f22e5b8ba7fc4467497b9acb2b8c4b43a
Date: Thu, 04 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764889373
