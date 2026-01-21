Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D81835FF4B
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769030634; cv=none; b=u4k25P1xpx7D/UEz/VFKJPj1yyLPVcmyrZIPyApwcTJxbsLRf5dvtWF/TBjJJB8mTb9oVzGfIbr2rkmiD5FyDtUo1xISSvKfx07skAbBA638tBKGjuASZ9wkdzVycAmtMD1hO/45jb7yqERHdfcR6iSRw2m5JWK6r3+Z11RIKoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769030634; c=relaxed/simple;
	bh=7badiFZDhmeZOtEzIsPHJHvwWydn7+eMUMNjBG7WmuE=;
	h=To:Subject:From:Message-Id:Date; b=WxACJYL0sODQmDVxNDImHKB0FO0nMH9O4BZxcr8t4YTS36/8beB0tGv+Ow7iG7FCrypCTGsbdFfaV0aFCfEkGJ9ukXZUCkaje350c6aGT+fXhH0g9qSL5sTdqKpCWH0in86dxJIdqNQsaonIIPnzG/SFOtXCB+O6GVGA3DNNxvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Htn07r7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Htn07r7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769030633;
	bh=7badiFZDhmeZOtEzIsPHJHvwWydn7+eMUMNjBG7WmuE=;
	h=To:Subject:From:Date:From;
	b=Htn07r7cbYsJucBRm1Zx6yUlR/P/VbFHNmZkUPb+OjNB2k/KjZZEvALtDqjnC5URC
	 tOKiMvCmYh0jN7OsIszNPm3iBeVgNNLsPobHaoL7Bb5Jnsi3r88483EN6UH1ofYJU8
	 0SmSFR2rO+/Se4i1CY+50czOrO8HIPSaieGUSVfC20BCpzjz44fhzBIucntekt44KO
	 2Z7gx/ghQJIrhVQvRL+hBYp/+umOxca4r6udufVF2LlmNDbX410hCRQfu3gC6VrL5i
	 D9HfrH99u1CcKiO687U7ui7EmzSSy0sQGB3mi72+8MC+cT5xVSzFTW7kb/RNEPM7ge
	 5+dbnOK868sTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA5C44500
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903063358.2844.7757465624702435785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50a93087a2c72c1a04026ccc9e21637a84bf480e9c62fa8e34275b5ae7fc9d3
Date: Wed, 21 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769030633
