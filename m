Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E7114F135
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732872354; cv=none; b=fuja5gklYWgMGlQzoa05WELlbP1uwUwTJJ+fFkOnPUMFUvFl7sOZzckpGbaS+1GO7GJyl0VPBg5zGx+I1cb676QHrOJnqOlPPGNSYaQIO2hTkYkmpQrKClD8Xk7rVLR+mS2UiIQZMK8myCiIpn8swoKziitYay0nTGk4FjUar6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732872354; c=relaxed/simple;
	bh=MwaseaeGhkd/zXNHwE2f9f+0fI8NJSAjoNllxUKPxak=;
	h=To:Subject:From:Message-Id:Date; b=Y/euUMLyCwv4tC2dGraYsN1K7g0lrWKKyhSQeuCgqzakCFd2e3O4yp4OLgC+eU2XVp0HkJU+6QCgB/AJ0XNAMDwcZ4yU79svoXvFU5/5u8cxxp5v0ZyYvNmrubZpUmVcdrkAS8hLmCuRpAD36pYkUK979VxdBfcfL31Ca4YJjBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEWHHGMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEWHHGMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34ADC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732872353;
	bh=MwaseaeGhkd/zXNHwE2f9f+0fI8NJSAjoNllxUKPxak=;
	h=To:Subject:From:Date:From;
	b=BEWHHGMypPsz0ThUpFo37PXViEeGmWyORqfgdBbUztc+flCSV3R0vlZJxZvCBL3ik
	 RKScp4jq7ZRg2uZh17FsgoaIL4mab8tJvqccyXYbwD1QkIwi9X2gTZ+dKtVubp3h4p
	 3NYSU7CdMTPZHzf1byJ3zAF555vHCjzesvSzAV9M7X94ctIOHuFQiapOXR1huNQTPh
	 3LUwVaKwWRztI/eobl/m+CKMjpsOQCMCCAaAePcK+ftsSTGJCpFWXPyLwmZ+zMwAdf
	 Gi0Ch7phQbBD6fkcV+HnmwnAwENC46DkcpR4k72mpcY8xZTkUjIWfhW+OgWKqvsKya
	 LrBH0fAuMWWwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D59D6EBF2
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173287235365.18069.8225405765862239669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11dd6a5be33d9b4b016489a1858cd5cd447d8484652778bcae8d6e1dd78054fa
Date: Fri, 29 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732872353
