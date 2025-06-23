Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195BF72604
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750642794; cv=none; b=XhE8qt0kK/cFoKqX1dEnsMwPo9lR47yVH4/rhv+EB6JDTOPgWqYm5J1htvHQUxAT+aJsP5HP1Mcmw0MMT2pEWxzlLubuMZA/Pn62T8dtIo1UMf/kSn1LqYGyhmXamDGolmYlElg3HdXEZVk0i0F+4EEc1F3CDyV2W4ZGJYdjGJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750642794; c=relaxed/simple;
	bh=TwuzImhgMlpYYbyefSClmm0USAN2Ev6DP+6Tsv5Znr8=;
	h=To:Subject:From:Message-Id:Date; b=sLMW9OhC//OwMSbVDRJJtr/FGIHNopKFydR+oJJ2mpgXWKncQS+TPxIKYPk6ffRczu15ObYIrykRuAS7EHu01Btc3wjksoo259AK/tY70ytGrgG+vvqeN40de+TW7UbHxozObdFfRI6eOZS2s15BhfStlfvkpvwq2g3s5h07xA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaX9pwco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaX9pwco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8433C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750642793;
	bh=TwuzImhgMlpYYbyefSClmm0USAN2Ev6DP+6Tsv5Znr8=;
	h=To:Subject:From:Date:From;
	b=PaX9pwcoSkDHYIYRnuYCVjW25fcPdhDFI7TN9BKNFOAmAHXkAqY/GAxexwAUhjTLe
	 XUMSHBXb6/6oCwG17yMywMU8waQJNv/V7XY9BuNlks8eWP6+f8sHsPxLiBZiH+GaND
	 YYe5epsg13LIeJBKBrC4GNdGjvzjY4sZ6LoCoSGiwZmAhdOEJe15OqrDWTL9ReXLPw
	 sf3bynQt6SmNPYB699eCx9LVpE7cyfIxKPiStn0QYRv7q5AfsypG6GVnFDv9X9uGWO
	 eQoTA4S38vo9c3WTS9NzrbRGwJJIRupswBmeTVOYpQp0M1gn6vq4IiYonrlzf4axZ/
	 6na+v4J3IxHJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F5BC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064279357.24176.15560968301946765168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a0e78836a86016be7645b67cdad7274bd88f0b6752a93dd3e494e11282e61f
Date: Mon, 23 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750642793
