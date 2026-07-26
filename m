Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309ED5A79B
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785044434; cv=none; b=lRp5pWWvRMlHUZX2goBF5zdr4JOUxj6Z8bDUebZSx7Pitcg72HmEQVJyzXcFnRoRSDh4r6PXQmSA9DaLu12oRKMXsBaEAk4Z5yHSDzPP5Mekikf/QGYM9kstisBWtDB4Z84x+9HSHYhASRrSD4I7Takl5HCUl8HL0suQ4aIitPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785044434; c=relaxed/simple;
	bh=hr28qNh2ItFORSp4PdI50NoarF0vTXdJ7PEJFloqUgA=;
	h=To:Subject:From:Message-Id:Date; b=EYqZGZgF62uz9lswnFBHeQoTEVVmxSumKdKWrFtYeINHLp0QX/iUzWMkFZThnskaUfbndnGoiP2k9Ze7hKPrXvf1QAvZIyH0tT86na9BibGzFhDd1MI2UU42yEdbPNNzoU0oF+nep4gAT8xePHHyfLZ2R+BDyUNzzhjYcK49kbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dr1auIKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dr1auIKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05BEC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785044433;
	bh=hr28qNh2ItFORSp4PdI50NoarF0vTXdJ7PEJFloqUgA=;
	h=To:Subject:From:Date:From;
	b=dr1auIKDF4eCdPwi1ImiBi+eQpNGDYFfYRjXVKX4a22KvdqHgqeE5HmwEuAHanRJY
	 D/i2ZJ393jvC7tLNa2PLArVVZO5M9tyAh79+KKTSPHU8rmIzv1fqqky/dq6GrEE1I0
	 8xXe3L8X0ai9yU7EOQZucU7p02sqgIedX4w5o+5kYgYOcy7pB2Tbp+tESI3H22HJM6
	 EHs1hSqcYbQ+lDPCRqovpRdqoJX/wjoZzL5reZi9w2hpnt/EXC/TIZvHFFkDiBYkh0
	 FqX2u827g3wnFy4eCc7++dFWL2T16+KbcL9jh75nPVGoKRHYf70rVIuIgNxIQlTrku
	 4wJgB57Z+P1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EB6C531FA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504443368.13649.9706328138830058642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febd110ce663094dda587657f28457ba0fe72eb94b7497762edccbc4dd117d28
Date: Sun, 26 Jul 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785044433
