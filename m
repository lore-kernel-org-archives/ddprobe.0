Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1850C1F3B83
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750603194; cv=none; b=gHmuIOkKSs7cD13qTHJLfy+kK6x+4dRHa2MictyaqIPJHb2Xx1mTmMkTpEJpZJspG/9cUKAUqRn6iux9R7r7GhHrwlQdjQAw4kYDfrJ3JqYzXUsB1ajCl+IkM8yT5KYNHExYUO5ofdqONztymzUWQn3RfwDqucVsf+j6NSDgk6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750603194; c=relaxed/simple;
	bh=rUTVpIqAL14rs/LwitaL0FQEtGF9N+aLEj6rOVjwuYI=;
	h=To:Subject:From:Message-Id:Date; b=gVnakFFmgrnF1OQCZa6OoM21aJwov8ahmQrpSudbgBxEF5tTONhX2iByOxxNmLMBRvI4evDgWKqKZ4HhSynMKGYVP6Ci3vjO5mUEHurIf7fXg4tyJoIUCEbr4f5CzBQredvONYJbPMqsk0UnUpCeXWJErX2SFI0f7/C0cG17WhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZDDuEvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZDDuEvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC4C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750603193;
	bh=rUTVpIqAL14rs/LwitaL0FQEtGF9N+aLEj6rOVjwuYI=;
	h=To:Subject:From:Date:From;
	b=TZDDuEvk1CBQTucHEkLczmroVhi4/n0ipH5LclkqWNwwnHxGSZHRQFuF89Z1rmvi9
	 cmvc7dJt2eOtaQO5KsPjGALyEjKSyEV8uEdZyKHiWuNhEqjN2ldCZlt64ZgL/NTHrB
	 vYfJKJgHKeEVETJ5CB98OVaG0enjPUuNET/lsPTHcCom1RpAcUE2g3Yg2InWZYFoqt
	 aijyvaFjl7tZqCYMkzyqlCrSYxNf57wDyqeuoF/jvjgJ7nh31/Q7kRpP5Yau5cn9sh
	 kHNwUKCrBNzwj3HWfugLWpYzQhSBPgmyvhRUTNmiWOLejSye+UEkV+uzgdplck5Dvb
	 jLkPQBoFArcAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B1DC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060319357.22833.7651215637819579564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72cb3c1634df963befa4e5b0f28e1a7539a9abb1be577019404c0805d7df6576
Date: Sun, 22 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750603193
