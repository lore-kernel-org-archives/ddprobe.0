Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E018339844
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782947914; cv=none; b=tbte6339Egr4Azu4H7YAcZXG+ZDrfBb7lxGyOWY5D2gEXYfTM8IEVyQ+8X6Tt/iW7yBDypn2JNPbY1lD1+tD7LKxTCjKUV3HOgJxqz1a6V6b/EDxZoZSRJQ7C4qwbUhzaiCAgJVSIR9VPpfH5y++T2Ui95jBi2Lkjxc6mkkuRCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782947914; c=relaxed/simple;
	bh=sDkXx8alBqlGC/qp+RH0nGb9X3z1uwT0H2w2TCjYcWo=;
	h=To:Subject:From:Message-Id:Date; b=MXh27c+NmMieoH3Xhn8NyERBNslZdh9xtTWFwPrAquimY+1KhIVc9oydfvEiAMPbYbauJqRRk9eszTwtRVi8NCbYijlVtaGETbv5AgXtclpWkTJ9RIWbMU14Joy1TrSGjxlrHUWMNc7az0Id1K6bEkFkgcdkwajNGWkHPtlf1+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TslPUp5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TslPUp5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C07C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782947913;
	bh=sDkXx8alBqlGC/qp+RH0nGb9X3z1uwT0H2w2TCjYcWo=;
	h=To:Subject:From:Date:From;
	b=TslPUp5ttBLirkqACjOg4G7bNpAje8qViYl+aSWvsw0Krwe2JOr7pi6+lzTU6+wrx
	 PFrENhuJ34k6FZ5QQmoZnP2Emi3yTnknOqReeHlpDUKoGxT6nuDNoOTLWz9BRJ29zp
	 NUZYaH+7dltRwgPjP21SVVfofrPib4/DMEZaw5MXAjSBZWvxnQuntYJeWQxuRmu4Uu
	 QvkmDNCzgLNN/+AbbZtflcRFaIhvuAbrhGafGZ9+vNsYvnmDSPsPCQp4FkTNsyAb79
	 0YO9MxOHm5zuU0HRRVYyoVk7I4wfZwHboT+lr1sZj1rD198HpO9mr4d4O3syr6tTwA
	 zPg/ARNat0C8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1DDC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294791368.3585.5855519801846554559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c78c965c92b95cfd59b9eb29af5bcced51afc1d9a70fdac26e35b555108f8b
Date: Wed, 01 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782947913
