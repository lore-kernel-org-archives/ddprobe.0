Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A5842AA3
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751461793; cv=none; b=C2/aIJxagqNhqRNheZswF8JK+ospqqlVkfse8y8xFBJxLhIf109ZpLBDGlGxcSYRKVyOJn3AeuJCWzEWhSB0idSsP9iIK8TLBxWpkZWOVQR+WW3VGqrCwBdCQ2IEPC55vvPO8iHjhuRY8OO1/qvDcbcCme97w1Pa07ZyjTUUEYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751461793; c=relaxed/simple;
	bh=9x6N+no1nZgsfF1HhQNLoLsPx7tHYiMmlxfVeO8h1jU=;
	h=To:Subject:From:Message-Id:Date; b=AU0vRum9kbZW0cGOdSzsoHlHRSGbUM+JgDyaZj+R013V+XGQX512TraYn7HrI9licW0LnLk7vq8PAgUiYTumeEoyfx1PIupWr7l0BdmuMZdIsbzQeNA1c0jAQohQJwqsw8vAHBcTkFVlkkwjd2QRC62ThF/iK2+Cffo1B01PR9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erUnHuVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erUnHuVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A069EC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751461793;
	bh=9x6N+no1nZgsfF1HhQNLoLsPx7tHYiMmlxfVeO8h1jU=;
	h=To:Subject:From:Date:From;
	b=erUnHuVEumerUoFgNw84hN1OYHDV0DDDIXOcoYHVA845RyC+jI/V4BOEf1y0Zp7na
	 XhGPizXcE9kMEIwV67rnc069LGBm3KtmnoQpplrUhC9zM4sUiNNY2P9c00K4jwTd8r
	 JDwDYC/+Qjm5vyCV3AmZRxPFfj5BJ38wM/zO1fWDUQAWQ1Fq82DB8BPWiImvNIe7a8
	 qEw1/NN8pZyIUZAm0EXIrSlPaor9219rtoQcOuV1ww3c/z/lW8l1M0hVxOvyz6FHqn
	 MnPBhgWmGDEq++jbriE58NPskK0P+w6Ylq1wClBPOE0PRIgTDG4VU+78WU7URCoE2T
	 iDV/gv48vf1Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E3C83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146179357.5669.2697638739474891060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ab6aeb9ba385a4e84ffb732dab0ba710e39a85d04df5b068121c7423708115
Date: Wed, 02 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751461793
