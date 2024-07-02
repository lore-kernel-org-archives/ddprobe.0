Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5A24A06
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719882323; cv=none; b=SlmHA47crFncLEEjESZfeCoXFnXmgihAR4K4teuo05HQEIDUVceMRPvOros2x1w9YTqUfc8fdK484cluXwu4Ecs17di5GIChwqsl3jnbrDvIWS7dGqxMytZqMCKRi24XFIe4+6Lmd0pR2JFGEyWeQXyaZ5j3vogy8YsJcZTYk5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719882323; c=relaxed/simple;
	bh=cq3coqgfhyUJn40XV5CqLmiAyb0gtzu5+VQMtzcLW/8=;
	h=To:Subject:From:Message-Id:Date; b=hjDkRGVflA7X/Zk8ecVqwIYTHnT8VrlUIsAUnyEyag48aEw6iGwM2x4xZdxexPg3tZ4+V4jL0l109Lpwwz+7D6NMmbN84mM6R2jDyOftnuOLb1DqDSc5hKjqK9cOZDtOcW8qMgF07t0sJnrj87c+rhrBhbES6I1Nb8dRdFZHUXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ae4orXRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ae4orXRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE89BC2BD10
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719882323;
	bh=cq3coqgfhyUJn40XV5CqLmiAyb0gtzu5+VQMtzcLW/8=;
	h=To:Subject:From:Date:From;
	b=ae4orXRebFt8AYVsvEZixG0uTnx7gy48auUk8+0mFeWEGXqfmTU9JxjXMtvC2HtFq
	 HbjNvJa998RNW6Y9IwNi7onX3RVJuyjiRcH6/CJSaZfFgV+hO360F9uZLgAT7sr0MM
	 mkFxfEyR0rR1SLNOytcQ4oRU2q4MowHnX7EF79vdU6DW5kP+FQcrOB3aPp961fDW3o
	 hcSw+oWEINNMTvQ1E42/hWdYDrYW2KpXsnYFWbphildA/W231FDQCMQWXtr+IW7Hxn
	 +felsTybyZ03ebajTTKNxBcr9mhLm83SspD8UfWDFwv49ykXQ791OZ4zwOq/6pTOlg
	 Q84QoUNPDVq9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D60E4C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988232285.4715.16789432326646029329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24405dd55eb50bdf06c13db96d8709f4a08342c350edc09962e9224e728a510
Date: Tue, 02 Jul 2024 01:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719882322
