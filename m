Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380638493
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736888754; cv=none; b=H9guRC+ZUrVtMneRNzdt4TKnIYsxDmbvHvCq9EHUfII4S7trZGqjaetwM8OSVaWuKqVI1adM4RGS6Rzo4ORmTyrBZYh7XriqEbn4I7/bosKUTWnY2uAmuquS5kmXTyctQDOUMpIs6vSL2IfGJqjkCMjOhF0iAHrSnj3XVRd4VCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736888754; c=relaxed/simple;
	bh=VRwiPYUE3BrZuS7aAmh0KcUqeQn26EYOu6qV1P+2Trk=;
	h=To:Subject:From:Message-Id:Date; b=uFQuSy45ZzsF5RyrKR/RDpmqr8XWq2bS1wPdpx4ZA/1t9v2Rkb9DG56ZqhFv97YXlrr/k2XV0NjSk3kjJQqXfXkm2fX4e6eOOhIwc30AhsHzoJXebCKQaPPvvDeGQ7KG1MIExSNR8K785eYCMNZLWAGpUtRUgL3aB69pBbYJc1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSUS3W5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSUS3W5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3391C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736888753;
	bh=VRwiPYUE3BrZuS7aAmh0KcUqeQn26EYOu6qV1P+2Trk=;
	h=To:Subject:From:Date:From;
	b=HSUS3W5QAiUWHFYh2pW/bQ8USyQ7Y8s085rKqvI5m8QsMOy0X98i5LygX9MZT4J+V
	 qmPW+EiGMc2i19vg+BnREB8ZvCRNjalNxwY2qHxzaFwYyvNN7Sv+r3Z1CK6Rgz2O5F
	 r9y15SYY6nMsP4wJ/6F4G9fSJ19YZyhFqcRgt7tuXGLmfW+FXQ+QQgev1EMw/wPcbm
	 Jw8L5dU4fpX0yZHN8EXSVBvwKn8cOhzmun9UYC4nSlc3P+UcyCWPQjAPNrWY55dOQv
	 v0mGuPkN+QiPfvPdqoFIi1zkArnAaxphT9YkMPYf2IdV+DYb0sgMMpQ+//YjYczc+J
	 UL07mOXWENi7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF44E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688875362.8078.3111219229949515308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef34964ffac0ac9f3b5cd5776b9923389d65677bebf09ff111552f1e56b38f4f
Date: Tue, 14 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736888753
