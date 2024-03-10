Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180C0383AA
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710093497; cv=none; b=D+wjijPOSDzjxSr//ZIUJV/iwIP8noGUgFgdVOWiaYwmc7RgoctaOKPx98t88w2rrMlqohAx75R3j6oWmYYT4Zl9XnimdqXJZAseT87Vr5wu0Z2CvpDaWG1OifPxgBMVoNqWYrzved96SPhU5Yd/W9dBYvO6BQUughQ1vWPKClg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710093497; c=relaxed/simple;
	bh=NT3yg03DiG3vdpyv0YGenCDO8C+bkv8ezIYorYjlz88=;
	h=To:Subject:From:Message-Id:Date; b=qswCFQfBYiNh10ZhOSyDG7f9xgzEQ+33aVQniJgwa16O/DS1L0Fqsigxo71QN0mKPD5wBVZ6C2TxXFvTUHOK0jGMBs2TK1U19stqoCDs0qBZM7ImmUbnl8ZtKzN7uBzOK8r/uLIRoMRVhb9x2mztoYXqk1S2wetkp4+rymIpgXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEyjVCQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEyjVCQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F906C43390
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710093496;
	bh=NT3yg03DiG3vdpyv0YGenCDO8C+bkv8ezIYorYjlz88=;
	h=To:Subject:From:Date:From;
	b=hEyjVCQi2XbAH4G1ABByS+y3BzBkhME6u8X+YC6H36T97KSB4X0ZZRjmRZCx3epAV
	 5u750T3Fu1qkyw7EOXhKjV5kQqPKpn2kmK29DRhVKE/EldJpN9ymuUgNe0UyKwDbqh
	 GEoCKpbK90YN9qt+hopzHbJXB/HNUitbzICqyyjIrsbaR+RzKfeWgBMC+iiyTUgHkS
	 z6oqbBO/5xwTtODrNKPpPBZHSICNZk7e7Rv/zuZW+s7MXLPCJeHzSI1YCYpEuLRPEX
	 r74TxEilvGheFMFhCnDSrP5QK1rDM99sI7DvwxNQHx+LpgC9Nt5bih+NIBhZV2wyNl
	 4a7KZwZZHdGZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6017DC54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171009349637.16021.16965289305371238064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a717bfc6ed677974cb167175f4b02ea134fd3385440fcffa2aca57029ff942b
Date: Sun, 10 Mar 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710093496
