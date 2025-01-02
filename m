Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264A11B4127
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735831554; cv=none; b=Dk2GLdBEnkTWoLsATZBG44rDq5nOdLWQN4fniPtWOlg6ItUeAyVfyiS5FVFzOnrU00zZrrFFem5M40kMSTAuuqYZdkWQzGpMTlKZ5JyhsS22ULSdaGCEcG1Dbw0Do/a2OsIy+3keEmsehJyxZExxlMrDfvq0sbiomqONw4yLImc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735831554; c=relaxed/simple;
	bh=H9Ddjd5BcQBKizzxwV85G5nQHFBUSxmPKeWVA4d4nUs=;
	h=To:Subject:From:Message-Id:Date; b=nlWKOpsu14hwSB8StB9rNshJznyk0jz8M+iufCKXxc6fmXRVbdNdecbVhFvJxoSBkaHIH3tV/oHPl1W32dyAGrtheBgPFYLl21mM4Cebzqu/kH08AuGlxlu6x8CgvFcQ0f24lnUR5iTFPgMIhzfY9cgxCJp8r8mX1YeKyI6IYxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seko+OiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seko+OiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D58C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735831553;
	bh=H9Ddjd5BcQBKizzxwV85G5nQHFBUSxmPKeWVA4d4nUs=;
	h=To:Subject:From:Date:From;
	b=seko+OiMxdqb5ggSITy5waH+PJmG9ztp0ciJFIjGmDJKUrGfRPxcQ90ImwUTVCBw0
	 sOqvkM+V8qp1egkUMFyYsg0eO2nUh/bzddQdRHXmjnCtRBC51VKq7bU+G7j2tJePhO
	 rPMqXAibQOs6shXRLkImV/U1SWZBO8aFtIHoA+5CYkjC5JftJf0dZzmywAYP7Q3t+O
	 UWFFIMCG7KKyM+nv4A3FQbJXR9bbbImGC5moPzjD1K2sDQYMSYTvzeOz+ZglZcF1P0
	 5TR3juRJsdsi6DNd7Aw9afEhWc67eR4GS4zQQlZ9ThdkkthKahmAe/xlNPNrfOLUfG
	 MxX8W5oNLSZJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E32E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583155358.15674.9243519100014675776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bc0beff23ea2c8420b044976e0c4210210b597bce16137088c86694ad103ed
Date: Thu, 02 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735831553
