Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4599D29B795
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790433634; cv=none; b=BnH9bhqwj/6xT/s2cW0H81Hjt0LVLIyFNbY2SJrdnMdI6guBbyQl9LplP9PsxAWtItLGgwXpTqFv7et7Mz6umxdAtP6tLk6j0QiU6X+D7XaHxqchOiVXEU/MZ/qlBQ/lT9wx5+8SkIUwm/kTWZuDL/NlK6a07FUHyTONnJY+Cn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790433634; c=relaxed/simple;
	bh=Syt/T1SrD0E1S5ALxi2q4qCvUAzSYLzrMeTQK65vgCA=;
	h=To:Subject:From:Message-Id:Date; b=ZCm4sl6VFRjRH94DtkKSRTJ4viCb/GStVuSGl0vQ25hgxIY99q5kcskRpukoJriWcPZ8f0bTdNJJjJrjsbAPJBx4PMn4n5Pztz1+yn32ukmdnZ1veLGOLG/+Ys8PGJ6SVF2CnWqor6tG1/ujIGdtI0lAq+cu2upwlqpThSazbCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRUcG6AO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRUcG6AO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3F5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790433633;
	bh=Syt/T1SrD0E1S5ALxi2q4qCvUAzSYLzrMeTQK65vgCA=;
	h=To:Subject:From:Date:From;
	b=FRUcG6AOViSbqCwSv0+5Ar6YMgyK8Q5t7tZUqMLCNrIWk7ku0PX4ZsysHEL7uHq5j
	 mhUxSulTZPG2LeyUxx9EB8C89ELx8hsBsmT+PiPT9lbbqk2FxrsAbmhiXnazI8KqQx
	 CuaclxFE+QHfDjN9cp3rT8R3Vx//pMyRCJqdR+Gw5rpG9smTE53oohPHljLGvWKWIR
	 KBNkq8dqu0m5qdbZQfCuqcZcaDeFC/Xp9A/y6YS1K6jA3smmowOr/niSS8gqoR9Mda
	 HBm+vysGB/Zks0pq9w0hSXizaiGHV5BrtzyslBESgYl1Fee93tvZ3pDWvBY6J29eN5
	 vROJ2zzrmaJTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8BFC98332
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043363368.32196.8797710750003806931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24838fc3bda79bd62635216d66da42946a4a5dcb4e6fa534efd2de17fb9bd5c8
Date: Sat, 26 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790433633
