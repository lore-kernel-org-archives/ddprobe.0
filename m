Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3A929CFA
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714390943; cv=none; b=qLELKTVk2TdknZk1Qzh9B42KCtOvsxBLz7fg95Jk4QNplIldarYkjenb+NCLcnsds0Y8AMZZ47G+f1fCU2G7eMs2ElmrITENyxly1zbvRq19gFKV9VgOe0hhalRRxPczZD55pf80ZXXxsM38Y+pazeRqhHhJOb3vJ4rSNATrYFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714390943; c=relaxed/simple;
	bh=cRVq6sb7HRR75KpV3fj7t9T45dO5RP/R0SXx79vkzlo=;
	h=To:Subject:From:Message-Id:Date; b=DPYnNnvolBKQuL2YnzR7bLhAbhAepQXdbz1KBXOW5yqKHba3qhchlp55fQhrHHMSO5ueytHYVG7wufX12Byx4I18rDXIaExlkHuUf6TbZhwOgrhVM/0YfQcXVrSEwID1mF3HYhpbMOOQcVzS9L7K32o2b+r+cWcf6Njkf8Z1Bag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VagO0zqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VagO0zqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAEDC4AF17
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714390942;
	bh=cRVq6sb7HRR75KpV3fj7t9T45dO5RP/R0SXx79vkzlo=;
	h=To:Subject:From:Date:From;
	b=VagO0zqhp/9kHpT+sbkSr6ppTYf/e8D58AGUsNDdWs6KI8Al+jOYN45CA5PIkX8jb
	 ch/p52dUET3N0O0CXdhf6STwxGe2o2oIKd35CkMesYH7RgVQZHqV0dqj7wBlz8U9j3
	 YoGgCq/3CPuCrRIaiQoNCUlBPhIo/AJJIabhTOtHAUhoVjT47TAyY8vDlTzfrQmqsU
	 PK0/eMFnFlSwGMW9z1s0dyoLFYctE97Ge6pq3I7wHHf/uyRUUPShKqE/BS6RStNIr/
	 GwVYk+ksxogO/JHF+hstHONDbSsEbYbnkXQtFitbT1IsLxgvJ8inW6KYGe6CWe66eM
	 losWiXxAg33Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4EAC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171439094276.29435.12195781525499019973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1d71c0cb206c77ecffbc6944e902818c78db9c15449bc421c3daca9b9e9f9a
Date: Mon, 29 Apr 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714390942
