Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2597844C97
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725203154; cv=none; b=KQKCfGARqGfwWR+UpjtZ6KgE8lwRYQ5NEN7Hom3/yZay5hNr7sIIPbmb4aEE3l/+QOuHxX4BCF7APQ6wa+FwhxkPlK9vN0glrdUMvmjW4njMnnx6ABOTB2FyyMTsxvXjx+ddbt6SIi9YsqHTPjY0gTjaIvQmPOA6UDe/vyr6O+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725203154; c=relaxed/simple;
	bh=Hg99/9hCNF/AynGe3wOoCpvV38Exj+k1lLKBCSFX9RE=;
	h=To:Subject:From:Message-Id:Date; b=lORsw+34sfHgs/olmkiPVggoozH+Ehn4movEpXeSg0RKJWWgy10dRHVuz5mUD/kxn/ckJewIbU1+WCRBPyNgXEvSQKxNbvYK+Lo0bO+3ToRHcnHxSmvYgzQrl1HhWjXWdf7XQr7P/S5iTVDqPpqVUWn4wTHLbmCHDCz3o/BKT5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YT6qn+mC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YT6qn+mC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F47C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725203153;
	bh=Hg99/9hCNF/AynGe3wOoCpvV38Exj+k1lLKBCSFX9RE=;
	h=To:Subject:From:Date:From;
	b=YT6qn+mCRfKowAmT7lbFKZQ+3/L5NLyrJuTSjPY/UWOqRUfIpR3/7a16mBoC3+O8L
	 fiU2x6+eBZbJDzYa7XDUY6XY5qHbBkjcu0prvqc4xhic2vtAcolVSeGgSptAffYXkw
	 283uQDbpEp/Qjr+B+fZVmxXopMOYvanFIEdFvPAhgXft9uSBZLxaEqFYEWeqyLrr6g
	 AJSpNlhNzR/b9vrBYyxEDFxNfUm6od8XQM3qahPiUh24QNSYLaofb7tOay9s2VUmQP
	 /bexcZ3dkE+d8W0DzrphYldP2F3qMsEbOhpornVA/nXATLO7Q41YSssW3XFsuWoB1u
	 /71p7JcJxTRvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC4C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172520315358.28249.18437676849661264642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ec647828346320047a91bded1d5d97420c1b07c72adeb23cdf9082e36439a8
Date: Sun, 01 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725203153
