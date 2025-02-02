Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4740CC8DF
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738479954; cv=none; b=ChJ0HyAufSCBvwVZjLhxPxCdLbBwjELhfuLyusYxnmCcqUyFZCinHmPahK9BhTQHlEnGFKZnfx1JYYyI7vtpMeyA5z2J1ExzS390kmp0lMUmhSD6IFZExLBM/7QfL1LukKRGUdNjlTzxYHhXkfKeZksDjiSN/f8N77nzUF0Qhno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738479954; c=relaxed/simple;
	bh=oMRoM84oaXs9cLLbp9oxEQjG3GCHTBxrgLIDmShOUMM=;
	h=To:Subject:From:Message-Id:Date; b=VwqqUg4Xn31pkHSro1r3RgOW4LgOjTyCbsGUFi664rMR9Y7Ad4So0qHorXyDYdyFameAdnn0cKBXXaeNeMFDP8QugC0Ug2ZvRH52zhqI0YNVqO8hmzNi+AamtSurkmadkxHQI3cgTcVEbz+d/JLgF3hPUFo4Ubu08ucG+FD8nWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXzGhJ+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXzGhJ+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB101C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738479953;
	bh=oMRoM84oaXs9cLLbp9oxEQjG3GCHTBxrgLIDmShOUMM=;
	h=To:Subject:From:Date:From;
	b=dXzGhJ+HpctY1bYj5Jt5TqCyf5y53p8dtUBgxGn/Wu2mzvtaodiLJMwsVaYf4tJ/5
	 HV1KFJiyswytAst4NKpKMIsjO701hLzy8W8loJW0sgFpZqT4crqXxzETs7TrFsWImC
	 w9IxZCk6uuUfvKSNV43kbJqTtEm5BgLnCTrqW/TJ44sASuHsPE4Le05HKelYrqfaiS
	 5TBn9/+uJ0KM5lS8e4jGdkEAWRIrXrbKm9lEbk7CKkYIkOnFuHVPX/UCi9pSAV3w+V
	 6Ry5XjQOJvRFNykqrfPu7gu1Eqakia1yhaRodFV6+jI9hPwqArBZi0ozxATerAHRhW
	 Kw96Ji6AOma/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A03FC02190
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173847995359.10161.17315518763965362637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0488118a2af6d7cac91fdc94a9eb6887638178a3e42b6509033746b55dfda38
Date: Sun, 02 Feb 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738479953
