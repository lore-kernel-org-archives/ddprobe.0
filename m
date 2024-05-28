Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F1F17B432
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716931463; cv=none; b=bdNEiRgZFM+2jqcSoMGFZtVw90Z5xKPLFVBgJJmY5dE7netk7kdhznhlVMLdljne3yvNZVnDPopqGHY76uzGAdBHx+W3G1nLD/wtpWhcz2kC90eDWEDxcqul435caJxLkvHZj251tkltrkL8ck5sy2ODyEi2ivXtC7/hMIVILwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716931463; c=relaxed/simple;
	bh=PJqFH7SQb4DDYjuI+qr2N0nl+gTeZqwRAPMq1BZEKnM=;
	h=To:Subject:From:Message-Id:Date; b=i82Fk0IBvztugVU0+1vYKyrQ3KI1iN8ZQAGCa2WdGq5r8L+8GQtIKax4cgCRkluv3xwss6utmAvHTYcPFEAEr5rOzFjaXzy2TM/HeqQx7PmPrbqEt6GCAClSs9yINI3/XIDgqsEKXq1M0ya8vJJOgb2D/k69AovG6zBNl0gnI4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOnvM/Vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOnvM/Vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E27ECC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716931462;
	bh=PJqFH7SQb4DDYjuI+qr2N0nl+gTeZqwRAPMq1BZEKnM=;
	h=To:Subject:From:Date:From;
	b=iOnvM/VhUOrMxlykWAfXG/w7pIENKO8a5/Qj4YE5O/spnXE8Z5BDEP2oj2yknvETs
	 P99Rh4NXhFqUelG5yTOwTV1QYmh73p2WNg+ZnGVzOo26PforT559xQ1kacGVl0EnqJ
	 oRkPoaKtiV/DWYarIsFYySCk9+j5HIl4NLsFse7GdjHl1o8LzZVES++k6zgpxfu25Q
	 KT/Gp8tgllQmDCjRMW6M80un0YNXbwoiSQQw4mThQwc4jUTSagqBZUL/l3NV8KispT
	 Hl4WlQTPEdNVB0DgCXVG3rax2ZLf+XXYHOoL7yglriIxwtHnVDSu7CSVP+YDP4TH5v
	 i2nnB9UeexTXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C701CC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 21:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693146278.5217.384995640761066957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb06957d5710e9f2e5a02ae84a918a66fbf0e0589a9442d29d85f5acc7f65fcc
Date: Tue, 28 May 2024 21:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716931462
