Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1491F3A1E8B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766384634; cv=none; b=YqRVZNsxORiT7zPQGJY/x//o5WhW2KT6tsnWek/w5j2w+dl2GHZokUJECy99SJ+teaAzvqYQyanGqwZHyYH3Cys81z6FUsKaBBJZovZkV0aBYxhDZ/tuAr4u9+AvVMBwAxF521iz8yvHwvitCasfuc7AsnqeS0iTkti+yPNM2Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766384634; c=relaxed/simple;
	bh=ZnLK+GAeyBP5khun3RvNLsG5eq2wDujqNttw24xFMuI=;
	h=To:Subject:From:Message-Id:Date; b=YFlKK3xdKuug8mOiwSBWhi57zxmdVzgLDM8YEQZr0MG4j+tPBUXskvSb+NLD4pHjb7ynFC5xakyahAvVnjy2gTn8V5WY1t1l4Trn2prGl6+nAmug5SMn+kz7dJNhIvCfQIxquNwkMo2cFZrkP1ycgnmwh/3ePlXfoyhz3UjDKsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ispFnrk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ispFnrk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F281C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766384633;
	bh=ZnLK+GAeyBP5khun3RvNLsG5eq2wDujqNttw24xFMuI=;
	h=To:Subject:From:Date:From;
	b=ispFnrk0dFjTE4sMGcQdnuSN1OKC10a/uvgP6Yu+SK3NpiB5sSYK8T/Tc2InXLvcR
	 S1gC9N7fZYnT4qTAY4JhCdo9zT9BnGd4O/8OFfSR/X+GKkqffWmTbbn5/4aU1krikk
	 YSAwZ8lh/48AS/CA5TjAUk9CfIqcuWBMMtQbjOhoYzJ36Lg0BeFQ4y92sVt+nMe886
	 CSToe6N0scH6Ew2kGsTicQl2XqcgIe2ISVGPIN2n1G9FxTF8AtZs1zVXRwtJjHuPGL
	 hPjWyAvrfS+gDF148B+WjveyubJnQml9RAdemWLlXq+SZqSykiAIDA+PR+hpfmz191
	 ousiV/Ns0d1cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EBE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638463358.11523.18190606772286960588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5185ed8eaebfe9307e2ce6b28b2f141e17f6fe3d7c522cbf59f5aa541b45f3ba
Date: Mon, 22 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766384633
