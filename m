Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3788A8003D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783270714; cv=none; b=iXk3cL36JViE6NxKbiARF6L3V0sZcHaxeu8P9moa8gsK13ZnKmW2YuUh9pBFNm982M4fLDNX4oAUctHf1wLJ/W4Yz/CvyjvaQYRJP5LC0UDJqQiovaUV5u3OaLLaYmt8+Ua0Lt8vrT07BqUBCtYMdF/CEaCUSM2o/AuAqM34jds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783270714; c=relaxed/simple;
	bh=NROxe4Gb0rK6XexS0dwwOsPU8htnc48RyZSqL9fCsGQ=;
	h=To:Subject:From:Message-Id:Date; b=ROklKFSTrZjRKsH3qEe55OnG2PM/6n1+RD8Bk9WtzTmBMc1Mrx+UtqzjWag1Uty9UkUWtpXp4+pXRlrfiMSjs1lQyDq0eDSZYUh53qTDIZ8J2+t9FFR5NQNpRaDXd+QN7EopdfTyKM/TFJCIjRLwT4mVhWF0Q0CvrhbhYLm6ZKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNsJCfXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNsJCfXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC52C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783270713;
	bh=NROxe4Gb0rK6XexS0dwwOsPU8htnc48RyZSqL9fCsGQ=;
	h=To:Subject:From:Date:From;
	b=sNsJCfXxCzQi0c9ZMPAMdqOJxl8U0gRPOIYEVQOLrPRKNi7+8Qn1ff0+Gw/ubUHjd
	 /UfV40y78PG2xiS0naf8IkmWG7c5SR4sHBDZjkzbDrYt7TYZHFO0Vtw4FdKmlMfbr7
	 LevWpBfmCLFr/MIgWEjuS622SKK0Pl2Dztj4P0zQNyhJO8mx6lbI8hlNVbSONGJ2c4
	 72lyiPwfwVYDeAug+fv/mvc6Z/XY8eRvJyseJDNH2V0WSICyY/CBRiIPm0n+KVbCHj
	 MNpi06IbeqyYpY4lTRoLDMfjYTJ16MlBg5PxKWnwnY/pdwpmsaI/EZW/rkorJ4vId7
	 XG5Tyc2XORrgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A27C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327071368.27287.10932945909778038970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95c2c9fe5dea5368b654a8237ed120322f62d80383e32ff1861b5c794b2966e
Date: Sun, 05 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783270713
