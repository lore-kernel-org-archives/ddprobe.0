Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1478529A9E9
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776413254; cv=none; b=d9OGJD/18d44U1ph98ON3wcFQJJQEX9Sapsbe20IOxKOGbUTp29a50I/V0GnKsIanSagnPIU9EHKGMzxsTUxvj//HGl8J/E8ykCCeCwBa4GfK5JePIJQ5QWWIqLcT7bo/HWkRrF0kZy8oo7h+TiT9Us7mTlz4C5YnSqx7ZC9mds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776413254; c=relaxed/simple;
	bh=jl0ndzDR6z6zCAzF9Ax9jHnxlw/bXG7aHb98G5wQSKs=;
	h=To:Subject:From:Message-Id:Date; b=kYP6btHsjLop+vBw06WPeq2lXH85l+lEyPOUno5qVxSW8TWc1CyELLqT/mwbSPmpfJDUTfMiFhDQyqvzAV7Ym5Mu32jnArbRTEygYxdB5m0Q6cEYIQ2u1JYNt0sGgAVx5BZwTa498V8q/S5thqEVh4TIBjTU71Dgt1E2JCKTLc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THSSwxyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THSSwxyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E9FC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776413253;
	bh=jl0ndzDR6z6zCAzF9Ax9jHnxlw/bXG7aHb98G5wQSKs=;
	h=To:Subject:From:Date:From;
	b=THSSwxyKKb1mO9zHmHrxuYrtSqDaKFhGVTlKrRLAEhhaWpbezlfZMbaTMnfr2VE2r
	 /W007BXsZ8t/FMFvRXxNT0zDpJOEAwcXrkSOtAIATA1/mY2YGmjHAntyix/+jYaDEw
	 pdAWohT5akmEq2R3IlAc0tXHKEINzPQJHdtndr3vAAFC68+EKCicDhZEiwUXxfFE4+
	 3ynIpcox2PJl5UMP7nmJCOBsCK9LlK6e2RAwTGD24nNraCfMbRCcr6ucslGqE6A65p
	 OagujhX+wCNWfAEUVQ9U9+W0Ej7rk/cp8gKyuNjHTYdhhh67fkH0yytYhfMm7frzlH
	 smpYGI6lACiNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA158F8E4B7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641325368.9107.15672136040730131872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025dfda82d8dee175130e3b0e0a6ce600c97390e8dc19fab865b7b61fccb5b4f
Date: Fri, 17 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776413253
