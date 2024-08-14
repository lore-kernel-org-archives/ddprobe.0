Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374981BE254
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723662954; cv=none; b=VvSIfIbRmIL5Pc7C26yxOsUzofONX8TBY2utbvqDjlsel3Oowhmx+/xAp1Zasx+80Ve5+wW4paH6lmP2NED/K6t+CmiAafzKg6rX95AvO9NOEtmVHQ7B7LXoDaA//WXCCelrdfsXCNjWVMQVQiR4lPC2iQP9qTDlPCOUmaCzaiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723662954; c=relaxed/simple;
	bh=IzjJkeuUCQQjDeCMvb5uSp2dRNsGvzfE412ueVMkwe8=;
	h=To:Subject:From:Message-Id:Date; b=oYMB5aITua2Xzn5GiW6qcs74SlI/lQq+OF6BL6wJyxrywSLXoknzpF84AGN+QwsE2ka3LYx0bk7FLXkyD0WMffBruTSv1fPZhUNcsZX1WVl6oVz6jhTz04a9kzWaoWbsLA2kNNaIH/iR4GBQxRha3jkO4FJYmUsBqsBjoTygsCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhZ6YE/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhZ6YE/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30C1C116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723662953;
	bh=IzjJkeuUCQQjDeCMvb5uSp2dRNsGvzfE412ueVMkwe8=;
	h=To:Subject:From:Date:From;
	b=BhZ6YE/xTT6UkqATr85NpS84nMovoB0KWRyaodjJhC6xlkqmbeafWGXStPwkB7CRP
	 +i77U5uhMsyaxer/vD36+lm5xGV7WBUlT5asdSVDRm/LVNSUHrAgGW/NiBK7cYcG53
	 mQeBzgM+ea2J296gZDBb4YsW1HvPSsqVCKvwR2/J76Hn+kcVzJr2kZINaGL+qwsIib
	 /m3ZZ/awaK9QIPTZFdFrXlYjcXe/hutaUIMr51SiFPPtXeIZrIzgn6LRzWgUhSec0a
	 Ogdfc1iTgvJRa05Ju4Oan/oiIa7//Npi5AvEknu4o2vrppYco/Y2xvDiiLeDCnftdA
	 D7lacdsF8qHQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D53DC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172366295363.11738.6240567027984696754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf41aa90c102becf659bcbb6c31cee9d507f3424062bb8665c04dd0f4922c67
Date: Wed, 14 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723662953
