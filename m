Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4F54437C
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732127154; cv=none; b=DwWY/aSMYE7X/DM+9jiSIFTj0Nzw1htr7TwkVKRyAoyyHuTpYnImEKyA/m2Jsl0ZNxDPniAZxPFNby8bug/CegU8gsaSZHrYX6Fj1pF9xA5vF1AkiywDlWQSV9CzoemJrDeLzagM580xLXSHsKcLD5R+xaTl1T1QlvsD3Hi8IxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732127154; c=relaxed/simple;
	bh=MP3ref/yMRGUd0eDWK2NDrz6W/gyIc5Aqin1+TMX3IY=;
	h=To:Subject:From:Message-Id:Date; b=mXOMvdr+S5rtMdEf6/laFJHFg0+QrOUXoMzjyLyFC7iQyDTsEqDokAYjzZ8xS4lz8s6Kqa2NXdG9MMbFKwFOeuThdT/2u89Ao6vLBHtEdjv3qnbZZmIITrAXJByIeJPKl2967RSUNVLGVUQ0pRAAUoS7pO7Wvnaj9yJI88gQAQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAsSb5yC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAsSb5yC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EB7C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732127153;
	bh=MP3ref/yMRGUd0eDWK2NDrz6W/gyIc5Aqin1+TMX3IY=;
	h=To:Subject:From:Date:From;
	b=WAsSb5yC+Jj/aG5o71aG/xhtZw8lfWHIpgfpiUtYaHOO5cpbJb4sAb4RqCDCIYXsT
	 hy7CSLw3bXt8O/sX629AgaenPG2JX/3IbYYCD26clRCCYu2eHyqqUFwxJ0Tr8UcTXD
	 TgysDoIM8Si7Vh1Y4bMDsrckQW2mKnzQA16SI1uNdBtr1anAQKblg4opGbMSR3XFkX
	 2EOs+JdnIP3tyKW8BGnh+k1nEsisj/+MJxliB0IqPkBKLRonn9KOweR7CcHa4vBka4
	 bO9rugey7PhYzGu7EAHTFAgoUL0llPXB7W2lziPwJWeSvZ+uLzsrV1SQuVj0hy8eAk
	 FpZ9j4dlUL9Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93109D711D1
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173212715359.2367.2471646755658387073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006414b5daa9852f700e303a19e62f08e6defcefc7a0ba964aaf08c0d686575d
Date: Wed, 20 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732127153
