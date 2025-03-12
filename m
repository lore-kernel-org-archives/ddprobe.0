Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D451F1524
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741821534; cv=none; b=s2BNA5p5A1w7GGT43GDwu7WFzG2oI5FmymxNBJBt+6OGgk70Uke2Xl6CmgLg5nbZXXcmVEmAdHWInt8yQ3UG3soSPisGgIwT4sBURWB1kr6NXBm5KBKI2RIqaBGb5sgmsYPstoOew4X0SZpcWkkQW9Q5ApNOkmmfmUiJHJXHLt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741821534; c=relaxed/simple;
	bh=RZyw5atXUFJJXKBQhkDch0twRJMjf0LlEO/cKbbR0nk=;
	h=To:Subject:From:Message-Id:Date; b=OSh2L63gAwLh0ZGfl2Y1mAo+W9p15sYEyhR8hphHXy53hH4SdKNM50ZwJUbvYr/lRLeuv5hTeqMJfmeF2pUxJ1aMFrjpphiw+GhvJctStqofapJDWifPKGFkWbnLQwbDOiDPLPcBkoBOV1ttb9Qy3bsIdeqh9XYkQOnMtursAiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GciAzgaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GciAzgaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BB4C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741821533;
	bh=RZyw5atXUFJJXKBQhkDch0twRJMjf0LlEO/cKbbR0nk=;
	h=To:Subject:From:Date:From;
	b=GciAzgaUlyWveZVTVQnthzEaP8kCCy7Hce61A+xwsv0oVY+s2LfkrTT0fSepTlMK9
	 uymjFb6tspTbAojr4z0GtkhOhKgM9uwr9kjl0gbsAUo1IF5vET6ZfJwec2r4pBY/mW
	 cE3lBa+zbQulWFJlSZ7t3Paot/hQntX5eFxW7fDRWgtcALxoypUndaCTqw0dLDl9IL
	 AyzUJK+zBHiVKjd4l0PbsUsYZ2XO3Yl5vSVTDl4HIZJ3BWaQoCYWzwgBz+trH4hDpK
	 EZ/Hqw7+alPacRRx8edxliUoB1JhDmZJ/+JDk29NgmBMomF9f6ceS81OnaQFpPZJM9
	 Cix9wb8LNPenw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E5EC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182153359.1908.13654678753901787515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa041a1eb296181903f368e9c7465f886714e2d993d646420e54e081946d56a
Date: Wed, 12 Mar 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741821533
