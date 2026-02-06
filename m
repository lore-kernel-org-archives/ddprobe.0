Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E14E229B2A
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770338634; cv=none; b=VLPjsdpTpoWVQj8xGqy3OGmKrYJGv8H/hODuFJZKtlq4rY+ukGfIt6l6cKfjJE98sfi0enjlrA/uE+z33OWqkqbuTo3OtpXqqFR18Fw6xQm3EAiyqfBvxPAswd4TinAaSHDQ2ZwgI7sfOHE17YnxncsvEQrnRfmo783E0c+Yma0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770338634; c=relaxed/simple;
	bh=wEV8iwJZ8Bb8BIHAyUqrzC9u48LULU+gwTbOGI56IrE=;
	h=To:Subject:From:Message-Id:Date; b=NNtf326MffXwL171xVGsTOxI1PgHXy1HfW5/q0XfZTuTC40gQEgniS3+XTUWvwBCNcNdb3gwKYTQsMcvyQUrTU7JNUqtvu8TdNoMoe8kqd4RiKGo3sECK/paajVVH5FVzKS8IwH2sBSo1iJk3MHBkqss59HIp6UHQ2masHUsz48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skGrwI5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skGrwI5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E72C19421
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770338633;
	bh=wEV8iwJZ8Bb8BIHAyUqrzC9u48LULU+gwTbOGI56IrE=;
	h=To:Subject:From:Date:From;
	b=skGrwI5cACRKuP/PPTa2sIW4aY6jVk0dZPmRUv0dSoIXt6pAtUBADal5EWuK2iUML
	 39anOfq72d8xx5OlzO7gir726AnUhozOlTGFpBoItw9IiRZzVIya68e8uwrClf1EkS
	 1u4O7x5x2+MUAi0Imo8zQ6ZSbs18M9fdCy+dY6HcXZqBj7U1ke7O/krw6X5Kly4cAQ
	 UpBWTx+mEaLaciFA3uiywzdS8oqrZwCw+vGSCAKBiqKdL+SoC5f+3OwbP1cL/kYr8x
	 hkf+5T//cnet2v/VEim0/XW/CzuCy5weHbkyv2UyrQXmWGKsXLz1ipE4gKvwh/29tN
	 mMCI+6iCzNXig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96452ECD9AA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033863360.24706.13643166482338554390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3418bbb27543d28c137f774871156664ffcf9f79f0f25e32c39bd93141780d
Date: Fri, 06 Feb 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770338633
