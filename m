Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197693C24
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726103154; cv=none; b=hVqWVmb4B4uty63IrE3Y9kXescGSLOmaTbefX7BdGotsvxr8/9BZK6viUa6CpOZnW0qJIbV8IhD0d7xhdCmXEQt4kDV4ftDP55iC3EKOQcjvIuoAReoRzEqQmEN0heOGzSMPjINAv1hJsviQeySLklIGJt4xfr9jtxC2JYEpCSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726103154; c=relaxed/simple;
	bh=d1mhD+dCF53c1Q5UcP3aaRPg+LK8qQH2H5phlPty9+M=;
	h=To:Subject:From:Message-Id:Date; b=aePQ5H4tiH79l5TCyuzEfgyARsFcaiLzS+7UlUZGIdsLq5X9QdIBeFYwM+/ULlCC8+JoQo7F/vJVvEhTjiJUUl/dYycI5q73F/UQC64BktM2HZnjwso5MlWivHpxwbDJ4LWeA+BignQZ8rs3sl5NwDoEEXR+IRSh5umLqUiRxtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AERLYgD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AERLYgD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A1CC4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726103153;
	bh=d1mhD+dCF53c1Q5UcP3aaRPg+LK8qQH2H5phlPty9+M=;
	h=To:Subject:From:Date:From;
	b=AERLYgD8kowA1BDGrpbRYOSvM4pcEJa4Hn+MH1EghCiC8Gkw0QSipqxCfCpucSlSF
	 Xy1PRB5ULYvD1pM0chgKwFJAcw45wcRka3nNol2VwLnm7Wzp/+/qBjH+PzK4vEWTdM
	 c58LoL7R1LzQ3nUqLJ7IzTypLDSsUpBCEQGlCSY3cbAnEAR4uzTN7MJHnvuTKejnaV
	 b6Ya3OSoKzySOmtltwPPxdSczJ1o33bOqDwgbFIq3AYJ9hfpK7eWDQ0pE32eI1uXo6
	 A1iITbVS2/1yXIcJsW6kRC4RbsYh2Mn4uMubQoA+Hiffwa9zATn1dYiCcKy+3O4Dbi
	 Ro2bLicqrp7SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F48EE57FB
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172610315359.25887.10786049028521551217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f00a791b77bb8abac3d7418c46298ea7b0b67412f270d9e60c7198e8c6d82c
Date: Thu, 12 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726103153
