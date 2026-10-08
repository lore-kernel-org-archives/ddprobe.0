Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580013905E4
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791464434; cv=none; b=tVr8WdXgjbI2aAtwnmsrZ75owDyEGGe3nYAsWiLYpKsV/HeOrb2J44igdWfCSRCHeOQBBf2aYZxu0937OB92SQQJQNDq5nL5Gg6V/g4yNiUSiVcGcDIyEGsm9NRgW+azIgYzJXJZhzx92f6XMnJSmIfyIQQUZIwQrl2NgWu0vrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791464434; c=relaxed/simple;
	bh=3ocrwesQDIt/Uoo2Xvld8SKa6bTtByJqJppRQuUUCpM=;
	h=To:Subject:From:Message-Id:Date; b=lLxOj7s7ubcHMw/bDG2TBsq9qio82r0SZvSHamFdMqTer5upt33VqOHnaptSV9r6EYbx+lENME9kG+r6G8Ro4jptYYZvhrvjRUNSctwLXvjJlqFrXFpXzvPOAwJMgcK3FSqWPMX8qAUTsNzMEiOWTuZZFYpD63+j+H5tml/+BXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmI8mpvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmI8mpvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29AEC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791464433;
	bh=3ocrwesQDIt/Uoo2Xvld8SKa6bTtByJqJppRQuUUCpM=;
	h=To:Subject:From:Date:From;
	b=NmI8mpvWoLFW/6PzyyOXaCaeDJhsbi5MSkkIuG/+L/h+SqclAdXA6goHSmxJcd1x4
	 0qPhGOQ7bKGb0Bus4j1tUfAxFJblStywVpmZqkHGbxcPwBinWjXZwlkZqJAxZrZh4R
	 bnuF6Cb/kPB2fsLE5rmr1GTGv0XxItfNir+Mzh3no43l/WB3lPASW5VxU73Na8hheZ
	 6Ego/vlOfLbGOP2s2SyjG7Q56AuGFFD4SuHxeg010JsQu31GWnDZiUzkYvWQChlotv
	 DPENdvZxlLSc65nsvhjZW7MzzD12+CNpT8iVJ8enauQQCSujk4vl0eWRiH2SQp7OLe
	 CmZ8pdSf2VBZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB519CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146443369.24647.1758620300262442373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc44a19a05351b3aeabcec39ef944cfa1ff5a1664c426ddaae094d34254be5ca
Date: Thu, 08 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791464433
