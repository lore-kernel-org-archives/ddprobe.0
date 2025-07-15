Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507B1233704
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752617396; cv=none; b=TZC0U4T0hckblvFS8Oi7TNbdwe41AKw2L3LJt9x7SB1EVA8Y3snO4y+P9oFcuIUuTiRCVc7WcSzRd4Wr+Ua0fM1Fxx1PG3gSDoLr7unWwjPDy2VfQOnDLvXyd2rOssAUTFb+uU7QIgAHaq2OH8qysBEWLFE1MaUxwIG3d9bl6Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752617396; c=relaxed/simple;
	bh=WQSoPvh7BckeIapypy2SYmEKBkiOsYJ1a4S+fjjS4aY=;
	h=To:Subject:From:Message-Id:Date; b=X1o/cCjnadNiB2RCFQIbFqWzWBR9Vvz/l7Mpgu12UxAq7zgQw3qTUOzD7aL0wCccVEc9Aa2DTooSUE9Gc/FEczbu+UaXo9md6gKliGAwtYx+hksssFJppymOlZSNepBK1hzoyffDeVo62LWaLBAS+BkngBdNG5HvQw/MKCjcu8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3zrgMl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3zrgMl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA46BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752617393;
	bh=WQSoPvh7BckeIapypy2SYmEKBkiOsYJ1a4S+fjjS4aY=;
	h=To:Subject:From:Date:From;
	b=l3zrgMl98+oaqzPtr3DzezYWWrpeVQOWrQNrW2utDOVzHyio9ne0+/8BrFPxeHkt8
	 DU7nQJ/XncVBybfW0c7jqXLEpyidf2f78kdTK10BCAv6QInGIw0UvN+M/ysVSzHw+t
	 1UBx5wrt1mCDA1TbgZHG/n2pEdaAcXx+AlTmHo6lTElka+nSVgUPDkV5FBeUJYTvoo
	 quCQ/tOm6ov+b0Nuf69KgkouA6sp4D//yWs6GsDGr+mdF+X39pM13vO0UIXKyD3zP3
	 tfyrsCchVAOpen63wm0isREum7zca3L6+nErbQnG9FQD8c20kjhvbKx/OINvA+jcZH
	 sKNW2pK82Huhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D5C83F27
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261739361.30242.13923284253617074461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac813890443ef9ca730ed26da664f6545eae39c805b822b83e053f62bd3be6f0
Date: Tue, 15 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752617393
