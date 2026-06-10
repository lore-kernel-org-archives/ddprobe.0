Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE313DD84A
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781091334; cv=none; b=r1JSlLzXIElJhUXZG6I1QNwL4l3RmqfZDvESO2NAKcluEduHHi3aFcjUt9oK17c2KtDt3b6iPKNeBKAIrEvUE6tHTfhO/ULRHvbIqPFh3jvVE7sW631HUHvrAoj/WKZ+VBYiNPikCg9cVFgoCLbhGrYO1jzVHPegD9jx2wmv0/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781091334; c=relaxed/simple;
	bh=VjC45Qh/AYKZWZoh1dyLv4vzczNnwLxM5g+DvTvYHBg=;
	h=To:Subject:From:Message-Id:Date; b=f36Wfh7dqY/oJ1CCQqp4ODxVixtdZ0j5fprVylMtSzBAdTAEWp33CSCgQxeAXkX1zzXWpl4Li7PCGbD5VRNDhEHkaMawQKuc5Pd5PAcQfKuWY8eCSa4y6tKTjt4aFjWSwXld93MxB/oWBH+AvtGM8c9CQus5gzkVq/qitfRGRUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLsOL3xY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLsOL3xY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12F4C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781091333;
	bh=VjC45Qh/AYKZWZoh1dyLv4vzczNnwLxM5g+DvTvYHBg=;
	h=To:Subject:From:Date:From;
	b=YLsOL3xYwQnOVjnI0+UmBQX/nUeZIrrwd/ekPhxLEjesmslTwXWjDWkpzmUiZc88E
	 NmresdXD2Jb5Mxs9DltL3S7siNYSOJJG1nH/xIB3SqU69BXWb/eys96SEdO4NivgtW
	 DS+4pm1Jw9mcFlG97/TAM4ugBrbb1Rfh9LhlC2UsenrGhznOdynzz/pOOFY9/tJ7jn
	 HywaO0nPtdFuZZnlfJE+uaw3uqAnMsY6XGbGfHRO635Z8myL41wilI7xByK1XsJNQv
	 h9d2yyQfQpuVvjxyjgHUdFyXUniSkLXYtnRKoskc0mIQ9ygyEyjlgev1iMkJhhxKEL
	 ccYFA3hXSZnWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F9ECD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 11:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109133368.30469.12916574300394938657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a89367e668f131d1194fa00d321e95b4bc94731fa69455b4a8ba84a5a34b6d
Date: Wed, 10 Jun 2026 11:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781091333
