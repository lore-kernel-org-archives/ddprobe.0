Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BD5A55
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749273594; cv=none; b=UtEzbo32gxMyslHwo9dX7bzu3bfq28kNAyu1S1sExq2W4GKGnYGJD/3LeQcxR8TponUgO8yr8tt1XnSRiIdCi+0gB3kcqRcmJZO4a7FFMj3um7tejy2NWUnuVDQw4d4/3VudOxlEadVQVEXlqf1g6aIGdFFasCk+aemqnO7GihE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749273594; c=relaxed/simple;
	bh=ShVEHjXnrS0nQODmELJHXwwyF1cXxHGUh6w4U/owVGA=;
	h=To:Subject:From:Message-Id:Date; b=YN1MvhYDoftqSylGFtoIWLJQyZz4qd1hLGG9ALGBGmOnJnXj6zA4DJVxtww/DzlVXoYd6awyF4MxqCAcxXD8MaLEZ4lQdVxno9ygfYF4mASSpkDQZVjYmMelR1vtO6bAtkbz0zSJ/sNPkQqSBrm5aS4a5Xae6Or2mXFKkMfRJxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvvuctC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvvuctC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D36C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749273593;
	bh=ShVEHjXnrS0nQODmELJHXwwyF1cXxHGUh6w4U/owVGA=;
	h=To:Subject:From:Date:From;
	b=mvvuctC//eenKT5g54PbUa4DyZJPjxGNhePQcFEggYzBKkuku5eP9xU3jsFL4kxXF
	 ahghKb5I99hYA/MeTiYeXNayHKAlUyXfhnvqG38eNnUYs4nRajAEVrU0nDB+XWkJry
	 eNLYnVaQcMUTlGM5RrH5PuoG1Bu/IzW2gOp4e9jo9uNFe4p8Kh6+q9CX65z3isjz6g
	 Hl5lobAx4zWn8fzCqPV7o+AE/wfJ91fZbHuqIeDc/l2vjh23JWG9gvN8gNK5el43WO
	 cB7Fh6Y/J0wG1evi7NSKswpuNIQr1nx5dbZ75tjnJyVivQysKhWimzeeSW2CqsyuMf
	 fMKPGdGRO+ypA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92357C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927359357.18424.5989685623741701191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd597ad68ab3c3563a57454122380656a7ec75f6c668f74370b798bbcea7745a
Date: Sat, 07 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749273593
