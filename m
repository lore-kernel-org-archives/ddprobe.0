Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B774355F42
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787158834; cv=none; b=LuVOS4QNkdC9UOo/Z3y8soi/3LtnX0zB4prwdqINSLQBVoJry+RPN5anEQx1WHEFiwoYSI9hM6EBYx1r9CEQEOY8sI13iVKlmHw0tZaYr11AlkbiGedCn4wYMjwUGw4bJcrREuYkx+oIhaLKhMlCSOnc+E8S1UcEZLaFp1ZK47w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787158834; c=relaxed/simple;
	bh=R618I8qigMF+TN6tdfNOGZhWiCCh6dX+ZabSKVElj9s=;
	h=To:Subject:From:Message-Id:Date; b=LpQXwEJfHZMp5RdPSUK8KLVSp79vdWiIbXkZ3NlP48XjrmbwRYns68W/Je7B3P7cDKHolTMK0ZDThzzTE7ct+MgXZYGnV8DVbBoE6liWIUq6XG9GDqHfJC7yI0dVD4vD2Q4+2KLdCshqHRR8QD9BWr3JV+PupKALDhymtrocabk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TM6mGvbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TM6mGvbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAC3C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787158833;
	bh=R618I8qigMF+TN6tdfNOGZhWiCCh6dX+ZabSKVElj9s=;
	h=To:Subject:From:Date:From;
	b=TM6mGvbNgbPuDMZ5WTw+Ya3XIR/s0oMzpXnTUS7IHSNkTaZjq0CJ33cW/qGsUXgYl
	 nSocX31lFpdRPIajOGXA36se4biQyT718RxjhMhXZjnseyCNu+LIYgnHfZVAUbJkQ6
	 Beron+JnRH4LKglHg3lzjjVy0j/k+onWGrV5umrJe/djUAnYD/cTz8nzet2Esaygk9
	 mzwJ1YAv5GsSN1xp1NYnMo4wVufAbavRW+MZSJzSO8V/rXuCGpC1jPBgkApC0Z47xv
	 iS69WHuIBJDgVyB7h28Ym4cu8U/ORNQLmuwBF/R5ulmIs7iOJsbyWMiZ6V1UBNfuof
	 C8tKuYIZIt8Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7E2C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715883370.15161.14837009339237095905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4db351032f0461294112610f7084de3739e55c9b776f65e5134a9ef96714e6
Date: Wed, 19 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787158833
