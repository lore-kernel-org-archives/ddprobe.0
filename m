Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4432A2E406
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753110594; cv=none; b=YpCKdBuMd1ICKSE6S3eJhM9lXqp72RCTa+OHr2i8C4LRNI1ATufB/KPhnhHAVwFIiODe/q1sGpuHW2oJ1nH1255zQKnMGGo4aThwhk45B6fJfYcvQAa6TBKMf/T7/+QfOfDqezwF1wJ/y/pVxRDUypcMXOuuUsJNabxHN+cHDfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753110594; c=relaxed/simple;
	bh=gpT0mDqzXpAt7ouXtHie5DoIQiYfDC/gKrV0YuwtEvo=;
	h=To:Subject:From:Message-Id:Date; b=AmUFohpQT86WYViAgGWNQRRemltOg9E4QBQOLlAoG/SwRiGUb9BIiYnrS3vvtqhVPatPA71SydINikOQoX9DXCvGpw3mcmA3PXhsdR0Z2PM2/rDDTU5LVpxmlEHp6bY9KvOaPH1wIzgxFRuHRHauYT5WvBXpZ+aC0aG3zNwaq0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bebsjIfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bebsjIfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE9FC4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753110593;
	bh=gpT0mDqzXpAt7ouXtHie5DoIQiYfDC/gKrV0YuwtEvo=;
	h=To:Subject:From:Date:From;
	b=bebsjIfB/sEhRCahBPeR0/gjQ/9wA7Sd0PO0DCfkLe+DfJEJSm6feIQzOhRCjnzEt
	 nAkpVlw75WhTSUobZvTqUzjD1WFsxHgv4ySpzsuY8nHr3NjSPqVGiuIkDeFz6RjcMH
	 M05Z2ht05dLi3F42rHlVPRvGYQ4nl2ocKcjvecZsRyr3AquFMrIZ/lP/LPe2tGwsGJ
	 P67MjR+iSjy0/YnYJoVhhjYcN9fwpdst8e3on/lcyWrWD9d1lQk671Sgm+166SNyhm
	 nKDbHyG8uOg2tAhg68EtVqlYnFTv+wQ9eI8fK31AS6jrQs4ppw/kp5+TZdvNTJI4gA
	 6P06M22uOHuMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9095AC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311059358.32307.5795593029583031176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2027e6909ace7d7a62228e77e0ef47eae1911df66ea8cb16c70b46bd1dc57903
Date: Mon, 21 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753110593
