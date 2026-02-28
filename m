Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC9534E763
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772266494; cv=none; b=lNvbbGTxnJKZhW5UCU0z0zlg8QYTnCKrv0TfSiAfreHBtVPbfRKWZCfiIuWYLJbAP0ZW33ZM8w7dPQxJRNHThlWUzQ92ABq3od8DR4bBh3y8kvxhPJT9QUqrG0PLQhvU4kmG+k7JXDW/JcS7haE4fkw003BJq60qd6sQ1Qo2YC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772266494; c=relaxed/simple;
	bh=RiJXOF2WGMEcnQ5na3SokuSzI2Y4i+bJDul4aDXtbGc=;
	h=To:Subject:From:Message-Id:Date; b=SGSjm5gGNLqpsoQUHVriLkKrqRHtzXSKCi7/Lzm8ssldfQU6GV8HIKcU4Uwub6/XLkZHQqP6Dzqmy0UvoiEBLVifWpG51aUpBfn6t7qyNGsietT5UrFuGEjC4Tex+NHGI9ykTc0sAAuNQC5gxG0rB/JOy9UOyYv9S/zBSta3kgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOJ9Y37N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOJ9Y37N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA7CC19425
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772266493;
	bh=RiJXOF2WGMEcnQ5na3SokuSzI2Y4i+bJDul4aDXtbGc=;
	h=To:Subject:From:Date:From;
	b=YOJ9Y37NAYi0uRDQsuaeOaQYUE1iOON5SPvDi2RJAfeS2La5l3liHBT3A0ArCB/eu
	 1gG0QAfU+H7qF5SNQq8XRI+VGFqKrPOmu6XV9l7+tTsLakhKJh46MjA5r3cdqLufNf
	 XQ2WN4nnnrX8ulifFTksPI9gKVfYvrkCHTXdM2nP3gWwkrc/e9u/sgVi+k4TtuaOr0
	 OzvuQwB0yE5jD3Z/X+SLamta39yrUqD13eWfmwpHuSBEp/uzpp36B9ey61pc8ibhrs
	 hgkKUOEFypE5BlMI9RcY4i9hHagNntnoshRPAEjth/uInxOtAlxetTauVKeGKbJSOb
	 Y5RoGA3zyb/SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96675FEE4D3
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226649358.27354.4003426466604313617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc01f7938a49192b4f7afc140234b7015619c1c36aff14b7e6fbc5d8dea94df3
Date: Sat, 28 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772266493
