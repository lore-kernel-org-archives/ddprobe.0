Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332232989AD
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753105795; cv=none; b=GL4f2UjGJ0CGlTlQA+D4mtI9YtlVrCmnZ4moQy4yt4PJ9x3TZF5kI2bPuHSjnwimmEG9S5khxta3Lck8rcbIca2kSkFmpyLrf1FKaGmTour2IN3Q5CtvNtqPEp+SEY9kR+JEHBf/i8kFtmKRjOJKkfx8NxFXPl2ulCM+emhR7Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753105795; c=relaxed/simple;
	bh=T8jP041oKPnW3l0Z0BokBQrs+8wvPU7RoeXXzrJPOoM=;
	h=To:Subject:From:Message-Id:Date; b=kHqSqKg29wgiD9EAlxZGyjXCvcaZybLwAmnqdw0VRgtjoLuKOqVjk54rckv0jfgdPsomrdycb1glZlUy10D27KTuA8F0ay26psO7/H49Mwyvahc8kByGjLAMHjWBbUmmCh23JIij8m+zsKg60fe3YlP2H0nxNaWCLkZXVmc4zug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAy5kdY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAy5kdY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F78FC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753105793;
	bh=T8jP041oKPnW3l0Z0BokBQrs+8wvPU7RoeXXzrJPOoM=;
	h=To:Subject:From:Date:From;
	b=vAy5kdY7m7Tr90PEpljZ/08SyVncmItMfHYlc1bzCJRXXFDRsJTU7dC6gobFVov5P
	 iVSOYIzM4Cx9bBtkf3Nf6By61vklnZlKbShQ2vFYCu4H+ZHUHqnnrVFy2Fp6XwIgem
	 AtEClbieMlCCZoKvmzsjDy+xm2n7EPqlJx5A129vQVTbjdNzEHd3ybz8/0ICwftnBk
	 AYwxBe5gIHqYe+heGlcSR3qMs4XXXDx6Y4tgVV3ZFSFeMfr9hXzjPFRF6Jvl/p44xY
	 rIOk0sJ5IhbdxKx1FTAsted6H32kvl4J3EEWi0vsFF6Nnapig3avBpIVV2wpbZjB3c
	 HGXNOgIzPiSZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F032C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310579357.1693.16663497575706680530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15d874539058c726c5c56f53025926a92db387626ab74c43e4856c386ef67fd
Date: Mon, 21 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753105793
