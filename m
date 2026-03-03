Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8DB351C01
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772557494; cv=none; b=JuWmMd/MxrMZdqoH152XEDJA7JEHRYm48XPILLWCv2+wiWIstoJydDFr6royJ4ad+9oZ4juFTyswskYDMp1Ynjf+Rs5H3P9Pukeqo7Pfdhk9BJaAluji1h9tZnAK3AdQF8MLlmS+qMDPKOIsi3E5phys22zkSUof9n36KMM2n/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772557494; c=relaxed/simple;
	bh=x00GoobSGDiGl7mcGsdQ6Viy7UTys+BRc9siZ7/iLbY=;
	h=To:Subject:From:Message-Id:Date; b=GtRq8qFVmzbtHCkqG9o9g+eZwsUIGi5Lr/f/FCojhIQrupBNvsZyobU93gbZ/x6XhLohKSBHvhEgrYz0oKz/T5gib4LlebwcHuZbyfWBgIxj2qkEW9J/2ViaR2g+2fH8QKgBIujhNhZso5b9DICOCDAl6yp1dz38EMPpB1JvYd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NG5BUe1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NG5BUe1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2922C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772557493;
	bh=x00GoobSGDiGl7mcGsdQ6Viy7UTys+BRc9siZ7/iLbY=;
	h=To:Subject:From:Date:From;
	b=NG5BUe1DRtCOYiQGUfMXnyvn0fcvnmgBq+DsCDep22utyLGrVCl/L2iScLXQfC2q/
	 sTBGOPXi0Ut0qUQQqke/ZJ8fjR44nlSUf0j4RskAqaaTAkwbZty68nFDsZ4RDmUXH3
	 OGU0BP9+RMUVDZ5Q7IxtvAWI8HicRVR2DiUd8JvnuFHlUz8e4M9REVazbNzmgl0LID
	 O49cOGkqLJ+Q82S72gXQswozzCjl9KXm2C1xhSWGsPN1Rtl0V8iLDjbcvdFAibzjFA
	 xmhK9tBSMQ2bQSdUK0AJh2sYg0c5Copf54N9qUyyIae5Rc/msc21AXbfzp7g25K3R8
	 K2p+6FTuM0XQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECE9EDA698
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255749363.31810.4280931297801755427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866e4ee1c8e47fdc1979f7a3bd8fc5bed7ec79d18a128552aca98d178948b042
Date: Tue, 03 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772557493
