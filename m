Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083911E00A0
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757400594; cv=none; b=UIHskSeO1i5OvLMUzWQ/Q5sRB57vrS/G2Bw9ZsxKbkQFvQsOCYE2hFTDZGV+nc5PuuhwG3F+qYOmHEvH0UZz4CmxQgPWwW10c407Vx2L2SxKRJeXuRxvHX+M+6GIUwah12EzX18+1zm2mW44pdu/C/eJX7DwSwgNrdmWZvyVCOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757400594; c=relaxed/simple;
	bh=REvwoaO4Ke50zYvKHKgzTP6RRgqicdjoZz+EY7Mnc1w=;
	h=To:Subject:From:Message-Id:Date; b=JZ9KXAOt0j1ZVTaHujiyP/EvRTk9KMoHyj+i1JDSZvcAuGfC0XcPHJkNM9uyiwQ+b98vzHDE9wZXvgfPe8jtjA4vA/YnZfErM9nrWLH19IgSh8v+2hM4++RcO44BWGlcBG73Smono5084eRKBqkS5DFA380I6V5gnJzKg91ypL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUGErNbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUGErNbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CBCC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757400593;
	bh=REvwoaO4Ke50zYvKHKgzTP6RRgqicdjoZz+EY7Mnc1w=;
	h=To:Subject:From:Date:From;
	b=kUGErNbEem2CCKe1CA2q/jAfsUMFYmyhIlxrvUT5JNfzCs0cLlu9PKQ3w1vFxZ4W7
	 aYlHS/NqqRg6ZCd2OZm0Romlo9fuj2Jalx9KCn5JI9MCsN7rOS3moZU1YVJoHg8tTU
	 tTrkp+fpjtFb5ag6oIJVgC4j01aqd4k9ppcqV6QEHk/c61G2AYH69Om9+U/IusN4w5
	 /yn8Apz8N5FuqlWFRzXz3YOgZgayT+eh4C30wIcVrtBMYwnlhGydC8Qj0fs0ANngmx
	 U6UFEgpdeBvKWBTtm3/Fe6ElVl2uVfoZqj2MXGFZcLWafhcD38VxhlXOeEH6sn+9si
	 wTIUelymOuTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47FCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740059357.21579.6549519113853757571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945aeddc12918f873b82cb1be0e43439765c54dbddfa4ebaa4d1ed4c47e90ccd
Date: Tue, 09 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757400593
