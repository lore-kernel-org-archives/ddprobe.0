Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A0726299
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780178074; cv=none; b=KEiPmAOIM7LmR4iTmSE7ffAl1LEPc6lPfj0XSNVt6VutNsoeDV9r383hc40+FLzPj29KjYsxHMxZqgFQ1iJ3nOWAEiEnbd8Q5B23syeI5b1NPL7340A6fz4Qm9+PQcUg1cYYGM+It/S31EQzXTtz9QvVOdqGRRGtNznb14ZQjyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780178074; c=relaxed/simple;
	bh=oTa7+88JQumc8qwylkmIW8VhOWBDyvd3yzMyDaRu6nk=;
	h=To:Subject:From:Message-Id:Date; b=WLJmPCzjKHuX+qsmXVRoYd4iF8ifHELob7dgX8nWlTan2kExx2mJ/tcMRGD8c+3WuC61PvV/QqX9Z8+HKlqSclo7COl+Tmr5TxfF5YKuJfKixKwoC19OjJD6CeMGttdm1/rG8La1CNDz/agyZez581Azb4lQL+t14dkY8+p5XYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhCXcjfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhCXcjfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDABBC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780178073;
	bh=oTa7+88JQumc8qwylkmIW8VhOWBDyvd3yzMyDaRu6nk=;
	h=To:Subject:From:Date:From;
	b=LhCXcjfLXC/FiF7rOqpUFVh8FBLXgu4mtgkmoBECz4cPu5CGuwJrSgW0UjCTwLsLf
	 8ltvdOS5sRfe/1rSzbvOl326Uhq3vy20V6xhd+Q9pZNX/9Y5YatCGNLcbF5iW20+kS
	 ts2qLNo2sUhOmZygt6NLGE3nf6XhlzZZeyFMrSluLtCDJ0m+2EjMlKcF2HqD5gl0+w
	 XuXY3p1WIVBtA+225YOs6TmlGWQu60/C442o+z8zvaRm7boZooh18artZJlLooq++h
	 f5FFhC01SLvqDUTbxfT1kJwc0rNuExgrOEaPIDz+JAQcOP+bg/T01tpW7qYeS0KRRY
	 KKWQf/LPPLlSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD67ECD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017807368.16844.14366976128312964190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be542ecea12f11ab9a0f77e3080e115728532adabe01fa7365559f1fd39021ec
Date: Sat, 30 May 2026 21:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780178073
