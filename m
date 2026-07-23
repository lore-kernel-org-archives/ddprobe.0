Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748FF330B3F
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784842835; cv=none; b=CYmL8JdzdmdxnZX41TFiw03dXBddHYazpja4+vqE6veOWarPWJNp21EMvEKWwhXFjsvwb5L9H7GOkBA9aFlo7jr1z16STpnCofZff2i8ViFqpgAeSNvThabr5Jqq1nPYlfdorFBMIEdttSwCbbf/y99t/y2IlKj1j8GPRUr65mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784842835; c=relaxed/simple;
	bh=dhWtAbSinK46txO3j3wwkAiER4Ep2UxJa95oAW+sOic=;
	h=To:Subject:From:Message-Id:Date; b=iDswQPO34ni9is2hFeOfyqyltNuqiw8T2TLdevxekLOk5KPAEr5ssVvb4rbOEOTIKuMGhxCrHOECwWWqlAOeLjcu7844vtGjQjEkMMtehyUlHBYn0jlsMdkNaq7z88aeYuhQyHNgfeY6ZgjG3MOnjW2WGo7IjjZWtNI0PCNbdOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVIoUxas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVIoUxas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE2FC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784842833;
	bh=dhWtAbSinK46txO3j3wwkAiER4Ep2UxJa95oAW+sOic=;
	h=To:Subject:From:Date:From;
	b=XVIoUxasE5nSXXjN7cuN66mv+z2GPGBWcN9BhXm7oY335UEoeWL1Hw9my3g1Jq3NU
	 WQecG5WEXg9wim+TzmIKhW7d7rJnRaCqtPLMDM492ToSpHBI/5PNe2XEp0HYMJGtEn
	 7+DnA5P1nj2WcGdIKtB3ohocePMe1/477ODQuUQdWBwsAVKqtrAqgUCxxCJCJMctEe
	 WyTqG5+9lyVw3GBX44F4ZNZnLmUumfn1ZudM8jfnZHoFp3UdH6DWiMGr4bozPjRhxT
	 9akwEuioYta+4M1gOzbpe7VkmyJgBGtibfLxjWj3k6/6o0Y2Q9HSvbGhGj01EQTSf7
	 BvYgLrAFKxDIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E57C531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484283369.937.9243399297329757799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44af93008bf388b4c6ad3b2d6497eea0522fdcf14637f85829e00a0918fe8866
Date: Thu, 23 Jul 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784842833
