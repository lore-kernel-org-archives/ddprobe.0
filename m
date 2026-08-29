Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539142AD3F
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787976034; cv=none; b=G/xvgIhflQXZdg37/koRc9OzDWswPuBTvHtQM67m0gVcp68c1OhtPxI5lrHmVXE87AJyZH91FO10MZ2z0XdVyKVqGCUDEmn4dAPnmppq+hPc0r5yhIAirB7gMGNQSr9YnrFH9FBngIB6Cq9JxzQnfnTRQ4CvUiq0liEy8QSKWXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787976034; c=relaxed/simple;
	bh=bsxEOfN0Zbj9k5kfit3aM3LDuDlMMS92T4sHW5IOwWc=;
	h=To:Subject:From:Message-Id:Date; b=ed/K9JV/5h4H6pF8KdctMsafda/ejjx7lTOTB9QHpwuaRfQLmAF2OUlXx8xUjTRCUJexzq1Smr4LW+ZKDQ1JXfzGeK81QHnUBmAwAGCe/5+n9onVEY4uW+BpTn7iT9vNWV73lBID82sLGfx8JaDm59wVQdyduTo8H2OEwahRpTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4vvCrQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4vvCrQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED4AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787976033;
	bh=bsxEOfN0Zbj9k5kfit3aM3LDuDlMMS92T4sHW5IOwWc=;
	h=To:Subject:From:Date:From;
	b=M4vvCrQ9bigv9e1Ab6Ub1k8+4LsuS4gAB00OqbSqwgyCjHdXY+DL+Tl8e78OLSyCy
	 svQPS1Fkf2MYMaDh8KGYm0+/0OLHiTPlQLyYHt+5Kh4rYQNgaOHqzhO/CQ6mOj0aVq
	 SUxhze98sb0B++RUTHGXpbwp5j2EYic8jcUOzYYK2217MIq6z9je7nSFlf/5q19RRo
	 2tDblqyjAZAg+ne4vk5tHXfaLMwhqHPZFSlGC/PJdHyQ+3mfO9bJJaGtIVleRCOtyJ
	 gsqzMlM3OuiieQ0RQY1QLPqTP6qmW/+87cN4RT1lkKyEnOKLBCu7TZs2+fgZBOkdyr
	 n9K+YNLlO3q5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1DAC61DC4
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797603369.19159.3198995142513875142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9c87d62599b0dee7a95e53396457e47dad544e12f192757a1b14a71597428d
Date: Sat, 29 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787976033
