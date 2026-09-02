Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1234F2F9C37
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788376235; cv=none; b=hRHIbexnszgyhpCYbuR0XYGaxPCPrF/WnbMwD5955KYYJVie9zcE4cUhh/prFMY1aEl7B+ZS/o/nsxMl9jMYHtNu5Rm2qVuf5ABZkzefJgHfKd+XqsXp4W8Caojj0/kEHRYDnAmd3chkCEzD2LLf5mBEssuc7DeMcLWWBUtM/w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788376235; c=relaxed/simple;
	bh=LTr4qUHpxdt44W5UOf1Llo6U1WtCXJ5ymhcTprBLAAs=;
	h=To:Subject:From:Message-Id:Date; b=jFYfhj7oGNUQnXHN3Y4UoHiaWlHsrl9ndGu29wDXjusGp5jLyNB6Eytvzz5k1tOtiynB95Myil6RRKozz04EzZXKrn5IdiqRf3NSv5x1B8LHcsZv3ejEOnn9lPNFCUCfzNnICYPB1uEjepjcxppksHB0S4xvrmf2mGTDRqzB6cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=El9bRePP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="El9bRePP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4719C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788376233;
	bh=LTr4qUHpxdt44W5UOf1Llo6U1WtCXJ5ymhcTprBLAAs=;
	h=To:Subject:From:Date:From;
	b=El9bRePPEri1j4pO8PV3IpYt7v4MLeBtVmWJd/dYpi5s7OR6ULzCdliicFszUhb0y
	 ka2Y93QKAzkjy4b4WB///aQm3EzYJU7mZEm8T9Tr9ccUL2ZhskuD0BWJy6gJFbGdsO
	 5jT9FWQQtx0752fECjacLkxZOt9FwBKbifes1udxBK3dLWrF3UXpjfAroj4bq6fhXZ
	 GQvZ8CbgaGB3MqkfnnAyehJEjT/FvPyqUso01l5FXHXdziGVBfTF4Ic3zkpOlQfkI/
	 nbh8av+fdpcoaL9XLtlYU54hC+Bvtr78WNJgtx+OAP7AJFIrTBuASU242SEmbFGHO2
	 EHNdv1XQlIQZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE02C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837623369.12131.6854953060134826193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ebacebf687d9a264bb239198fd7d1ff835eb1e0d50b51cd0f6d67830af01ff
Date: Wed, 02 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788376233
