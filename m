Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B66E2F22
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735143354; cv=none; b=gdyYOFjpGKTbDiqTwi9MMrMrwBW8AbrbhOhw78depWhhuqBrzI6u82/vRJIlFN7qfAoshv93wq/t30eJVkv63phfMd8I5HAm3K83bVRMbcGiSM9FkrAR9VcQcgybumJc67L8qqR9Cw8pGbZzIflIdY9c5m4uxubDIb6j6ayfgtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735143354; c=relaxed/simple;
	bh=oVEPQC09TkwlHXc2gTK/0wwx24PiWcdqkf7t9P6w6lM=;
	h=To:Subject:From:Message-Id:Date; b=DoiDe2A07Y6FhACNNRadTraPlgEnnXphIHh1g+0xXSuJaYx2y4emlNmqa9Pc65vNf5X0PJjWXNI3NxL6gqE/HV2ba3JapT13dp3QPXGpOj/WILpPaoVWGqdnsNm846O5tA7zpbDrdZ52n1kDhaKoQuvM4/lDrPnTfgvqFJjzr1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyR0Sdlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyR0Sdlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EE1C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735143353;
	bh=oVEPQC09TkwlHXc2gTK/0wwx24PiWcdqkf7t9P6w6lM=;
	h=To:Subject:From:Date:From;
	b=IyR0SdlqV5lv7gdOKfYu+zVlJAA6OwpkGY3HNJR/noy1rc3iWSdahanuJEn0hJQii
	 n8+Ylonhj29uBe7Ez07UJhR2WcHI6JHzjQnbiSrCJYkH33TiAK+jUII0P879USNZ+T
	 43lovdFRQ+GR1SZIYS0AyiRaGwIeRZRidI6THR62dWx8/OVOrLpTZupMXZ6RoGt7u4
	 FlkjwIZ9ed/YDU4PO7ov6hEY14gv1nwELX645jjhmAddiXLAbsCSRAlivQxXpSa4jG
	 6GqU54XgZG9qQK9SB6ulVTJrfh/l+BdhuwomwqdQJc3Zyo8RSF7Cw+7HKrNA0KOrUg
	 miRw7EL8vSGTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B06E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173514335359.8978.16489378118712669326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328734681b83ee0e4de16be7f33f20dd6b05411b52797281334423c03417f5e0
Date: Wed, 25 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735143353
