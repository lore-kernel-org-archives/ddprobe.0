Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A84D171C9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749218994; cv=none; b=lULDUgg3y27SxSpy/JcTEeDF3m9t/rVfogStFxxgR+67KlVHZ54hyeudqRBe5IDP72At99GZpSG2P7ZMTotAExHgdPknVysTGlqv919NhFuvwB4q/041XvxJAaPtgIzx0k6Cqts2Sc1nYZhlCRR7yFVex53qVEiDMHgRwaqxBeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749218994; c=relaxed/simple;
	bh=IlwlK2NPuiAoNm+ETbrV2vaEXHqharhqTLuWM0sr2hs=;
	h=To:Subject:From:Message-Id:Date; b=EvZvduBdeBf/zstoRj5QoVja/qtsNbus7lTnC+NvDw/lT05vZnMenrWXTQpxx488sgQjACRFl6q3lAOuGaxBcGUQTCWJ+8D/vr1qjbOP/IjwefQ3bQ5nt9/11vRhX8U35gsyXkPObAzeHE8RgL/GS7eZz25d7ZY3v5HvhEqRE0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3rdVun9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3rdVun9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A094BC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749218993;
	bh=IlwlK2NPuiAoNm+ETbrV2vaEXHqharhqTLuWM0sr2hs=;
	h=To:Subject:From:Date:From;
	b=u3rdVun9q7TIXCrRK9r1KqSsuqe21+959OEm+n7UykANPLg91qZZTJE9nlBVthnb5
	 32h+kNFfCueIR0O69GYDsF8C7vOxU4a4MSGCYPRwuHL7g6GIixOoyaoKss1vbY+LN4
	 hMrsgaQfuXpu8JJ7lzjG06qRioQ641HKdlrfqS3iqR/kb0yFArS5azKDTJefsUH6AB
	 cx+yMfliLcGT0razE5/9L5N6lLNo6Kd2RXpBJlTQ6XdL/JKaS2SWFVsY569fJjHqVg
	 PsuMCRL74F9xR/09skOSRBibfZOaC/LR1DtDQpcOj4x+1ej+fJbVbMbF5RTy7fBid1
	 0jMlksx6QKEbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051DC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921899358.6599.16201833690346149821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d6c115216c079d3e98a350a55fa79469cbcefbc4b1d9c87282006b05f78354
Date: Fri, 06 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749218993
