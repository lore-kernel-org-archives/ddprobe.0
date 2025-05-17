Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B622AE7C
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747473594; cv=none; b=SO5je4X9MT7WvtDFA8AjTTdOPTl2sPgaI6amh5LrjopEwCV8vaotLps8kk4FYYZnXE/Vk28/oZ/v7czA/6lbIgBsP84IXNp/+0UUmbd9NsoPyyomgwx5rA5k997PDetiy2yrJqPOB0MSzHP9gfZE9KYeAXgQLoBT7A1FpZtGMe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747473594; c=relaxed/simple;
	bh=GNY4XSXlS8w4olnxIq86lc2VVnBqPMUe8BvW1x2VMDw=;
	h=To:Subject:From:Message-Id:Date; b=ZvkqfhmabZhLk9RIFa/ClsMFkGv2pALAIAXfPJ89RcUnn9Bqz3MlH+RLQrDnjIfojrRzmL/2TWZZ1fcZ2bwTMIJtRupTouEwXz4tcqzMsnTzCoVIVrfP7/C2Sb5UEqZ397jvaGlyJku8EXOW1Hr4FTNzmQgJNQt23YR1/ueCzuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPh0wixi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPh0wixi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61B6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747473593;
	bh=GNY4XSXlS8w4olnxIq86lc2VVnBqPMUe8BvW1x2VMDw=;
	h=To:Subject:From:Date:From;
	b=vPh0wixiww8h4/TVzrI6x6e4A1uIfpCL4IYwf2JwAulnlfGbLyESO+6A8lYJTtBKh
	 QUuAVrnNRNW2surbmdmmfp/wryOp5vM2kEENdxkAZgzW4QFtPrclkPGfAb3UFQ60AA
	 OZ65cdELZWxQIwlO9xAPQbkIC0grdiVBpZ75bJnjyPB78kk/yswUn5Tb+50UjCFhvv
	 f23d1oYI999Ue33ym4l1TBMBvKEglw5ATOGizzdi2FF82+k2iIXg0AjyyL39HmWZb1
	 +3jYOxK7UyW/S4vu7JRz5ZDzm+sE/Hxo3xg4eejJzoQkYFBDkBVUwlgNcskvgDlTpK
	 cOzaOm6/0ZT1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D2CC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747359357.24034.9320978920278612703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f9abf834f1ef51ab0f351ccc51d82a82de130cae2379874d50171ad4f976188
Date: Sat, 17 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747473593
