Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E230E1FA5
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711771097; cv=none; b=k7xCrF2ZeTizLak2OHRrOmiNkMzqDBk6pDGvi5+guv6G9fhWriefUHeRwPuL1PzR8xBWq9rZAizWto883WtwYJCn+0uzfaisfGkhfZTVwTej3yNKyhM9eGq34NbWBOl692iykF++oOveABGW5Jy+7QLaVbI4/hwZ5w/JNcst+5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711771097; c=relaxed/simple;
	bh=XioefbhSsmUkJURDNL46s8lUm9QLe6WAtBBJ+8xSmNI=;
	h=To:Subject:From:Message-Id:Date; b=JvmnF/tqdyHs/GQhMz1oeXE/yB4rRnETPJpDUzgtKRjh2dGUaog9J6AC0IAIOBKi58YOK9rsUxogwi2NpQXOyk44fmHPuTAbjHuaq8fDRDsieOXHTZtLqIMlhGZvAdERZ6EI18wAMT+oxbuzBvx9CygI9UnGyUVAxUPwjYwZiJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebCxnTM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebCxnTM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E857C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711771096;
	bh=XioefbhSsmUkJURDNL46s8lUm9QLe6WAtBBJ+8xSmNI=;
	h=To:Subject:From:Date:From;
	b=ebCxnTM7Jlhf0a17Nxy/U8QqtV17sN7rSwytanSAWzbpIZZZpaQSVxFiUzlL4jmJY
	 SIkDtBz3VthDrj+URwjFK8uzBhBYHL8kYNvwMVBhwX68tWDnBHoAI4QEelb/3nIwiG
	 iE64YQYc+8nNH8myzwtiCjPdnZIfHy9QHMRvXXKRzhgg2pNXln+TVNoMeoS4plbGv2
	 10YdNCh8qkBKOpmjjavGFL/zHsushprQc1/t0NqVeSJUYjYwuiLPBcMWFq2DNJ9R2E
	 +n1PJEF2QAqDFaMUuazYM7CqwyKeHCHdpRdFu8YQGY0OXSF+FAySRVE+ordYAw11Iv
	 GuR86F7WmU/+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685BBC47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171177109639.29614.6331861169280698395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e450216fb8b2eabe9d116a29506ea3e01ff0767e024a6b96ce64f86d5cbe0e
Date: Sat, 30 Mar 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711771096
