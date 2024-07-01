Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B14115ADB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719837923; cv=none; b=rGKxi8p1mzgKhiaU5At/Ewd2zLoaumtOK00RvEePSBulVis+MIiTqL6oubDphEqEgoRGlTfgNBGNZwFBdo+LAW9xMYLHGaGy26o5syab6nHbFev8umSE5ni3W7odPiphAB+RVdUHns0LhmfCNrlHZ0r381o/lEy6jXL3yORrE3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719837923; c=relaxed/simple;
	bh=sCafbE0n7z4ZqdnwT5TZstyVotjOvlDcsnNg2T/BizM=;
	h=To:Subject:From:Message-Id:Date; b=dQtbBXAjYTkFQa9clidOIG7ENhfBW1DfDLtrMDpVVlLvP58nMlekk9Att+zQ5chL9Hm0efFF3mQqrCLL832wt1hYAHQ/q8z481XnotEM4MGE/cMi8dBI8Jv2p4puJgTRR6CeTVzYoeWPvchbZQahXRtSFWLc245qIlYFziIg5qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QftQkJc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QftQkJc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C6CC4AF0E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719837922;
	bh=sCafbE0n7z4ZqdnwT5TZstyVotjOvlDcsnNg2T/BizM=;
	h=To:Subject:From:Date:From;
	b=QftQkJc4f33OjjDU3zPz3ePbzOYsHLAZN6nWaTeulFw/xuRkDTEumwJUrxKE7J+OL
	 +s1sQ0q4FXDzgJKYYzR3S4pts9v004jT/GAbQN2zrSdnBZ54/zJKYg+1OSq4BsWVex
	 KahKCtzJOX7KEPS7JpbsZNUtBdIkEYo1MQUzBtobNHddZqJU9+F0lRXJN0IaXb+JBs
	 6zrcLYmwVECuRuTVryh6v5ZaQ7OQ/pTfYdBIyJglmVIJ0pcnIMCXQ95zsqMkekiTqT
	 yrrR5/H1ApLS3WAq1Gy8VT5lfkkOFw2/4hDUYrVUxT4bJkM3jHczE2TYUIQt923pF5
	 uBb1LlSG/m5bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DF7C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983792278.2894.10354247130580022425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef6724e1766d5c75496d764f9150dafece16c364e941bfb3e9d505cbdc69769
Date: Mon, 01 Jul 2024 12:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719837922
