Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292DA21A447
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775217934; cv=none; b=fA96IqZXzt7DUGv92TTIOuhx8xdK8tUKZuUASz0QOJKRc4wSqpxwDUDFRzQP/TFSumaluk+0yLkD/ZrjoNlWuJLdrjp4JErpMJIgyrPya57kJ2UHaVQSWN5muzR/a3HtFGAI2pyFuldoszLEo5NVGMZ1puJvuXs9LCRQBDzJLgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775217934; c=relaxed/simple;
	bh=wVbaJMIHmavOzbF0HRmkFz08+U34TyMR6XFasIr8diE=;
	h=To:Subject:From:Message-Id:Date; b=eDsjBlo9qcAMkcGwE8026Ic5njxxmMNNbO5QUfLXBGNHAMBbA55Ay0Tzsfjp8S5wjSD+Jhzz2oTHmNYf1hQtRSuzHFWkKnYfmPu4rH4drn86pVRLWG+eSYcU6kq/SJCySHhDdHtASU0CktA3Eb1ynAb63Bzk3/Fcr32bWdRB7yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Quupz6X6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Quupz6X6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3952C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775217933;
	bh=wVbaJMIHmavOzbF0HRmkFz08+U34TyMR6XFasIr8diE=;
	h=To:Subject:From:Date:From;
	b=Quupz6X6vtb54+Vf1eLOU24sygjcJc6M9n0L6RVbZMns3ZYRb3+ujiLykcKzmMrJ6
	 /U5MzTYP3kKJ2bwlQqfWC6TQNAWn7fIrxojKYbRceervtkXnkq2BgD2p7UhSd5RzIL
	 cxZbPPgVXEMPO4pRNFfpJuXGXRU45Hi+uqN6tQiCdsbI0fnLDZb9YOyg404tzB6SmQ
	 X8F68ILNLGs3J5ev6R8AhRwQJ+d4jCQHbT3J9z2XXUZBAif7CpqLD4oVGav30Z4vJP
	 D88rNKymUcxLTfJDlgy+hLkfdxwB7E/YeXFFFghWyFBykjaMbUT9HhCWvvNfxi4PRV
	 h7xKOcrlSAC3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF29BE7E36C
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 12:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521793369.3452.1817825534325011225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ec20c1162d129c72b5351288ad5dde2322140c3cb7c5f584f3b697c2d205cf
Date: Fri, 03 Apr 2026 12:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775217933
