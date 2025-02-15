Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568071624FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 04:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739592534; cv=none; b=pcNFjI5neBkojoNS3lqRUA0lQFzMiSNwrakWPRjKaSOfv3zU7U6b0UxUbnmUK18CmOO2DAqu4hTM9sjgsIWaS5jAlr/h7oRVTbBTfO7XeVOEYkQcMUuacn7J3WNGU+yVj3q3TL0WvdULzn3rnTSOKbGZIXEyzMG3ql/+lGKBAlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739592534; c=relaxed/simple;
	bh=bPMVo+jigTnkGDaEd37d3kLlMAXDKnOZdQDXe+cfzhY=;
	h=To:Subject:From:Message-Id:Date; b=cLUZN9A+8t1xK5v8hvo0b1Lql44pWq2Gntf31l3JqmsEcvz3A+ojf1rce+ItmPpzgdUjNJLv9t5m9zCE3RxBcMxJLfhg/dcJLH6QpIZLrGU7VSfvudi128i8blf11tQ3NyHDh8JDDuK5OO9zpfUSeq//mXcSG5SW/kf2EYR/GOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaF2lg4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaF2lg4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABB3C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739592533;
	bh=bPMVo+jigTnkGDaEd37d3kLlMAXDKnOZdQDXe+cfzhY=;
	h=To:Subject:From:Date:From;
	b=NaF2lg4yQpRplrWtB9fxalc9dT5MSqv4Kb2hLV/2w03Zd8Fl5Eojq5WHJVahqTZJu
	 +hQmd30IdtuWYB01j/9h4PLjrSivhS8wlApf4XQjqKzOmQeq6/cskPc4p7g1epCkvH
	 h8wSyek8FntKn+im4awdj2l6lll/x+T6klBZsna/joDkA8J1nrS/8ItJstBX2QkjC1
	 vDlsezJHGRM1LnmZejsNKaoSmHM/p7PexGv8m2uyW7/fCqBRRB1dpJxo0f5IO5xZB9
	 9RBaJS8Q57qS/X9f2WRsCBEA0O8e6SmcHoON2XRSvUTGSQki1i8TQFWcGA2PaNhLwB
	 bkXiGbJCP2XTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3EB8C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173959253364.5483.3649970811046425959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7f3d3c469a1df39bbf9b330bc0f83e6d3867b0582d078b1bba4e4aca9d1c09
Date: Sat, 15 Feb 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739592533
