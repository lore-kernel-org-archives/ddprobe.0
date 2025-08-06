Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245CA28DEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754492994; cv=none; b=fs2Vre7LFpWdfuGMhrreiYY9j0BjDGOkNBLDl0KQxmUBtdSX7K5xrVDY3ivi+htJHCGn7Unc7+eU82TeSM1cmgVzYerM8olM/m1sOGRfprhBxwq0H6jgKES0qu+i4p+yFJafA3plZURQhwfDzDh3NlkK009aZ15FK3xuK6oNk24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754492994; c=relaxed/simple;
	bh=p2R2XGoj/Ev+e2L8OB4T0/iYZclGoGb1FimTKAgGt20=;
	h=To:Subject:From:Message-Id:Date; b=l+FuPOfjGN3GsFP8dPjf2LwwUqhYrRXbsvDtVXePOtskmZrXwkg+GI9eClniRViwu2qCpuRr9nqxCDzChrKjVeu/Nq3ly1+1jZne88CpOmg1hb40Neu9IA7GB7+/VHUGdoS+3kM3MoHGB1haZjAg38ZURfILff2DYC8Fyl6nh9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rptmnoVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rptmnoVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B035DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754492993;
	bh=p2R2XGoj/Ev+e2L8OB4T0/iYZclGoGb1FimTKAgGt20=;
	h=To:Subject:From:Date:From;
	b=rptmnoVgbtl5sqM4Qt86nmXXvB2+Fpg5DUITci7sUPCKogXwA9E7U0N3Ext8+8cpj
	 uUIVhFqSgraJYyjMWKpleFhfPcC6fVJp6PI8ukgMsLweUK4GbspX8wz3kXhZ34QqrF
	 akUpWCWmI23uhErydfC0cl5m7c/an0Ea6U6B4AMrHG/D3JLeUhwXFLgTEzN4mtWHY7
	 oSlenA5idiuRSD79/dPY9EeLl27ba6tSPoScFTtEVIP3UQedUFlJRBvadZjCy7lWUl
	 tzI0Ls5Mg8AQf+ix50wNlG+9f6+YMQm8Gd8LB/XnAIBjKgwBVfvjdo46XJQNs7QX58
	 uzu2c+rwado4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C03C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449299362.18702.7570953337769124900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe261388c1267f3f96c9460737d41642dc6dd3b49437f4dc48d0c02fadeedab
Date: Wed, 06 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754492993
