Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420B93F9F35
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779882154; cv=none; b=q4hrkdCmgQv432NteTMU+AiZXuY6mER1/PYMHKpPYQqYFRuQ1PbitrVAqSHP8e72scouA7vUeTtRgBdC1lBQmQFwquIWG16QW8F4RmlPwRo7Te6I6Nc6v36dYeu6nNkK3lM2fw3Q6aaZskWheHLFWOaJYNlF/CWpUCH6re3lsOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779882154; c=relaxed/simple;
	bh=tChMxhkwETdKsVO7ji1DxjL3C8HJdA1fVRQ5t2fG4Yc=;
	h=To:Subject:From:Message-Id:Date; b=pdyksmbFpHFJCVe9a4G1YK4wzSf2t3sJhxDtdCcY+P4doIUhnV7Owwf890IdUZ/XjyuGBxQ63q2eTforVEXtV8913bZSXoG3803VqCzycpW88WZZkeLa7ZKMl6k1t0pG/6gUuO7g9MG0rAZ3l0gIxzssYX/v1Pe/vOzI2TrRDMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xgu5wy60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xgu5wy60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA8BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779882153;
	bh=tChMxhkwETdKsVO7ji1DxjL3C8HJdA1fVRQ5t2fG4Yc=;
	h=To:Subject:From:Date:From;
	b=Xgu5wy60rkOj0fgKTZRDRDCdKrfeKgla7FjwnPZoJik2BmEmy7TFmcli4ZZGZW9Xe
	 h91byht1eEKkz1hKTpGGhDjb+qhTKuBG0JARZWVPN2UhsLBD9CIwV6Og7b6DJIv1P4
	 y76jApKM5Yg59gaHq9DRtg9o4BlUUqUFULMR1LjpgWbW918mmG0J64salLqkQ9MKF2
	 icWY+/mP0E12iYqS7EaIDCAcNSPpw76QCCigAzYXoca39/LVv1bRxwgu6u9aySFiEn
	 IbkCfSwB59VPEGDSI2keUFqchqA7I3VQPYsovXBukKLVFnyFJCu7waxzOhlnV9S0OD
	 NCyFcldWLHmTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4FCCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988215369.24740.16743684023626561422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4b7520e7ea976033c4fc08bd6502cacc00ef1362827b1542c3a03d881c1127
Date: Wed, 27 May 2026 11:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779882153
