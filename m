Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3861BEF73
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733894754; cv=none; b=obXaEbUqRx+i1G/aRXR3IpLk+fRgHNmOry7l4936fT0sML7NZGTju6lJGi/m62jxQmR2y5mIDPB1Vr71AJLhPm3JYi/bAa8Gj24gmuvga05CbV31aYt0OgfzaTnQSYCm9lolXsY+krbjJmj80QfUSDUFq3TpPZjzRPhLiNmUFP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733894754; c=relaxed/simple;
	bh=dns3lfVNZGscNAhjaQBigbZ4+oKmFwAdL3LXvG9mW18=;
	h=To:Subject:From:Message-Id:Date; b=guXIzKnRk0eKCfw+j76jdCHEbZkWdB+5cbikLmDStw4WSODCy2LevupTNZNr6Mhuua+H+NIndrl5OHfwjXgUMqvNPbYKM6OuBTxMpyHSkBUoObt2LxTDubv3gzWWSF/YBhwxfuwwEWoQQwRgd8+NfVSrMY3rTGQWaOCow6Evy54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isfJjtPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isfJjtPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E13C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733894753;
	bh=dns3lfVNZGscNAhjaQBigbZ4+oKmFwAdL3LXvG9mW18=;
	h=To:Subject:From:Date:From;
	b=isfJjtPVpQg7iBpZBbW1i5/rtsJPt8p1+1UAgf+Vz4p7tGi80/zBNj+4ldyodOLaX
	 h3yIssucyGzicPH1/b72ucGybP5Zxfju1g684c97HBrJyD5g5Ujfc1yVrCDqOuRfoG
	 Go2zwdAWyRVtV9ExDjgcnI9bJH5xtiVDJR0iYWkYiGHemgudi8l3GJPWrXG9B2X+4f
	 P8kDEmRkv1COvbattglm/V4UD7LmDFki04np7vd/wKXiamEnrNUy07spO9rPBQJ9Ur
	 7DJwaVx41BQt5yU300DSIPN0WHuPI5IeMRMsiv/T5u37HeID2qTdLyauq7L7cc49NU
	 4gG3rjSkdT4jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E32E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173389475361.28473.16282401048514877530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b774747e463a053f2f34066fadffb19c37db9522fce0c44ea5b5653fc80e4cc
Date: Wed, 11 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733894753
