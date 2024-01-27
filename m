Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF0D847D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706352497; cv=none; b=HcLlCS9Uhh+Y2NUS2AswarEf3P1mrQ+4Dap/TrhAbGAN+gLN7vwnUZh95fHwjBxXQkKCCpryytQYUgGqWcFnfvG0h+vxzuNm50SpDHTcfFQTeVoPSfORTr7CYAkXSTh/yba3CZXyMAIVasqZ7FN+/CewhyD+JUOsPr4At+VsNOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706352497; c=relaxed/simple;
	bh=TBPF/24D2lAQXwOa0J+3wNA2zDytWz/1a4ojzc2sq1U=;
	h=To:Subject:From:Message-Id:Date; b=bmhBfcXisQcRPOqc0LQEALcC/y8xiyWBOUGV5wS/7VgcafUDJTClo3Aimpmpl/wCr1VXf2G4iTpXaqQLQ0J1TokiMgd+YpePAUl7Rj00FOY+3feAHXvlzCypinINLu4GztEAmfBHmiJWAkmSfILTJoPKdcO0l/0ZjK3WnKagQeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI4uAoHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI4uAoHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 811A0C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706352496;
	bh=TBPF/24D2lAQXwOa0J+3wNA2zDytWz/1a4ojzc2sq1U=;
	h=To:Subject:From:Date:From;
	b=rI4uAoHZrzPgGcDvsgbO6huRKQu+JlLw4gsJYjPrAbw6acM4pmAw1tv/k9CaEiKHf
	 YhbpbALFThSMfvOeVleTBZAU5LaF5Hjr2KX0rDjnOQYQL2+p0UpjLx5ydmUcqgpzTY
	 20KueU0oGRwy/nkh3CEVXpo9VXui2znEkYYeRY4Y1IDi6UC9gEV7/FnCtsO8RzHmC2
	 e6B8aeic853KtizM+gGAAPrZifo5tBlXygXoe0+/o42SrUO1ikif0CetRlJP5btqca
	 ZGs37riSm2Zta/Nh5Qc1e1tmtdM4lsUdlQHL3b4btn0yK0d2N33RWOwK/a7pc96KAJ
	 H+soRDALCjSLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61976C47DDB
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170635249639.15320.17333510978341650331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f243d1339816e4054cab959d57bfab59cd59a7c08e0e7162dec231d5efc412
Date: Sat, 27 Jan 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706352496
