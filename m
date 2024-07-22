Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2984715FCE6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721634954; cv=none; b=kN8q4W7JalbEUF3vuFYfjRf43erRwbU6COcuOwxO2dz3HQm2x/PvjqUy72UuRF63EstEMZxQNl/1A97a3rKhm6tCA97ihWFW8QqJjBGkhDmlpirugUiEz1+PCpxjGEOK5aPUmb5KGAzNArdNEkrhDPUGAcWXdMV5ZBvtzYGHFsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721634954; c=relaxed/simple;
	bh=HRNHwW/Ci/HGholHs3yGn1SEF4sICGOPYFwjcZ5KnVc=;
	h=To:Subject:From:Message-Id:Date; b=UjCEpsxEA1c+9dZfBv16gwaxL7OyFneuRR8quKEKKJtJ57MrLaTg+B/9FeznLeJNvgumf3/npCRLZuUBLGrQSs7qfccUkB1au66TNJZFMha1f2qYLrARfgTG5LoApqasw9E/uX7FSxOBCfSrfDOzigWDeaZo/ytob0CusgJA5x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLysAsYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLysAsYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3687C32782
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721634953;
	bh=HRNHwW/Ci/HGholHs3yGn1SEF4sICGOPYFwjcZ5KnVc=;
	h=To:Subject:From:Date:From;
	b=tLysAsYStT2PwKB5qc9zno/CtX346pinamYbOP0EAiQtrkmrJNzQLUTSq5e6LDAFp
	 taHbjleaxDIlwTbrkWU72vmWIulz7PYDivR73Ppso3dcWqaQ/jUFfoJ9z/UUTEWnG4
	 3uZx3gyv9uLaJQNFUtDcznV6m5dzqOY+XwJFp8znB9qBDZK4ipArqon+NR+b8RSJ+x
	 MyUUTkh+M+MdZHlbSq1v70aYQ30ooXs4KRwHZ0jRC97SOFWVkVP75oa4msIm97kMO8
	 3nenrNkepVgRWJIXLEOkHmyovewwbBB6e4zpvz3cNVnZmDH7W81hLTKustDzYIyDTH
	 pmzfS8GMgGBSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90074C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172163495358.9433.4753526323720809865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c47b7b8033c5da2dae6d049988a4e6ffec5dccac62acfe516f239c3764d1909
Date: Mon, 22 Jul 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721634953
