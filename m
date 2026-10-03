Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6015128B4FA
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791032434; cv=none; b=Fr0K+8hamIS/Q7NNv0t3CPJdxOe4ptEIxEoaJsWzjCiK0bOJy7F0ZGZqv/l772SfJGrR5Gw9I/hYWhLDE+NggRlh4nMWgU871jepr+uM6p1qWIOCvNQ5JclLt+nSMMe/GQh53QzG3GJrUJGRX9QrUhO8SgYPd0wDgvFejScnnuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791032434; c=relaxed/simple;
	bh=ScAQM1sl3gFDNKzEo0+7ljNPQif+FhyVyQLru0KPKEA=;
	h=To:Subject:From:Message-Id:Date; b=kek4W0AsKP8SrZQN8k5VwNEJytcmySoQ3iwUTnktknDhctfzhz9gIGwukaALR/IohPzx0Nnz0jJTtr6NANa6X1xVxkFGNO1puGAKspPAZ9SFr94IzKfBdSevsLYLPwLRSzOc8UEpAO5T382Jw7h6vXUdA5vIc/IdXEHdEahqcpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGs/gfPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGs/gfPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D95C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791032433;
	bh=ScAQM1sl3gFDNKzEo0+7ljNPQif+FhyVyQLru0KPKEA=;
	h=To:Subject:From:Date:From;
	b=TGs/gfPwDC5MC8IJcfzcG8UbF/0fYvARnA4RBkphjSRkKZdCu2jxF2DLHKAAZYwbc
	 OthH1SVfPk9er6fpVASGdBdxuY0wqZq/3LRmk7AFBqAY5+jtyelYZ0xAM1bemnmXkP
	 vJdQbRKoszGi4i+8HShHPfDd1338hGuzAnYijBj96KF2LfWeyb7b3ujYjERIBOkCXA
	 vQ0xgatcpGkcXr1cPt4V7pE9ct1Cxfndz59CwUuQIkobu93MyjqdFXL8DAS9ZsqpyG
	 9HUlhA7EpElsSnX25OGhg4Ff6fLll/7QoM8qG1vYqjM22a8mUD2PAQgqhq60bcjHQA
	 wxyq9ehuaPAjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA421CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103243368.4708.17778916779493167075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7e55a9f68f9e614cd15c6ad1c72f5b2631b31e15e00af61f725aa97e68f13d
Date: Sat, 03 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791032433
