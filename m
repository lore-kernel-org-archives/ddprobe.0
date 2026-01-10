Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F6517B50F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768062234; cv=none; b=mP18Jk8rcXDOEnMGwyXatFoEIpYDLFJusVS3vNzePXRkpXJG/KwUuaCAWgy9OIfxTneHmXbyeYkVgItEtDnXySRNZZQ6FUCANV/W9HXJSwxqwYw4CANlJiJLSAxUpiWu1CHAyMS5K3zIcC3eH1nq0W3ef61XIrn9/hvs9LdhXbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768062234; c=relaxed/simple;
	bh=ddqLIfLyZInGJ0XbGttsukRWQxSB/nFp4CS3icAzz/E=;
	h=To:Subject:From:Message-Id:Date; b=aqM7+lrLlIlbZ/Da+vmrL77xAG3bSjYJDb6uzjP5L+aSY7eHcIeRdxh30OuY0AH418yyDjrJHR2PJ9rqD/M4baMRfSOySFCUejaWASc+lQSuAb+d3cnLLrFgTxbwOzHuHPTkmvPvtgCUe1KAS0Hgz99jHXKErQurJ5yrvyb7ogw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj5YhfZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj5YhfZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A290FC116D0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768062233;
	bh=ddqLIfLyZInGJ0XbGttsukRWQxSB/nFp4CS3icAzz/E=;
	h=To:Subject:From:Date:From;
	b=Jj5YhfZJDDGsqu+LkdFWKgEL3dNn/GJyGpXqBoAT7puYyxPKfGo3qvsx5S6BNrsh+
	 4uwUeEaDUd9h2lEamX++CEr+Qmz92QAz3o5cDok3EafELkp7RokTyy5Qf92dQlbRho
	 tWWQKXZqz1KvBzbXqVtkayTwuGCs1yAJE0Z3/RQ8/xnBW5H/KaeDjwfceNyfeMN9op
	 HAHeJUpsQYIXcKYnsYnkq53KhR9MnhHwKxvJKw+F3rFhuAY/mmF0TRL12m4n+EL5Lo
	 LZyeEHg0Tfp4QQYeolRnE9MPKPSmvrO+XhBLgfpOaEXLVydWvr6oXgtfPLKyy/r2Xp
	 ehl6sUvT39DKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A6BD277F2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176806223358.24538.13078744946654928039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02bb571427b35891571a505421c2bd9924cf306811e67f9f7ec716265007be1f
Date: Sat, 10 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768062233
