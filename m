Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BA93B840B
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788538234; cv=none; b=GRZ4nlOAERyMKDUYK2ADGFG8kYcTc+R3MHSd0/dba5AjiwIao2JI8s0NeZrY8n1QkREKmhML36Cx4bC8ti4TNq/gSHetHFvqY3349ZPmZjESDfxcE8HVXib5UqxjkDL8FLdi+Zh4yXs5w8EMDoANWNriWfK8eDh2U7fxj/8iVh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788538234; c=relaxed/simple;
	bh=M92M5n7vsPouVMp4Y9cQ0xOpVNTd0WOg0l+VazctL5Y=;
	h=To:Subject:From:Message-Id:Date; b=Ov6Jmx6uUxEgl6YjloTycaKmMgkPIwxty+vLO/0T4vkvjs8IjQyFZgf4UeoMLY79HhsvvVrxm98gkuZO6WChsnGqnFbuodAnrSiilgpUHMAuNZmlSlLTIusVT4bK94f4WSCOu1y+7bhUKz9V0OjDdN1KACv+i2akITR0oYrqT2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqmnGzD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqmnGzD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E31C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788538233;
	bh=M92M5n7vsPouVMp4Y9cQ0xOpVNTd0WOg0l+VazctL5Y=;
	h=To:Subject:From:Date:From;
	b=UqmnGzD+57nERbV2CD3tZscbEBwjHnr3Bu4UxBnWwEwIedkmZupXImjBn5+HETZq4
	 RLAH9mY024ITXat66+U+SNCZ5bl7I+aENyQaiQwuzI3GGZ5hjlCwfmheQZVuIDr1ME
	 HPHX9ihhmLYpHwnWMhCtcOKklZF/bmAm222o77BCl9J6Yy0LHX1va6gMGp0kZFCnOP
	 VuuLZjmm0bNHwab9m24hTFExuE5xQZyIgJ4FYVOPoia+DcbOtbRwR5aVk3Hz57YG8X
	 WyRKq2CpiIiukykcqtpeU7KtdNJ7TDsnfrLrfAkSvtcidEqmiMPT7HC2GRJCccVg1P
	 176576Ty0k25A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD21C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853823369.6685.18374069379007067581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1b52f99d66705d235a0407eb67c07aa1df3457f5d3359b414e9f45f9a5c354
Date: Fri, 04 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788538233
