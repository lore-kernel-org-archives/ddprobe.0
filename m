Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776CE49251B
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778858434; cv=none; b=byGnWdzXV7UocmfVPYN9/dJHL9QYfKcbJp+nLnokW0pvSLvhv8dmdPVHN97uWGZM4o21PcQm4DeT31XnYnxCd4YP5dOwY1S3ixBECrbeuy8kFFRT2/ABfzZ/jNEEUaq596Z8h5u0cIkaierMH3Sy5Gp7+b/zjow025FAVQyoi2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778858434; c=relaxed/simple;
	bh=0ug7C8eVwz6miJ1PIzBaVoaeq2CSq20fEyPR1MN7ZIk=;
	h=To:Subject:From:Message-Id:Date; b=fOxlYxbXmMyDCLhAW8ATF7QNdVIRZy054qgpqxoTQxlEeGUD9gW2BxaK1XlCYlPojipJU9Tc9PalK/U3BVXwvxMSpSt5bqHxACgiP6shd5P89OYVcDyU1lJD2xmkgErk3yf14+XqJHAiuPTN53+o7SGc/4cCDEsmM8QNl/FwrFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjIQGh2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjIQGh2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB338C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778858433;
	bh=0ug7C8eVwz6miJ1PIzBaVoaeq2CSq20fEyPR1MN7ZIk=;
	h=To:Subject:From:Date:From;
	b=IjIQGh2yMVm7IqNnHKCqNUPOwWqnlaqAwi1IrMbJNDIV/BnzUGLjSElEeYc+qd9DZ
	 GF3+9Kc+0ozRwU0vLXd+oxcdzI6YuOg1xXqLfaDrUdNOmUkE3Sd+vIY+5tmjdHCx9G
	 mDhzbFp9xJZQByWxTYd9x/fA+SIVbGYfxVgIUYZtms+s+Ol2Q89792EWCTwi88gNDp
	 SDkqANB+PLajqkp+yE97lxNMugEKFVFFU39ExuSJYoNMcUo8sdjXdPHuq7hWzC6pD7
	 NHSsuVLN3GW+d8yXrwLmRd75enjaCD6B3PgjORna/gMgd1OiZ3EaQhF4ffYzmhD1In
	 N1SdnV0FETTYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC61ACD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885843369.22856.9227831203708015262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a450a91a892ba0eb1e36f1c042b0dd55c2772b69ae01ab652be780ada661de
Date: Fri, 15 May 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778858433
