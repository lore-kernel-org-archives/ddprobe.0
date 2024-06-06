Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C501991D4
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717697243; cv=none; b=kKPHENmdI6vAxqeCb9WMRvzYvJi2fr+p+3MGhWz4ApLnPH+wdJ0EeNuHeU5JLRrtmfD4mcPhZ019v2nOnyPNDc490qHo4LM9IOBMLZzvRpmynUoySaaDIpXmtKNM7kAd+aNfVFAapMOSE3fNxr0fdpT8sXbuxBsxjZdSk9Gyvl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717697243; c=relaxed/simple;
	bh=nPHjdzElOuxWJXxL0v6BI2v1eEElk4Cz0v1b2lfFvJg=;
	h=To:Subject:From:Message-Id:Date; b=KcygLFPK0gXEvYr3earAeMrvEMcJLX2988xsixfmGo33kKIngQESAPiOe2wvHbXUaqVw/s+cBTpq3JRlj0PzmsBbPDnWmyXvbRwqqIrWJVA3P26xIEqTOU6LQPhG/Y7pVIkmA9XxVsXl7ot0dnVqhm5+Qgu9KZJ6LlM/LcopEwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lg0rd40L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lg0rd40L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0DDDC32786
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717697243;
	bh=nPHjdzElOuxWJXxL0v6BI2v1eEElk4Cz0v1b2lfFvJg=;
	h=To:Subject:From:Date:From;
	b=lg0rd40LFbRNVN/TbsIT/VLwccVx9n1md1VzqjjOG26q/tSXiCuYTPOBGUpChELkC
	 iPkSKW54Hk1dyxQn/ivRjUtkCK54shgaQ4GfEH/HgENBAvtwxlDP0vhMqRBmPsTwjQ
	 ft5H3uENpY+HCmRpFUE2U9HQpS1zOmncetWz1vWknVyQAJh1Sx4ezuYytfmxuuDsUC
	 RqvZc3MvGCvt9NuD3HpJHqP/z3HsbwsWlZJLswLh7DbFiHsoQapXpY9gzEYqzbsHh1
	 Qv4MWRaKFQQop8xh8QrZTFnVNGqQam/FzUKDBcteS71q/zsIeUkrsNEuEDwd+iAxv1
	 4Qm7topRrZxLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D51E1C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 18:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769724285.32000.4546787928595782418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d537a7668247cc1b9694dc411e9c8f7c086f0aeaa54ae90cf6cc9c36de89edec
Date: Thu, 06 Jun 2024 18:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717697242
