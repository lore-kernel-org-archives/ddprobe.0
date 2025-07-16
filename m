Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69AA2F49E5
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752687593; cv=none; b=ofgp5jQpJxqjs18EYllu7mu9FTIGOVQ/ptnXMgsIv+BZKb7iQ/ySZsNLwTPFueCMBR1iHvfAXeJ6T+szvHprybJTJYc70RMDQ0bu0zpQXip8YwzScBztx/AGOs85wKoN5ifOTTkfBhITOzMrB65wBtvh9MHisDR8eeylaLVhGUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752687593; c=relaxed/simple;
	bh=D//nwbKEW4TLbQvN7wLeeaObfM2cWxAte4eDqovdEPw=;
	h=To:Subject:From:Message-Id:Date; b=GdMYQKhm459iWd7M7k785GaRatJGW+z9KdZqCIAJ2ammYyQy4QTj1RzAkFX2l/A04pH/dSHCmXnQA4GNjBJuocpW7qnG71Tzk58bfpUvtkmKIT/3cQCfnf0K4p90EPdjFDGKONfOXz77cY3PTkEvqEoHIRArktAoVb+ukJ6wOhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrWY/u2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrWY/u2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E307C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752687593;
	bh=D//nwbKEW4TLbQvN7wLeeaObfM2cWxAte4eDqovdEPw=;
	h=To:Subject:From:Date:From;
	b=BrWY/u2tZ+XnZeHI+FjUoPHaJ5VGyZv38XC4CL2BLrbVtJ9qyEqYlAVCGzggGpS+o
	 qIVQOPz7wl3htWXRxwzplwQM51nbYR293vE9unWrtoGzSugYKf7Sqbza00WXJIyGbF
	 oJteMi40+MIABk+zb2tbuhcH3KAhPGhqiqNM+kBqsOCiBnoMeV4GGa78NPl8ewtD4W
	 lr//B6ThmUS2IOM7WVBCpMoeqVwGAyNPM5SWzUIev9eIR6sVqUKYr7qrvGL3G3PWCt
	 /fgwxPUKhMxBsaTeZc1wTvdHNyzgUZ+gyYyTTgAJCba4+k6OrNY26ji+HTzxuz8Ftz
	 aDFZnvNWGFSxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F65AC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268759357.12011.10583746616926150516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02bb2206993946fcd0d894112c6fc03fc990d107ee168e4027e79a47f14d7c8c
Date: Wed, 16 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752687593
