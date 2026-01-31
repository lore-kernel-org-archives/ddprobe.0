Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B3533066F
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769826234; cv=none; b=meqaFH4Sz+YaM8WjC4DO0ayKME9jHFCKQR55n63x40IWRE/Afd6QVJetvp8F3sY96nTV2tsZNmQ2Z1JEGV1K7dSqq68p/GfI57JvjQS/2Qqc3/1yFN71sfu/wmDNYt2T8Md5IDjhC/HzG8JtEa8uZbU6K7TINhyORGk2gbxTz10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769826234; c=relaxed/simple;
	bh=6orR0y4Dz1A/cph0YjKiwXGB9Lo6mZ5ZDvSgdtguvic=;
	h=To:Subject:From:Message-Id:Date; b=tKSe8aMbUlo/v6yOJNZqK0tU3x6I5lY2bD/piwhScJiBp/wuuuTEghVTnTBaVfDvcs6BEdiebSDQSUbThJQGTt480oX47jZ+//rVYyRatFdE2nvdl83N192Pg1i3kPnfYub4LZOm8NXciZtqlHpk2/1wsaLvH0JzlHQivTL0fsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2iVZNdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2iVZNdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DFFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769826233;
	bh=6orR0y4Dz1A/cph0YjKiwXGB9Lo6mZ5ZDvSgdtguvic=;
	h=To:Subject:From:Date:From;
	b=P2iVZNdg3bN5y8QKNq1gfXLJFs8vJtbjBENmjQWhiWSx5lgJvEoXp3lT2mKDo4XfX
	 /LuS7BcHuDp9DXVJ+R0JDKG6vyHQqvIL1SPCehU+G/wabe81rvoyEbTC6fRKW2QLvE
	 y2mXD8S13drglquhraxfCLvWTTshn8/kpeBEmRv6Bd4AbbOY8mkH6jQ0G5/zDgLMFS
	 kgDz+mB6aD2nMc7VpGQQcIPNuvfIg2swDF3Xwk6RZdTlJt6YOkOz5ECmYbEM5MONiw
	 I3lPPokkoSo+5wqwGbxYgGzWEYIzMZzSfBYFYYVfD5DJEltpUOwnbVy87lZjrSmG2H
	 F7RqyeYXiXEtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C8DE6BF33
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982623357.10466.6668601916740882199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1416f42c4f847ce273d4e124fcf8d393b801c796a1c3d0d18b5876de013bdfae
Date: Sat, 31 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769826233
