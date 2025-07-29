Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA99200BBC
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753758594; cv=none; b=c/+V/KI+95klkHEzmtSmyJxQznTFkvGvwJtmAiK7X3PVjYXwiizMlg7DfQdq65m8H1FEo7TaYdtehxkei/YnbNHSKJsVVgjxLe5ASKYcfF4ZX4OF61MK9rQD0gYqC9kShMXW7ZfcN6V7uFiRM4Mq+ZGiRT29N40yfm8dso1puWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753758594; c=relaxed/simple;
	bh=UTPKJFfTTS0jT47xs1fTPAn661KF4ZmhEscNRCNCffM=;
	h=To:Subject:From:Message-Id:Date; b=EyCvSL/1DGrQN7hMlxbSagWTIMDNCHwmIPFEuv+r1RPuqTZRuPczVBywCjojRX0xPB3piAWIo/M9lrTGEbnW9oDdPsrq0HNlnlni30mDqAuNyAgDdsmWuecM/lPZB1Chpuk9mbcZikfyfpwuNztW1XZTjmppiaos7K7HSwGv4Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHn6DH67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHn6DH67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B01C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753758593;
	bh=UTPKJFfTTS0jT47xs1fTPAn661KF4ZmhEscNRCNCffM=;
	h=To:Subject:From:Date:From;
	b=SHn6DH67tukufUGwQ83kTmzyFjTsSGe8Ktrh3kvtSjQi0gN2+G8uARAARmjLRycgF
	 akaXjSyd6uUaBiifZvjc0MUMnwcWelcdKbru76kGzSadSPtsko1yg8JELWdTzDXQGp
	 5ugplcF+SQkGErxySbyxYcexGsTwHtIhUet16YhzHLCJexSyrIGIxgfVnHg6v5ieq2
	 J3nSDJX0kOHDscwv5QU2jYrhxq0XPQ4mmP4Neyqurft8tP6sVheijzKiL9PvX9l703
	 8WyOlStTKvs8VpIKTp4T2EZZJtos+IEx4bkThYYcyNjyrc+JESK+e213WoR1Tj+xbz
	 9oDHMxGiYF2nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928A8C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375859357.28394.13510889351469261938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed949480bf6d3f38b80ee26e3d8b43e98335e70ffdf0caa574e6415ff1f862d1
Date: Tue, 29 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753758593
