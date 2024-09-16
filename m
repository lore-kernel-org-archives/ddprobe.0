Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD711581F3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726499154; cv=none; b=rpVu8HIHk9NkRQJCmqWTX1ZKUIOI4+r7qf/rse20IhbThYFhWeY1H1kLW8csMnlEe8CbCwTVKMAdvBc+r69xW4Bu/+etqOLxW+J94gRcEYtiZekB85pr3gp9dX5LYTZuMrD7nv9bGkj+LNICF/qMm1mNRSHcqlKDTnIsNfw1ABc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726499154; c=relaxed/simple;
	bh=iF1SWnJOsnOCIf51zlnAh9QxO11tMagbu9l6HC+oaA4=;
	h=To:Subject:From:Message-Id:Date; b=LcYfX6XI+BgJoosO1mJmrZnA+0uVIo/MKv3GVLUt716GucQkjBEIiBCwViqYy/lMGDiqgpA96yk5UagYZqdon4b9wZ21Wq8Fzxah0bkmcHSikr3NrzTDmiqvIPqR3s7BBNqfqZ5ExOhatUYw2QCy0EDq05a2OS8033PZa2q/XrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjwAFtdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjwAFtdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39F6C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726499153;
	bh=iF1SWnJOsnOCIf51zlnAh9QxO11tMagbu9l6HC+oaA4=;
	h=To:Subject:From:Date:From;
	b=pjwAFtdQmuNuUTiFdKbOCAHsOFH805Yz2wzYl4uLQNUlIq0F5NYoVE3L4NgUENpBD
	 TOrAJFErHYISPTy8+v8KlIr9U/ywXfI5hO8vmfnbNJRghrCVy5rmLc9M39YM5OLQkk
	 9EdwElbwWldEbyr274a0m5YInzW/skqw4mNzBPEpaL8YBtOCQ05V6xvLCnGyMlXTEC
	 PGuMWkeib5Tmlh+ci0zwAf9OiE8p6qPlZ1w/GhsqoO3ieU10Lg418B+K4UUu1qPFrJ
	 GDnWaFZALK2pcCF3O6kHoagVpgdOwTL0A0ttNUyw/W3z4JkYuJoR6jdbsw8rw7GLFK
	 YRqnEAOLPMB9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B703C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172649915358.28049.4032995911333168333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e4f941f881f4728bf2e1d44c9297752e92418afd70d462259b6bedc2199308
Date: Mon, 16 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726499153
