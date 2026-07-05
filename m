Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438A536CE06
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783252714; cv=none; b=Kn+285sLILhhzICc5pmH40HsoWYv/0PaKyJkSPwHURzHNjAZEpOq/Rgmo1VuJpnh2oVC4AMNwFQHGvTeWc337LGAm/rw4ZS3fTYR19qNvfHdrJeHhXhoO5Z+TTYC1PXc7lK4YvSjyUvZ41bA17ltW9Og68VEupZeZu33SPq5oYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783252714; c=relaxed/simple;
	bh=1anRaxqRkVqnLdL7XmjiKYYVfof2t+cxVcxFAoMzxoU=;
	h=To:Subject:From:Message-Id:Date; b=CRZCwK1QfjzvR3HYRJ8FNw1Ih4BlGwM6ty5VSXZvY8Yi3NK5IuruL94G8gFu+25EpzCnzkZVLiggouGCYEVPVkc2Q2vfVU96HiZnJmdp67B+yohk1GYmVnstaMKdA5C+08lYZ++tdEAJRyCq90Zyp8RfQaIbQlsLn6qlb7oOfig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFqid7W3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFqid7W3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C83C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783252713;
	bh=1anRaxqRkVqnLdL7XmjiKYYVfof2t+cxVcxFAoMzxoU=;
	h=To:Subject:From:Date:From;
	b=KFqid7W3KnUjCkBTwYMZ/d5dnwBkiowyMIfEuwZsMPNijDoHuJVaPwOj/JOmgyxeb
	 7BZgBCQd5tdd8JOQ91V7MJOgEkRt3WvAISFLE1x31L0QJa0cnzfz9PP/CZebHOFC3X
	 3jiFi6fsObrGb8Qv5dzDEnK1d4TaIOmC3FE7kefg0XBugq8yTS7Ms0f+0OAObyGzGH
	 kLv7hnvRTEmPz0kqq196P9x/CADX7SLH7czUTVsKSHZADRRuIqob6guEhDtrZYMrNa
	 T2Z4PHVCLnCOeEAi+0aAaOJipu9otgWkrfa4m3beHpJkr1XW25ER0inksYrdCMOBUO
	 q3VMLPG+RdrxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDEAC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325271368.8869.5356709044349840570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31d1fb5a37d9bd1886801fce8d65e159d6647a70a39aa7222b7217599c127fd
Date: Sun, 05 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783252713
