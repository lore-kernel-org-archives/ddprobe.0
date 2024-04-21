Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F1A79FD
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 12:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713703223; cv=none; b=Y2T8Jhc7Nvj+DoTVFANjo2eKTtSEi8JL2WEEF/Chc+ICtgXCiBTdMSGi5wV3KqNTzx4liHhHLhvLeEzRS+wOarAI1DMQxz9DgbYK2iod8AUYkJmUBjHPEccNUoyLNvY/xfS4ttX4uRuJiNHxfJXR37yfDCwtzOfrF9pAiAFQcQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713703223; c=relaxed/simple;
	bh=pMjnK3L1ESdYleA7A4qxAzSP6B2HIzW9o2M8kPFQprw=;
	h=To:Subject:From:Message-Id:Date; b=gafUzHB4wqhZnfyJ1vEBLUv1+d7oSMWP/Ubni50YEKSeaD8m4XAvliIVdYyHVXvDT0dZ/DWi3bzaUYml2MOM9nipWxul/05PLVx/cfSlwIecKkA48ktkKYRRsPJAizACBHyY63/Z7dXSN/2BFBmItOHrZZocn5CpG8Mwbu0RNcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcU0bLGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcU0bLGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD293C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 12:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713703222;
	bh=pMjnK3L1ESdYleA7A4qxAzSP6B2HIzW9o2M8kPFQprw=;
	h=To:Subject:From:Date:From;
	b=tcU0bLGXEDyfJeGcKNaOEyZRbEtt+mwdZfZv5lpLMDShZgVSjnwIhVc/4y1W5hXGd
	 WVgu735UnRHXcxzOiaj+aglIy0Dm04SZpZwqOtkxRrd3rxxNzCo1xhiCGoocuyJcIS
	 wpZJdtvohJGXmj/45YlOHd2PVQmt//31KrhoLON0TT8GZFV+7hmBrjdHq3KAEkXIVh
	 uxKdQ+uek3gADdrdP0qhOdW8z625PtVMWXwc6Eau0wuTWk2UXjs1CGE2B0WeKmPE6U
	 Kjxh0OABd6f06rLHlvsvWxbp01YNXp98aCP5WmOfNH95o0qEXVFB3qNuJdgxRKAq1X
	 cHmLrf/Rt2v9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75CCC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 12:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171370322278.21573.14192400651161660996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68eae88c1977008ff6af9cdcda1845afe9235b226d57ca19b11bcdeeb85bf05b
Date: Sun, 21 Apr 2024 12:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713703222
