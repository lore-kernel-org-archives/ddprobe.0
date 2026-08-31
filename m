Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075ED3451A6
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788179434; cv=none; b=eDiq+9AKoQ5GlL7H6Jj+FME+rBW1FFjwJFPDamJQLY4kVQk8EEtDXzFiB2EkaSQKR0AlLEwiay+nx815hQ0bxVqAOoUmoWY1wihw+W5BumFNxBfLZjkdKzr66XDxTp9pw1SoHJMbQ+2R8GzMgQGyNgoHAJUp63AAcqjpe02WyzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788179434; c=relaxed/simple;
	bh=oEU638AJe2vzFU36n+IlSrZVmhscFKotGBIjxbiTwdk=;
	h=To:Subject:From:Message-Id:Date; b=RpxJOiZuLuw6Hyvy/Tj6RPzkU5r2sInBxc6+q5fg/1zjP8iQYkevq2VA7ZUG5uVkA9usFXdIho1MO7Lc7KbHbtVFJL5KQ9ZLLZFB5kfii4sMonbO0T6AxU3HEwF+OnRNiCO800wIHZRbGo8LUZmyAB3XidkVKqLIZVrDBQBOLDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guYR5Nv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guYR5Nv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B8CC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788179433;
	bh=oEU638AJe2vzFU36n+IlSrZVmhscFKotGBIjxbiTwdk=;
	h=To:Subject:From:Date:From;
	b=guYR5Nv+zBGroz4CDP2N2x4wd8ceMFY1uleh8lsoO9Uopo9J9BoIjj+zJNlYzCtFf
	 RGhmY1gkrfFqfEIZFMulI3280S/ssgGJt4QozCIIGoh6AU/wh7+Mv+WEgIsD+/rc7b
	 fZheR7U9WwTMDddIRel/WBoDqPl5mPCRk+fNCRv0imApktVU5Z6vSV9P71AkBuuzNl
	 eA5q5GHpgtSLgosia0slwCEoFwrPYAiFP2lhAPBKuSmVMCkUpmD6FSuReVnh9nBlpq
	 rtC3GbCWJOz/7uHeNR6ebGTTbhLyRtxANa/boAowx6KzL1AEO3tkNDipibHfP05zcN
	 cn5w7s0CJhGIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBF2C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817943370.25719.3000715485304699484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8b1aa80d5b1041555ce9ff1a0e7013a21cd7aaa8cde867c37d56deac2d38ca
Date: Mon, 31 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788179433
