Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300EB17D2
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752644994; cv=none; b=IGKBnvhizklqtV+pd4/LwDZ6DTe8xiwlWr74C338VII3pGyBL5F8V542iejW9smFQ9Ayg6tCB0KdbF4Gy/oEQBLnxDcjyjeCsYErvFgODxGqb6UoJoOocCaqcb89r1QvrLmjjDcwUYUy7sRrP+2QWpGT2yy6ui0SApBuzDmzoqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752644994; c=relaxed/simple;
	bh=s6TjMHe3nVbcuCjcy9kA+0Es0HQaQL32zar9o9oqI38=;
	h=To:Subject:From:Message-Id:Date; b=OeLDYlb/dVsTtXe8yazgShy8aYUgA6WIyH3kL33FOcsYLNLbKf6YvnEUW2yn+zzJKNPgikoHRhO2QIf2VcapP26ygaUbk/Xi33goqqlaNWboaOCSk+6eoUmCe0F4f+QFj5I32O/e41sd6qsq8m8mMrrD1RqE3szyxozGCA9Udkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvlzM3Wa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvlzM3Wa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C17C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752644993;
	bh=s6TjMHe3nVbcuCjcy9kA+0Es0HQaQL32zar9o9oqI38=;
	h=To:Subject:From:Date:From;
	b=YvlzM3Wanhc4yvr3LjcCJ+8EcMGUhhb4Ic1Idc2UtxEDgejAErBw0apk/BFr7I9sS
	 kJ2Anj6P/HxMfFsu0B/vGfAGo603Sg3N8PjiQnl8ck306jJSi+uSSnDmfihbC0Kjvu
	 M/9lALOg5r1JPioGk9V2sqyfDNR7fv8cWvpvSgr7EvpTiPsWnm/OJVPEriBPbZpHti
	 lKy+LVzfOg+KMfN0WhbTvIsOMII/3Z6WQcqz5ewEDopxmosibcYoqdnTM2b0H25jqo
	 fhrsVuQWb1ZvOH/kJFbW/f8fT4P2DkdfGZrpgmC30mETZ6YlIBEYFHqIPwiPoolh6i
	 y9LV+SD7tcd5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E1FC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264499357.11321.6040770131367718716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b722ab251a041931adbe24b25245cdd36bee91b93eb2b4b6c1e97b718643b1c
Date: Wed, 16 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752644993
