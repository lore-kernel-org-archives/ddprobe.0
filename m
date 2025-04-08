Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEF61862BB
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744126794; cv=none; b=eMiDWbV61ecvO1buq7WFozlXY79rUZffD0d04VVNzv5Vd7kfuQ4f6G1y7gfnOapYRcxLIDh9dJs9aayS8nAiasz0QlH2DYg2NPFW/IEEkUIXHnr26nq7kYs+fo3+sVqt0LkPBSqp/BLf8WxpzOuAoWfe7OBypTjsmtRz5hrBsw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744126794; c=relaxed/simple;
	bh=Y2ZFBUeT4TJczXut2LRa69YkSyEtlTxWZus4lJuWkRo=;
	h=To:Subject:From:Message-Id:Date; b=j8irU3k2SgrJJpswTaIZDlr7AbqeFYEEz0buMJh4eegpJaEYLtnfrCBPcU6FniAVoduCPZQOtZgF5yOwPq4Jt2GrmHQv/tlp3F4Nib2JjzaBMRJbQ/spVLJh2mj78jzMbr16UrS92/PPcwVYAVFD5U/lSrhkZp1iheKhoWO3fUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx4uNOW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx4uNOW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3155C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744126793;
	bh=Y2ZFBUeT4TJczXut2LRa69YkSyEtlTxWZus4lJuWkRo=;
	h=To:Subject:From:Date:From;
	b=nx4uNOW88BilUPAnG13rtneSW5zzIgHmkw5cOHvOcqHLCVeHG4OiSZvu/kPuBKkKL
	 vzRC8P4GIhPlCGicyyAMPGAU6H2C4YnrrgPmGi9GeiKknqtmJygcUs1/fv0xKQuYO4
	 MnVqkYEO+ARsV6GQTwU5Umr0NQ/x61FDf4zSOzyxvyyG28KMSAIECFcUGSVuTxvNCJ
	 erppM30rPNl/HqmG/DETD6ioARla2abILtwqYiUbE6co50tSDv2Ksj2XjVTm3rJOjF
	 aYtMR8O+nJ9woub0M9wPUrYHamxWWDngv6ktjuTRfYRH1nyVhTc/bluTkjcgHvCj70
	 UiZuFjJCtRKlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98878C369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412679361.28593.9925917534026736113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911c8bb60c8deba1c511f9d91475bd2a3f773169fe6a557e5da4cb661aee7961
Date: Tue, 08 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744126793
