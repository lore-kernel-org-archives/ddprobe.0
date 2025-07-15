Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1468633F
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752609595; cv=none; b=e0DFfvhyYTkgRVxA9r7CaiDPDYpKHgOM++X6ukapsgzzQ8u/Kj7NUFCvdZ6KW0ZjAHy0wLVdnn+a/exmkMeI0J6oDlC7or5kjVUtRjXxQCdsHEYW57NcjuVRu5Mz+Aou7C+uxwFY7PlrmyUgYxeBCwgv7L7OXtYbwKz1gq7YCdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752609595; c=relaxed/simple;
	bh=6WZLb3lwvZD6ZDCL005bdfuCgSoBq2sw5xO8EoBg0BM=;
	h=To:Subject:From:Message-Id:Date; b=n7U3xberWZ+5OwlDCc+aM7NMM8Xz0sCEOgHwkFzTTgNaHrex3/5PDlSSVXBb5HjAIm73lBd4vS5tbDPVJtPybSivJAamc7tpPdsgOShTcGW/OYayGjI4J4C7hxbuYIciwghUvSMhwejtThU0sshaaPK+jllk3TUfHiFmnuR1EpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvlbWRAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvlbWRAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC73AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752609593;
	bh=6WZLb3lwvZD6ZDCL005bdfuCgSoBq2sw5xO8EoBg0BM=;
	h=To:Subject:From:Date:From;
	b=uvlbWRAOj6CEcNxDIVhhilbRyeuLJ/Qr9lEqYMn2t2maVF14sj2VIpNaCOZq2ecGS
	 KWTPXk5uOK4jUS6+06/SdyeqE+2kA3/lSQXjCZtbi5AnxuX7qb+TRXCrYgAZAJviji
	 KiyHNPcVAoEEBTykPmDR9lhfHcIUS/oO3vzPIhEOBgCxyIZtiuhLocDplmF0NmIQAo
	 DeFnn24dr2pcbpyh809Avqq9Ieb0HacXhVl14y2T9sHng9JqL6bWBf/xwps4wQ2VmB
	 Y9WL8xcemXttacWOmo5nS03tRhpRbfnuQ0GerDmoYia8UYzp+Gr3IaycPWFmdWCiuM
	 NUhOa8Iurygdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB1BC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260959361.10363.15741115925971939839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3782c2590a9c441f1ed54b638387cc12ec82aa01fe938e4edaf515106be588e9
Date: Tue, 15 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752609593
