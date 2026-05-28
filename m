Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E80F3101B0
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779994954; cv=none; b=VfGc6ClbGKpTthqDTXf35E8U1ozjPtAYgDbYMydvpUmVYyeDYaFusPX2mk980B2LXh7mQYs1IejzMK9Om4uaYbnn81sznSO9EQ86dLiCTd/MzxQBhtM6Ilfhw5huGpZhAJYV7IMF8HXLJ0q8zKWx46+VjP2NfiHHTbhcN94+qng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779994954; c=relaxed/simple;
	bh=c9EBINLQWDyLFTij/3lemIcmxplsJRr4PY+305D5s14=;
	h=To:Subject:From:Message-Id:Date; b=DB2QYJ6yoM4RDY4Ds4+CHOmW6Mgd0OXoW/q8DhvNqfChbaxzW2+YdTJ0ebsJHKi3PaCoTRbRfSUWlWxkAinJxKPGbOevdMJwubFOUXOPQ2Vj/8hkdgHGpY4LNYfFnyI6L95RByHDucfn7kyEt7ngbIHr2B5HvOFcZNTWOiec+iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aalw9636; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aalw9636"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AFEC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779994953;
	bh=c9EBINLQWDyLFTij/3lemIcmxplsJRr4PY+305D5s14=;
	h=To:Subject:From:Date:From;
	b=aalw9636ERYO61VtTG3pAGVQfYcuW+5DYVQyB5QU1t9hexAPA3mp+ghhN2krJ7uFl
	 1Fct0hr+A3Anhynh0q/VoEnK0XM/f0TbV2Q/dGhMIzapTGmQXdDmLrD1V0hliAOBxc
	 mGDTe30gLupNhB74xzFGfEjdE3tmCHb+97dMgU3b57FYYy3mogCv/5/x8YcgfgUrfA
	 AkYd0AYBau+zwOgce7WiABG4brKoj+ijRWDAZxn7onb7Yds0OPLyFYvnArmUtObJrp
	 pctX+Y2amqe4p+YW48xsjzVlJPr7gWxLFcXfUGDoHUgDfW5G/zjwsG29nNs04JYQZs
	 7D8EUTgNotqnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC18DCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999495369.12793.5078167976628931413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6943f54366f3276d476aebebce1f16687db2a85909d8abc6fe77571ff98a6ec6
Date: Thu, 28 May 2026 19:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779994953
