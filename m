Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496342744E
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715157143; cv=none; b=kkQBH6bxurp1lA/6I6P1YGHAjCxM40bGxFAcyy+F11WavUP8Jj+x4uhqaqrW8WKVYG6UGMgOz40P9Uev+71XfHa0eDy9FGZB5ctxsP8ZzKrwzIf8AoiZ7IXVlrGGSAEWMgmdKSkdkxjeCsb4HrQQccBCV0OjQqHq4sKXdpEBZ+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715157143; c=relaxed/simple;
	bh=Iqkffmgw5N+XI5kRE/M2vCHWqYIgP4Cq1vc5duHNb8Y=;
	h=To:Subject:From:Message-Id:Date; b=LEziuBb99vIJXJvdyPgIbzhevaoNzui/GdLf7Ce3D6eYaqbLFhN1URNqXyIlxqT6uKL5owKaGtJdTfUjeOovWwVWvQQBVL9lpE0obQ0tU27YWB3dDVoSv907t2ZaOu5EnWAr9MI0r1EUA/u0YssBNW9kJydZPqSrlwqXlsMo1r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyATPQeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyATPQeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C10C4AF17
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715157142;
	bh=Iqkffmgw5N+XI5kRE/M2vCHWqYIgP4Cq1vc5duHNb8Y=;
	h=To:Subject:From:Date:From;
	b=iyATPQeU+/3PKgH6I9E5W8KMqka0zB7D4gcFSVwdaGll/samKyoWI8zVfA3X+GShO
	 TX3lxaVBlJ7iMrIlszDIVGwn2K5FX00Pop8lgEqUWJcpjaFD/d6HIli2MILlyPhRYN
	 baXH5mEse7eeIcQ0EVbstAy+yldaT9h/fFU4BTdk5VTe0wZSfUEL43vCyAWE+VBCKX
	 fOD90/2JypivnPMbnrUJFV4OQ2LeKlbCZTDUp70OcjPQR4BJ06fgqdn3OUC1MzOfvl
	 e6bFHT8h6rMTjHxLJd6QIUDc1fc2soclNiHHfsA59AB7gI7NFe0ZeuY7GPKWbQM195
	 08ZzMtRMN1A1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF56AC04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171515714277.425.13844468661303449339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9840af2274380df69cbeea0327c1bf99464727cd4845060650d230f79c2020
Date: Wed, 08 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715157142
