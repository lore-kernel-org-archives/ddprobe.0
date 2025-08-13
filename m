Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1204A228CBC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755103194; cv=none; b=d5uOxVrny0IJyezoQwfb5brQkdiYTZ6yFHaMng6C966UfFxeFr3f9lsCdK9fCP3i6W1zMkCSimNiKc0RFBkyfwXt2I+cTO1JL8HEremu+SZGliK1Zm2t1lhaazugpdNlXbzV+lN/SwYTjebwQVUfnN1m92fWNrrlY33M1+4dUj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755103194; c=relaxed/simple;
	bh=+yNxKn37tthzh6yd6NWOFtLlljCyvxxYMkRHaljnH8M=;
	h=To:Subject:From:Message-Id:Date; b=BdzP+oiwnpeY72qXwzNxkoLYSomM398V3a+X3drWqFEH4LZU7fniT6NlU3n1UL+OrgKVQgKyhtW4Bl7RWwodnZdlBxk+Q3ceviFuZrGr76aGKKssbQf1RE/KwydbJPlvE+mGhlBE1Z3LqMeBIwGlzSv4z7nbOCx5MHPaig9C80c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoO4DpAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoO4DpAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C14FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755103193;
	bh=+yNxKn37tthzh6yd6NWOFtLlljCyvxxYMkRHaljnH8M=;
	h=To:Subject:From:Date:From;
	b=UoO4DpAch//EhWznsTMd7PvJOoMAIqeFBwlqwtAbDkaEzZ9xkXNmowPiX09DsnyJo
	 JyL1UYa8fRIttd79ACoZOYsTl074apaBYVihbgY0pzGIbaRgLLBhWXNZDbwyCwwr1a
	 CrCYiGe27XwUbehBYFVXtJnkGK5+C6ovr1RK5MyZy0LX62taXwQXwFa6CVX+rv0PwX
	 X/JhE1Ney/8OMwBGlIjyj76FGKm5MBAoL7OYiitbKJiHxtn3YHS4QUi41jxzAxJDum
	 Vicuy70ZWT+WZTJScrmu/nzRwk/kQuARk6qEyaj7uGBK57CovNR6qBy+fifxhrgE07
	 N55Gi2GzSiPPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E35DC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510319357.7862.17001384831620510593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b2c9a0be740980f97fe7accea226e8c5550453d58efb48c708164aa8c3919b
Date: Wed, 13 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755103193
