Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040C9227BA4
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763047794; cv=none; b=D2BqOl9Ff3PPZeXvOEfCckW791aVnP//blHyHONWPgIBafo1qHXKtNrP0xIIgFZXnPJYsHSlLGEEgX0boKijuFedMf5eCcsGRmG6fVLS2djyPLdVqEny85T4fsdI5wDSFpLzdXiqnpZ3lZmXpsYFMCvcelgiqZM8b38woQkL9zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763047794; c=relaxed/simple;
	bh=aIb2y4WSiJCy4H2QpQrMdOvTnZBUVAJm2Xblz1tt85c=;
	h=To:Subject:From:Message-Id:Date; b=dtHNeMnMzXgVs1UHx0e5OilSc2CAQN7oDJnBmmVGIYcPqIUPOpJSqEvpkA4mRoiw2jPDKZh1adXtWSgZjbLJ+xRD5EiJIbMjFHidye6RegUS7ieBN+sOTZ09aKPb42SzvBLtTTNMlGDGcCHbOOElL68eOY1jGqN2CppCrVCGoQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKqfwO6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKqfwO6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38FAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763047793;
	bh=aIb2y4WSiJCy4H2QpQrMdOvTnZBUVAJm2Xblz1tt85c=;
	h=To:Subject:From:Date:From;
	b=oKqfwO6YG2Od653gPcCCNe4op4KMW/tdPEyht69uAAHfW8gtNY6uVsi50N0BR5gA+
	 YRnL4bWVmNbwWb0/e29I3Hfkik5Lhf8N0+4UDltYdLZo5tMqCESwjwaGc9J7lcsF8G
	 uGFFcr86hE1KoEB8TYD5zrERZL0Y16YruYG9GLaKebC1kQpz3zhwR5D0198049aMNL
	 Tgif7RxuyIlqvZ6KAl+gGAdFftcxITx0jas/8KH3GFf5QI4h8sF3UiOtVBO1HD73e3
	 EBsW+W4Qe033pEV1MI2rGz9FmRcC4CYOVgDENVmcLFcryiePtxXK0jMTtYFneo3Dmm
	 9lXSdmje/FDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95616CD8C85
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304779360.32052.3474263683638473475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c678eb20e0087b19b4b350fd7af0bba8523384a15cf9df96e0dbb2e86ecc78
Date: Thu, 13 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763047793
