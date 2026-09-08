Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A80F1397
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788829834; cv=none; b=T4F26mWr84EL+XeCP0ULBTM0FTh7JYaeZYXiOwbGAtfVsug4xSDC8AxpYZ8ahylGBs9Z4Em362kJ5KdGvzKPwcK72e8BKZeC4j68D3FJbcOcZPzs36KfsPa/WPB+K2KURGbQWt5Th0P3JjRR2Mt0xmDG78j2U0LTAPNX6odn85E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788829834; c=relaxed/simple;
	bh=zIcECtMOS8+RyTnQmsVyrbP84ge92z70+lEqVbHlmqU=;
	h=To:Subject:From:Message-Id:Date; b=Yo2RWbnQt0N3e4duqeqrkKys0hjAEG2NwvL2YBL8e5TfeMfJL0gQfL+shLpV3PHVUQKuM3f76tXl4lT40gkQZv9ZnB0GwxppHqcFkwf+noENYfkgRzJp86zQ5xtntBig/qDr6F30Kl+VQfjZyXmP+z/0d60fpvrAxhKsJjsgruE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeRgNx+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeRgNx+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D845CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788829833;
	bh=zIcECtMOS8+RyTnQmsVyrbP84ge92z70+lEqVbHlmqU=;
	h=To:Subject:From:Date:From;
	b=FeRgNx+sUR4mA/HT5xSa50HjRwadaBzRfMQah4dm2Qx46kCcPILhIaGMRFL4GCZMx
	 34kUfoxS2Tfm1NCtRhkdSFnjgVx11SZP++JtKa4Z+nRgoCYVjmwv9AkMKlL02DD60w
	 zrKzc/3MuRI+jFHmKOsHH2thFFNr7Bp86xjQvRW+zBt8nn5AexpA0JhzK8Yd/u7l7W
	 EfiBbhJi821iBKavxeef4MtpaHz1tRNg6hvUR3K+Fir6ge/gBvGE0nfafRQzZBEWvT
	 RtZHaJANE7AfQg7/xhEk+AG46JNyj2TM6QzA9Sr1UeVZCtt4pDEiMjfXP8S8syU8Bz
	 DPE0lJqhdcUfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B586BC79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882983370.26114.10300067947995721142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c4966c9e66dd8fa7bc649b437720dffe82aec2a2fc84ecf34958a8d88e4f75
Date: Tue, 08 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788829833
