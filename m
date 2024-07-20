Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E78208A4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721513154; cv=none; b=c37AOXZ4x7Jy8M/C+l38QeUwGbNP4sUFZ8ZU6wtI11xs70rPQ01NBfMz3VnzaviLjV8s01wCsDXRMX5qPbAq2QT/xagVv5nygURMoNxBq/8+Vc4OzX+kKBrb+Xouop5CNL4utNi8predgLbbg9h71nIxCVPfNUUPXP4CnfPC404=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721513154; c=relaxed/simple;
	bh=RpO9pHrTnZZ8k7fhXoGVEykQ3d/4/ZG7rWfdgEU3Esc=;
	h=To:Subject:From:Message-Id:Date; b=Ci9GPBOH1tu5nw12jyNZvgu3Z4Lnmnmg/PBS/mq17mhFSIX5rlrv69BB261Rr0U81CVBbvtZKMB6jBNTyUnlQH4BK0CVtoBFQhfQ3cn3HL5aSYtZq3jQDPLJGnPd5icYlLPL0rrR99YaXcIw3x9LA1whdrDmVAQrtfT0Qd8xrBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4CzaD7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4CzaD7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9C3C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721513153;
	bh=RpO9pHrTnZZ8k7fhXoGVEykQ3d/4/ZG7rWfdgEU3Esc=;
	h=To:Subject:From:Date:From;
	b=A4CzaD7Q5G2jscN9eLMa9KUpJDWX2URw0gEuVW0X1EkzjY9e6CiELuwhRWQDpoRxG
	 JSIZPLu8AcIWcv0o815kZlOeJfw7LLbWsAafNeu2leNjjXFpjEI0OEmiIQuw4OlqZT
	 TDoPEhDJ8Q50JnJhzGT2Q9pbQuQtCEd4Tp0aol5OByWlrzfpfKiRao9RPmbAuCWf43
	 k4mhs+NZVevV46uFjACFO2xPGNF2LCCaphCcU9QjHBO0+4/u1XQ8tPwEluyOBRPO+C
	 IvycYQTztWj2oyhT3wc81CI8SbBzQiF1uiwh1Yt+1aY9OoKd7Ke6eitPEyDS/OzimO
	 sn99I/me/A+5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9651BC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151315359.2330.11873010338980708180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5348e8b5a4f56bdf1360ffeb720df07969d5ff6f26c033a1805f809812062fd2
Date: Sat, 20 Jul 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721513153
