Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2761E17736
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754428194; cv=none; b=ENV+RfppHtEca1qiRUOmSek9OiBprQjl6soONmktK4ThKXT0N/371I9r9i2hA6eP1jStnooojJO1jrp/VUD05HbDIT7fIbD7/mEpzpE/X/uP5uCH1TilfknHglCW0tLsYQSyF3Ae4O1ZgtKju3+qHcqHnK+tbXxi3PBR71dCEgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754428194; c=relaxed/simple;
	bh=utuhJnf8IcDnWN3fBieiC9xQad2ZbVtgawE3eDWxZxg=;
	h=To:Subject:From:Message-Id:Date; b=VOzZN34t0j6BbXTvCaA14YPyQ70vI7fYgcNRlCr5pub5MB8vIKip2+mx7oKyS9qHBCZhZFeuaoPHHC8dcpCq/1M9wdCCKhxtuCLH+X7G2IgSgSx3w9GoRb0jTNDY9UC9wTKMYwlKysgpMBY8TYsA+zo5p6UM/6kweA9KEWk8nic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJqy1DQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJqy1DQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6275C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754428193;
	bh=utuhJnf8IcDnWN3fBieiC9xQad2ZbVtgawE3eDWxZxg=;
	h=To:Subject:From:Date:From;
	b=UJqy1DQ56AZnPJ0Mw1vG/qNqsbDJNrRB4Se/Pxn/orAA1r9QNCXWTtlVitwuSAZR+
	 jCcNTXgd/0iX1REspbT660SWMVh1+MHx2g5uy90fyz+oj3WRt6nhjaNVqNCqSaqKr9
	 49q6++YLqc4QXS+p3dnMMP2MJehb2ayiZ9Pe985xjGD6++zbhoAuCClxhkbszfFbJh
	 wJipm01wanghZdTxt3+dtNWrzsmL5wqJNsHza+lyCI8Ww6xKvUcLMmg1kwsT9ASfF1
	 T5fUDB1s/808y+coeKZb3tnp+QRbkqyuz8nIvFonDQs5F0kZ9egDvgsm1oH2LrqSAf
	 QmKeP0Gi77YfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F74C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442819359.1995.8748446464051661484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8795fd4931d16f7cbde1b4fe620e548f0411aa2254814fe7c012597e7cb1412
Date: Tue, 05 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754428193
