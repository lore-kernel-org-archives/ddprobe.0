Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD3C184F
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732863354; cv=none; b=sXYQeK/j+mHKThd/Od+PbQdxjHRs1NR1Yi2Kg59htv4kuU1wc4N5hV7DC50PB+t2niqT9ZRF+cgbNaeZchVIiS49X5GqGYiFJDEy/6BILSLxeWGO6U9DCvtn7GHKJODa+04wAU4WKAR8+2CVsoYcWRkIDXsuNBerwF4XmybsAU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732863354; c=relaxed/simple;
	bh=a0jgLezpJrKbGRme5t84ixHX4OTml4jK10beB2z9vdA=;
	h=To:Subject:From:Message-Id:Date; b=RAHdwst9p5ZEPjW8su0qys0XbOuClCt8zKI/5VcyHR0OeqjD25bnlXG0c7n8M7TXO7zBpKDH1JSyFNPbK985hqDSCORih/aR2AU8Yc5PViaGIqFbrB3PsOs3cj7MwYL59nhp89Jetq9mX0FxtmhrWBaMY7PVFgnk7QzBlVFmWfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNAU5PXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNAU5PXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FA2C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732863353;
	bh=a0jgLezpJrKbGRme5t84ixHX4OTml4jK10beB2z9vdA=;
	h=To:Subject:From:Date:From;
	b=pNAU5PXK7/civKwrT8IsCPHj6ih7LX+k01Ry75BKJnitPc1E/QlhlQkegPvc7lFww
	 6+WfbR0iiFghEXtniLGNKwk1Jo2vgfQPM9BXf6OPoOB3GqxM5J2nIIt5T7ffvgCY1l
	 omBj1/1tCv8ZI7NxPOxqyDAoiJbVvirBzdqmeTPffyCPkxz3R7MqUC/fuBvut5FF/b
	 xxU88B12+GA5HkVYMWB03qmoHjQkixbNr+Muqix8cjulJ7AkNoBKXz4rkvrhSYrdzG
	 0WAnYDs4FRFK3YEj+7bNxYiCAbLXR7IV6ztQ+Zj9BPxVX1z4radsKnjQx43uW94dxt
	 C4dw645mvJiwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A005DD6EBE0
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173286335362.32468.4411738353662440405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af30b42765f08ced1eac2c4280f75a9768aec0a4ab20083b47cb4da771179f9
Date: Fri, 29 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732863353
