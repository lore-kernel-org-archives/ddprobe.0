Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE8713D53C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789337434; cv=none; b=denL+1pr1MTIhemSTVvyxMSMG7w0eK+So2SCxzh4t00tDU7SScfoKJpgI0e6Ovba9lKwZOZroDbvcMh9rcQBswChe6mVSfvVRaPZFx2mTvdfyOEBpGNA57hE+q64Tn3OQUHlOHH8o72kxsGE/WI52qPu1ynpMA8yokTjoRK5qS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789337434; c=relaxed/simple;
	bh=9xgnPb9IOvT0Los1xYWxlHs2bHjMN7cj9vATVR6/B2c=;
	h=To:Subject:From:Message-Id:Date; b=h3bEkbCP84VRAkEz2JfvTFPo9Yxk+omNlYMebaCr5VxhuwVdM+/bl2Aqt+wW8KV/3yOCCo320wVQVMtE2V+k17KuvzKgvGB9US0Ohh95Hxp6zf8Jh8UA52HTHMKaJhhXFBUHySvuGQG72P/p4tWtrnHmqwQ7chGmeW7B26inmEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzIVAG8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzIVAG8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5174C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789337433;
	bh=9xgnPb9IOvT0Los1xYWxlHs2bHjMN7cj9vATVR6/B2c=;
	h=To:Subject:From:Date:From;
	b=DzIVAG8sJasW33KuxLR+7pmtBuIgAZwjhP/XqOVY53V0jYER93mX1JncPGz2rNyIe
	 xfz0oxHuguHUUQd39codFn4QaSb1U4h5dryPSCDDaMgWjIxB1Q+mVGSsf4dYLBbi7z
	 xqhjmnrUuWk9aZtWiApR13RALOAAWQe6cmf8P7tlEXL8bV1csx8+FrhyfD1LAUtJsy
	 HOV52ZhpjPXeQJ61EWWBbRvuX/nyNUkUQ2tSsCLYweTpjyghAbg3awvX8CN3+XXAZc
	 4L1IcuBy0Y38JJtz5nePrQrUehQgvoChG9Y/QJRvd9CmybjxmN5GjfHGczYjRv9Uke
	 6KtR62NhTOFzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF64C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933743368.30830.2210992384385418562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac78443abe7a12857415ba961796cc7af43a0bab750bb959d890abde28772cc
Date: Sun, 13 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789337433
