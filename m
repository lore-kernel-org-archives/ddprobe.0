Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A7233ADBA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788220834; cv=none; b=ZhtvOEL69cQqPaUDh+DM/CMjz32R7sSfuI71/jV8+SfB0vne7/U4c7ohgPwCqLIVOfyWrcFnBiiW0Q3+/JIVdtgrJtozmaHSQmHKTMee5h+BsMaFeeJ2ZKd5URqthHx1e3FoZz2j3aPwarULopZAsdl3EGPpeK5y/aciJ8cQJ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788220834; c=relaxed/simple;
	bh=NosZBeiS+XIPuHlsN2ZysoEJTpxNgMZLcCDjHdGoflc=;
	h=To:Subject:From:Message-Id:Date; b=S3bQPgLa4pDu6hiOz/KnaDhClM9vHroqu5Yb2KEnXbNidKl2n7ljGiR591SqibG76Hyal9uVHa83UWaWWk2Hg8/wtX0TC7t/I/X9I2A29kaXiNqvlFu5gYbOzYNPlTkCaWPig+Rayg/itpgwkvQbbgBIkZdxPE5W1TiQOqSRnrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJvTj8QP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJvTj8QP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF44EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788220833;
	bh=NosZBeiS+XIPuHlsN2ZysoEJTpxNgMZLcCDjHdGoflc=;
	h=To:Subject:From:Date:From;
	b=TJvTj8QPD38M9UtdikD//HXBj+K4V+dW7JP0rn9xVay89C4sObwvZL8gemXL9dogD
	 GkC/HwBKTY3K9wUo404euhA7y2w29aMdfXckRHMgVJ5zzHJl1lIoFZOpzD52cxXTl7
	 1z4R1geB4kxPFwH45AkgelxBaUC2ExioaaVkoFRY2u6HdVIQQrYaGQjUoJDGf9d8ep
	 SZbuAgMCFK5/3iwsTkxSNGMCHViug6XffWvBQmbF+EtVgBPEsMOt50zTKaato3T/yA
	 V0dlwTnYlxGc+33/49Z+DNT2V6dQRIVjMHmeFra0AYAd3UlRlqbPKbWpyNRlPZtluH
	 ugyq4xa7tC/oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0B6C61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822083369.24087.3527039096408468644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef82292ab3cc71bea16a9e2042253237186699a98ec56a4721dd0544c966180e
Date: Tue, 01 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788220833
