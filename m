Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34858322C6D
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775327134; cv=none; b=nV5r98nT/JMZqBAlNVe+IRKaYJeeoWcdYZBYOEXdpiOewiHkJ227o+eviWQtkgnmcratlqsNdNw6+FiffTKCKSsg4zap/iIb6TJXWFFRIs3x/rGADKuNz1wgCNWU8fAe1DAjYWrCmICxSqPg9gSBYMrpoVsG0Di+LUoyHeIGay8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775327134; c=relaxed/simple;
	bh=P3fyFKbp2NbOEx3gzLzxl8g0HKKg2jxUzpMg3E2k3VI=;
	h=To:Subject:From:Message-Id:Date; b=ObYjYkX3sUlekSVqp0Ai+nnF+BDeQsLpiIO+iqaRhAujQj7ySPZMY5M42QGAkkoJgYMNxg0sj2IApXLjoTE9uY2vKdlCM8E5F2YBdLCoOBXGWeqL1H7H762nUe3DSmJuPZfTVVcYw4zuuNYynO8MaD+BWvqG76Ua8UMRuOTQkMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWK0GA/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWK0GA/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6907C19424
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775327133;
	bh=P3fyFKbp2NbOEx3gzLzxl8g0HKKg2jxUzpMg3E2k3VI=;
	h=To:Subject:From:Date:From;
	b=iWK0GA/5fn0Hi1VF66JTHog64zyJ1bA79SO2+k+TyMBujAPxNTduqon44+Rdu/2R7
	 shdeZqjFhxmFO1rdwR9AjzCZos9j2mC0siVaSi4HCneZrGVMABnmd5yJD4TX+ZhaDr
	 Np7vQhFLA38pD7Q0CqvHVDYnZWV7YxZE+wyFmPPaeTSHuenOlzfPtLMMHvL/1hiXCs
	 AjxAmh/QazGJtNvyE33ZHJ7JN9wE5Qalsvl79YP+RquFW32sYpUcGXYe7405OVh3ir
	 ao/eZ47oQyI20B8SDhGg8p947x4ca9OXs4Tnst8279KDKJ+gLQ14+15DRclQ3jJ1He
	 +uhjbL1iUcOgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B9AE63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 18:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532713371.21473.1670267632926430399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d21b1bf65fe4940f9d1fa0fa19e8d0cfc9c3ddcc27ead3a77dc94d4bb0ea3e
Date: Sat, 04 Apr 2026 18:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775327133
