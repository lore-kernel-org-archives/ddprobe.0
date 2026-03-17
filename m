Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77B43F23DD
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773766493; cv=none; b=ThwfdukKihfyIVXIT9kSPnL3Ft7lTsTAHkAq+jQiGLOACjlo5ws4Bk6/UJtVF83kQAN8Uhx5PsZ3eHHre0zU4g3kViASN8tTkJlAVnNmHCgVqgvSDfS1dqhtoVadIoYU65naM64e/OeAHXkvQ5AHYhTKif+k1c6XbRp/dqwzGr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773766493; c=relaxed/simple;
	bh=xqfIck9X1l91UeBbxSmSHgSz/AX7JnmVd8ZZfFHObDE=;
	h=To:Subject:From:Message-Id:Date; b=FgLiCoNLwOb1At/+gddrI1EuNIjr+Cb0uGkzFpUIminYo/VDx1Ue4Jo9vP8z6ozrToKrfYv+mSYSsKOfx9QZI356SJtBzz+VYPGs4aiBKCAeLLalrCFWOSgDFi61ZNhv5Rm/TtntSIuAVXcrMf8fa+FtqAEFsqW/j2wOAEg9LT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVerb9k7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVerb9k7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0361C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773766493;
	bh=xqfIck9X1l91UeBbxSmSHgSz/AX7JnmVd8ZZfFHObDE=;
	h=To:Subject:From:Date:From;
	b=nVerb9k742e8/E2FfJd8YySnf1X2R4RD83EfuiWgbAWsxyWi5d46ZN4bqeE1ozZBh
	 mW/cxh/+T4mdvAk4RiXbQZwRZluQy1d6NQd6XpM1kwsC7nbNmYpg7aQseaHRNVHayA
	 OVlkwU82wyYHxXPpdZtTn9ulZ4eZwi5SvIV4X8OS+43/KgAsOnTnuPJ+k3F2ErjxyI
	 ZkRWOhwKKs68jOooEq2ZP2/C6tbnMWdA7k5pq+Ex9mMAC6watPDqVhqAautx2Vff0h
	 BkcTUR5ewoFILhe7Zg8hYbq116Ncebl9oitD8l3HMqf6lFpAmRceOPgntYS5jNR0MW
	 o/DIEWLH07bWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F921FED9EB
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376649357.14568.4529066768463437744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b131aae7562ddeab7824b225d21c3169d6deebfd03ff0979d2eb68809abe4ad
Date: Tue, 17 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773766493
