Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46968254B03
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770618834; cv=none; b=ZKO7G4kV2Ww8tWxBpG31hGGKKv5PRMqRb1tZpCL0AkY6Ze/z635BMAvUrGnj5wL0te9+c4i1vWXSB8fLDaj8HN/O2PXDa6mZkJYhPN/Be2vBFlem1Sfj2k2jy67ZCCA51XuOdokljksIDJye9wSE/FhMN9PpibwxQ3Oil1Tig9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770618834; c=relaxed/simple;
	bh=BIB0IoLPFOLOrY1wZZqvCdVhC7UH2Vlubve21iPlwvQ=;
	h=To:Subject:From:Message-Id:Date; b=XWAmrMRIb7ur3R0U6yg4Cxx5mI1dHRqaZXMdf6HYpAdWg4VHJNAXnuBUwaAjhGNj/rUU8zMocJcS6qlZ9ZrCgX3b0sQS+jkm3iYsgsPkTDDsqnwox4inPd+Rt6I5Zlbo8Fi+pe3s5OzqPX57EFo8bgWLKcN8RzZwgHE3sW/rchk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utDqTe2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utDqTe2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2347C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770618833;
	bh=BIB0IoLPFOLOrY1wZZqvCdVhC7UH2Vlubve21iPlwvQ=;
	h=To:Subject:From:Date:From;
	b=utDqTe2A8I/Y7sGt1ws9wjJprpXumAV/bCo79HFLEths7BLWha/ninL9W718TTpj+
	 mcqDKqOU4470UVFZ09QaapP57/YgfSscghto0UUdGraQedvMlLgPi2KQra3KjrJq6d
	 uFwU5cPwNXCsYhuLEDzg/OueP7jZJX5Ny1/fWpaJ2ty9xHv2DPbcLkPChpqd0tNbeG
	 HjD9v74wv5VnE/l/j+K8vnv7vnGrjEPkSunhdzrCu3Zbpr+qYUX15YPKnt6uwZGyvQ
	 wJnTfZUsiCywtM3P040WZZxHODlSeqjSrlMdFnnacQZgzThyJmrZYMZOZnLIxShIJ8
	 LON2WDgFwdTFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C61EF070F
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061883366.18170.8509423008875633041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca17d7551e2b0c4b1c90b69f888b8541ebc29d10c1cd30c469f953ff8506952
Date: Mon, 09 Feb 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770618833
