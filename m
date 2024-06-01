Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C966FA8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717211063; cv=none; b=uzVYSvntzYtqPfrMLbjdbxvTpNDFov2JEN/ua0KGnciltDMHJoaURJT495qzAvECmcy968Bw01VNdIVTIYA5CQHhLab74qPmFj+yEOJEdmzaYRkMrIiDwq5bwNYBJfoqb1YvR0wXm2xc/o2K3/yz5zNFDjZa994vAPGlBpK7dRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717211063; c=relaxed/simple;
	bh=T+zs3r7XavUuvEIJ99H7mInrRxYRnP/fkT8RSwX8WpE=;
	h=To:Subject:From:Message-Id:Date; b=XoSi1lIbrdtYhDqaaP/eFidSLrkWrxMJRKehbH9osgwLKyWCC0GA61AodGmV5ktGRLMIH1oAndKFszbcGUdrFhqg7ssLP7Ri2795ZKLIsSU3eLmcn47heaH7GzYuvdMopXh8YLcTjImLY6Gdhe8QleUjVcI7mI7+uONhyn3ikEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UonXRxCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UonXRxCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17B5CC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717211063;
	bh=T+zs3r7XavUuvEIJ99H7mInrRxYRnP/fkT8RSwX8WpE=;
	h=To:Subject:From:Date:From;
	b=UonXRxCVdtyG3XTIig9dmP94AgFaKBNkdoI0u5P5eGqZfxzv55Gu/LBnuBzvR8JT4
	 X4ZoOnwm8UWK9aBZvs1OnzNvBPwK6xEW1RjKoPIDDWOv4V1TMH5nacB6udJRy8XGFf
	 FuahZb2INo8dP6C+EVeHPwoB7G3hRKJMUPipiNE9bx9Ma7h9hDay491aSjrLo+pSV4
	 FnmcxDP1f+bAl+bDOnfZ+XO6+j/rdHKSn30kDfZd8+7fAhxvDEagC4ua+RWOmBU/vp
	 qcEC3pyBi4boxuiJbuInBiokecqzTd/y8ebmIg5k+nD4AlyMOM1Ya/nGbmm1UlJy0L
	 P2JQttuB4Ljfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E00ADC25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 03:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721106278.2722.7082251691247398487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3424b309be337ab22c3c705d05b60779204c523716168141b618dffa1892dfa2
Date: Sat, 01 Jun 2024 03:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717211062
