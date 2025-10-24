Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C02322768
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761317394; cv=none; b=ed3wz8u3Lve2ofVqgff0gGnWlCXEDuypiWkhIEGg/ImZ+1wlMk8IaMDSa3kcKsigtuBbU8bRCxKdsX6PUm6SG6VA3iz3y0EOolkFr4I6gHF5IAkcPWpgj0GOt6uhc4+kp9fRTalUnFnOh55CVNEKuoRs822IQSY9cqnc3yX3OU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761317394; c=relaxed/simple;
	bh=5J8SpAFQK8llU3fd2ze5JGLL1jwzXMy+UQgYAp4s8XI=;
	h=To:Subject:From:Message-Id:Date; b=Wyf+V1IZh4qRk8lTqTWYi8f8JGN4Db5soIdCNNdxUbfB8rbsADUxAyLflJg9jR+m6ALRJDm90v13k33t1XcK9MPkR2psvGr5q66crEG4cxt7CoHzfMlTemdtRSnTRFpu/dadUy7zxo+GycK7L1oph3H4sBTUUb3LC2gd1rnhjvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7P4vpma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7P4vpma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA1FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761317393;
	bh=5J8SpAFQK8llU3fd2ze5JGLL1jwzXMy+UQgYAp4s8XI=;
	h=To:Subject:From:Date:From;
	b=k7P4vpmajLFWHI72yku20ep9pdxDODrdHpOx9oAmMZ0+VsSdkei03EHdNFq3JOrQP
	 gWY7xNhCS72kTakx6Q/6PccyOR/wmrGQeE92x36PiLnUUcqaassFFHBlc94QOb9bNC
	 CocEoJW3e4XTRt1whRWt7YOOC2dCpVbjXOi6gWygrNa8lvcJF05wIwykesMprIvVLQ
	 knwpXaFIRBu/VEQ4uWWgdzIs6kdaQz+7KBpivW0f17RsZA5BiUk//XK2n0V2WtevXe
	 AfJnj1sUk3wVoqAcNSo3B3Gu+iVt18Dr4Mdg7Zkvda9PbzaeDbmgH3VfAV7JZuqBQO
	 5HX0BkG5Tdwgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E7CCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131739358.12877.13144444722363122696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946a3953faae49fb7bd16052493bba83795a6ff0491856ed251a0cab5e10c53b
Date: Fri, 24 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761317393
