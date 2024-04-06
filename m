Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36BEF4FB
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712378296; cv=none; b=CvUkV8WPgVnTVLBmQqiQjYgd1Nsk3hYG0QIEiRLrKi3Obrf9XlJ0zu+Pm4tr4VNmswBtecWxqxYTbQv3IFRjY5pV9J7UzlOsgb/JBiQihaNgFfZnFj8eWf8ae68Eyp0INPHvmnzDUk3FSv4Jxci2wWn3I6zK2EMObEJUbO0HoCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712378296; c=relaxed/simple;
	bh=1QG4SmuRKdGM3LDRCrLq2tR9wo12PxBYbYxK6rUOPlI=;
	h=To:Subject:From:Message-Id:Date; b=JCKLG8Waho27JavdZgxwjnGFvbyyxw141cvl3HPnKOw/4/FwZfxAzjgICkiWp5nGCOyNmgmqzndjfCNfsVCnbux1Ec3FzWFpFQSO6qzpVQz8djzSuGt60JnSp5Fe0v+fDb11ydCi8G5thinoIr3xmBfBE4fYbPK/ZfEcuQ2AU9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wx5gErOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wx5gErOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7576CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712378296;
	bh=1QG4SmuRKdGM3LDRCrLq2tR9wo12PxBYbYxK6rUOPlI=;
	h=To:Subject:From:Date:From;
	b=Wx5gErOQ7GrI9BWAq3d1i00AHIdMXKHcOdrUc3yiTZHiZsYGGKrREnAIiCCByh932
	 Csx55K9rQdKafvEn7j3QuNZK80cFdgzXWzMjrQx88/c+6ao5gvZD3IFZFpjAJCZeod
	 l4Izn5S/RAtuiquJx0oabk7ynQJNWNtR0U9YcvIxt2jV2vp4mV+wQaxUmcPaDgU8ZO
	 FaTkcZ78awUFlk1CbINjjCNLk0ZmTpf/O5TwypOFpib0EwKwgyNcxlGBrsw8HxPktB
	 T2qRT2ZykuIMNQb522JiW34KS0HAwgnsFDtWi4Mok4o/nm6hIRyBZhPmMjpGvyv8LH
	 pa/iULKzjCMUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BECCD129C
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171237829637.26964.4717365572165305673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6f74e37b6ca0df29cf598fb37b009ca7ad15dc7b92094db8848a7dd7b5069c
Date: Sat, 06 Apr 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712378296
