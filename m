Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEBB1A9FBD
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781570194; cv=none; b=gq8jfifo6++wt1dlB4YQ+5ZUTBNCpe4HghjJ1q9jhUT5qGYd3gcEn35hVuj6vqRcaQu7jgvjapGn1cIURgFcM/tRepWA6n5/vkZDOCjExfd75EwZZllzvhUfgQawWt3uvc3qEhVKDdF+HJAeju1Lnl0OGhNOl8Rrs/NmTKhbZUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781570194; c=relaxed/simple;
	bh=Yh+Cnvl10PHrCjq19eNdoY6sTIJDVU4IJdJxItlv8wA=;
	h=To:Subject:From:Message-Id:Date; b=kPSOYPLoXQzOq5qeEEC+Hqvn1gckM5PMpCE4x1Qjp/jx37p/80nlWeRfEEa+tHLXZ/ktJUizqZhWO5mdT7zVU6H1BPk364xtc3a0d//ngj1ogDMRCYbYhkPVcd0DBylJs1GeCX7G4lHCvosGSYbwLNXUQIMfpCCofeuhB+1aFXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4Cej7JN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4Cej7JN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB93CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781570194;
	bh=Yh+Cnvl10PHrCjq19eNdoY6sTIJDVU4IJdJxItlv8wA=;
	h=To:Subject:From:Date:From;
	b=M4Cej7JN6Y/zLOsem58fyTEk5yzngBkJHRWzDCfG1Is7r9/Cs4L8e56V+xQialGZ6
	 XK5XxhmUchjqGgD/Gk3NaKWBPo2etVsWu3BTp3L0syvl11Rblb0G9DP90uNmpGRQcO
	 rPmGodWr8MfnqA9p1mIfqdQWTgE5ok2wVBmLYEPFQrsBZ74jRWw8jaMNjoVdYYEW3Z
	 b9THrs/g1Qbm0XJOqeRLsxdjN7P2bzQMe5DeXuaR3BI6uEaeRqzWcqX9okKMoBHSoc
	 qD56NSjCUIQqVoB86LfGI5QbvD2mzShU2Sfo1VMJYoXdJ/EcGGypQt55qkHxIHq6bC
	 l6mBg7p/H7scg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA993CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157019369.1424.7238121246054286398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4859ebcac8ac32af88492b541aeadca3a66e908a93469f6f0a0c69f0c43a382
Date: Tue, 16 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781570193
