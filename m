Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DD13F1070
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788050434; cv=none; b=aMJxS0459imRMbmUhVZGmwa4dWAg1a0f68bV9a5cKR/xwI8s8gF0hgyHX9ZRXrvCifij0JbIpUrO6N75zkMOc4nh3mO13H7JZugjOy76OON5cNLllXawMaAslwbrDfYN0Jo4+D8UtNp64kfAkY2FB49tDXDQZeV+jcGftj8OaCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788050434; c=relaxed/simple;
	bh=AyifKFhZ8m09x3oCgx700SEbpr0ohGRXGVXEPzW1jqc=;
	h=To:Subject:From:Message-Id:Date; b=kYKjB+sMhxig/U0BRE+7kNQk1b6V+vBayDLrF8RRLTXFQyke4ip38702UQ0GNjxJJBAYB0QKrJXXLKMQRQCaibRN6XqAYa4HFVbtsCVtbWfy5WCeIM4XmNNzFsXlGnNDUvP7GRWVenRYI4Aci473WTL1MO69tf1lL815OM5W+iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXfgcEIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXfgcEIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D833CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788050433;
	bh=AyifKFhZ8m09x3oCgx700SEbpr0ohGRXGVXEPzW1jqc=;
	h=To:Subject:From:Date:From;
	b=PXfgcEIy4rNFHScFzYaY9Rx6PkLwC4KKO5sS+3VnOB2gg7RTZvPFl3e0zOJ9zzKM1
	 CHOaRE+xumb6fS4Amq0BFUHWlO97gBGjzOcTisKFxFGRjjoiZLSp4uglDA9JUnvB2b
	 WZuEjlSEZrqqMRAqxVqchWLvHq3pUZ9IoXOqFmb29vC4k0R26MzhlPsY5lcV4nJdUb
	 JW93HyfWmP2zx9zcZTK6Bg1d5i+EyhZZMOpqHgottLr+Sn1TkIFXSY8XbmxM6AwLuP
	 i3wqbl/BJHZVwpDQPf6PXa4Ic+D3oyBIkNkzMSrlmAE4g0K/oc5M7YQf9OA1enHr26
	 bW5i4DXeCg0Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD681C61DD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805043368.26058.1816781908237520132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60965aa3acd73236a9dac8485656f7d2b58915e24098255d59d0a57aab1fce1d
Date: Sun, 30 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788050433
