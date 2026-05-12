Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4713BB119
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778608234; cv=none; b=k26EdSjMpirH6YQjO7WG6CZnZycZhqqfuCdOfNujTcM4Mp5VZsehAGSLwASOoJ2FgCYSvaqviKD53V6UnXDfUnaWkxYuMW03QHlUbKhia1VG7tXK9ZF7aFOGLnoOidIFRjEwVfjoRO+MctRQ5O7y00mvbBKed5ZXzUQZU8XjKc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778608234; c=relaxed/simple;
	bh=4EqOGhRd1Z//vnC/fJDVeAcx/OcvfQ0TVDzwIf4koGU=;
	h=To:Subject:From:Message-Id:Date; b=tqxU64SYEuFRskI8ppqtxZfMFNF/1GRsxWi2xWrwU4Zi8fXZboDBzCSz45PJxzDg2HZ2XSpIEdEUBUFZt9LL/QpdvlSG7wUHAD0xuYZuw8ulSTytfVlM9AOp28yFRQ4MpBShAWQW9tv2LvrJLsoE0+ETf6Wxhu2gJ1VzUCeslVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMwWEZSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMwWEZSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8963C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778608233;
	bh=4EqOGhRd1Z//vnC/fJDVeAcx/OcvfQ0TVDzwIf4koGU=;
	h=To:Subject:From:Date:From;
	b=dMwWEZSZONPZ3vWp1hNat4a4/CPrwXgKZaDeR7wt/tnmw4aaYmBrr7SqV/p9yXTWv
	 BYiGbmCXHgtoKlkMhAheEdvHUxgvF3h8VrVYbJsLn4UttgdBI99v0wlquKNLGKzsrB
	 JNg9XnENAMaLeHlbJRQGYlyWNQ+cxIsqsBGPkguCrHrkopE/jBNrnYB5U7ie9phjpS
	 lpGMiXL6bMfNBAKq8B8I3Cl0hBSyvia40Y0KeR8VYqFxhZsdOJ8aJTpC4uXvaMX1hb
	 4yMO9e/fLNXyAZkMilRmZTBr4zPcTh9513BD5BMTNOff+wpd8zRe47RzmOeAV6Zwfp
	 89ejtsQ/L7ItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA561CD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860823368.26620.2483531829556653573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac135b8ed9560ac841016ac06614984f6edcc7c3a255e2c547bd6584cb486b20
Date: Tue, 12 May 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778608233
