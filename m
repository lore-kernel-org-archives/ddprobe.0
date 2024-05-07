Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE86631
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715061743; cv=none; b=b6sLsE31FCUTJpqQTyn+5b6L+dXpnUcmI/mqm+An9M/AgEYTmMCCOvaDSeqJYJwIU5qlSPNL6PW0f6Aqxa7klLYQfOZ1XzKBvVCvV29ouYMnIsChFiH7E6j60K5TPSbvXU4pV8qvbL0bCuk+xnVDPMHUWEBIvcrhHI+yZrEhAPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715061743; c=relaxed/simple;
	bh=FQVuDknK4NSdqoBmw0X/+72mx1KnnN5qXyN8ruTqYws=;
	h=To:Subject:From:Message-Id:Date; b=ipGYDyLNIGkoLg86mffcCrgpi3JCudj/giIrFoao0sc9xUgQBjPmIk/1CH9moG2PuxAa2RRTyTIfkNUTUU/yl5QmnUOpDGZPhU3Eq8PbT5iNjhgF0wZFN7IpUJOLvUk8rJvwEO2kR+HmA4ZoqzluVpCIpJc8xcxhtlmScU+mVo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmm/S2EM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmm/S2EM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA35C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715061742;
	bh=FQVuDknK4NSdqoBmw0X/+72mx1KnnN5qXyN8ruTqYws=;
	h=To:Subject:From:Date:From;
	b=fmm/S2EM7ec+zBUbs5n06ffTG2y9xr8VR44kz1nZU/jBcG8dOoZ48KJFe35SH7Pvk
	 MFfAWImUp6nNaLfGtMS/rdZkfioeMJW9DBO+1SPtSqAFIHmF2eGg1j7L/fStRqBZIQ
	 2LMa2MWh6vVo+jc1HkLsYfmfzQHrRuoPcE/UluHrq+6ZA37PYsUDVyu5NeVaaDg3QM
	 vYo2uf6i8dPD5INU6BMsMqJwRlGhynyx/J8b5KtZUAvIPHYhp+FdRpdyJeMjuIhwo6
	 7T5C2Hfa/kBy4PT551/Qx+/TdVA6eY6Sn0tHfLARXCGozWnKox8M6S9xtKb2ysqS5L
	 Xbm4rEsfR+IYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3550C25B5C
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171506174278.4280.7865833428865813759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb46c992d84d6eeb32f76edaf1e6cac1581e9792a7c2dd15ef703e6d170833a
Date: Tue, 07 May 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715061742
