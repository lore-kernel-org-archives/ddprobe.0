Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E70310A1F
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746423594; cv=none; b=pStm2yBFtmBwSy9OOyAsfi6T3xp1YSEJ8Z4FVd/VXu/ETEGEVYx9Q/lCJ7rCpEmWyPUfcF7J/S35LLhXu4LiI3zcGmLHIGf+1H0MQN4C3trDr2al0KULNpphj4aF5cqUXUGkWmS1otJpEKW9UDxezxJ7JYwIT/1/5ap7O9pSRLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746423594; c=relaxed/simple;
	bh=8D0g6RlNYiUR8g1DLtZy59pkMhKJdRNjL7jiN8Rrdok=;
	h=To:Subject:From:Message-Id:Date; b=HdMNa7Fvr49T6/8QEHbswir1ZC67HQ3PfAtXhEIk7nagHP1LvZ+nNyEsy2bMksyeSR0ZrmyMjfhSQnRJaRKoCM0I4tPXDq3jsT4ppUpoWaO1TKpK9gXWgu0h+8HFIrAcI6WVD8IrYZMVzSgWPyvcMDNQd7GXiLvAL+x7cJPSnPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWm2CDFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWm2CDFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8B6C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746423593;
	bh=8D0g6RlNYiUR8g1DLtZy59pkMhKJdRNjL7jiN8Rrdok=;
	h=To:Subject:From:Date:From;
	b=LWm2CDFkzlLX8hgyXA4EgpVUvunc+HKd5QUITGrJv+VCG7q1wt+1wVuFpcTVkSVvO
	 Qbk/JjEIuqd2TyP3Qiy7fPztcOlXqn54ISP4Zfa3qm0DMcRnzGnfkilohVWo2kBWZJ
	 ibH21swNLl2KA2182+dknJKmnxSSwuJh/1/ip7ORJ2FVDCHEGiwtGOV3J9+WvX0Fs8
	 5InQn9xKrkj9t4zS+D2sBoAdcbFmsCDJ83HUVwQMAHu25XDCrlGBcflM8KJ8bsBlgB
	 iD6/NpST0z+xJlRtiJbplGf6DA+tu9Rzl8XRTevx0wgmS7GHEidqB+am5qkMW3SqcB
	 5CWiRigTG+vKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3BCC369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642359357.30663.7157941987084143620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7482c234657e802cd6d21027c90810e52562120dd036eb8edd7ba5435be1543b
Date: Mon, 05 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746423593
