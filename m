Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D41934214F
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776149854; cv=none; b=R85F15sXovseXv74H8Q3MSozSedGpJ3zP89Di80dKEforqOuN4pyE3+DCv+GhmRR332VyWLNqhC2DDyTMsdGTXoVL5pC7/qukAdGHieSWAPTQkxYsL1jxs0IvHWVTP0O33R67sTI7MssoNJ+8NHYHCdn61bi3clG/5o4XgbpoPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776149854; c=relaxed/simple;
	bh=+iVN9J887zqfVYzzkiR4RKyfcW1Aw3ywsgoHWd/Xo+s=;
	h=To:Subject:From:Message-Id:Date; b=CqHYWXPU94JVAOHjMdQdRwaLPAlyN2Noxomc3BtMe+zvAFzmBl4f1M1vuJRSg4IKpgM5Z7nEVo4/sZjtnFNjFmZ6mQ0/esIs/djozAwEuo3J1Zr6rYOTt8FOok3n4jelRAuDXOKqIajEp6tYRYfoV+LhH8KPN0sqg8+b2a+TEm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8C5Q/WQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8C5Q/WQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B836EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776149853;
	bh=+iVN9J887zqfVYzzkiR4RKyfcW1Aw3ywsgoHWd/Xo+s=;
	h=To:Subject:From:Date:From;
	b=X8C5Q/WQrU9gSbxUDei6RY5OjsUdDvFmOHbcVEeETaNgaV0ykRTQSI+T29PIZmoWP
	 nEgvqEkIOcSSm81y72FiQpR4HgP/eeSHcH/ZIg5KTifUROShDTbIa9lFTPQ0OSxeht
	 Yciak3L1C3reLQbqvE1ps72Ux60R0cX7GdjVlaMkB7biEJOKOyXzu4tYYFCEyPeEW9
	 KHGDnfXVy+tSjqopQPs66ZaU4LB8OFPOQgji/wcdx1/RUT0JC3TWwqmaDZqkGTqHB+
	 fsjiZIHlDRh0C6qtcCh8znG7I1ShYwEHs7PliBaJTb9IONEj61SKNpfw+ueGAYa+hX
	 a5b6maazvptjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DECF531F1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614985368.22643.2998724184900958676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043ea88eee57dff969790cdb87f150cc78c6777be339fcad7cdbaa0189361056
Date: Tue, 14 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776149853
