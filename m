Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508711E5724
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783681714; cv=none; b=ejOZ/LpdfDhez8+99bnUm5SCWyF5h2IHRr+YcS9XrBmROHS5ooWtSGau+T4cP0D0kMvuxFLe8BpFRx1xksibVsCFhvfIyr13itCgP9cwzSXz8/BMPeyqqLDkvVaWcDXyRn/K09heyZ8UOvbHQLXiIQlfm8hSBtlvchzt0sN4LLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783681714; c=relaxed/simple;
	bh=BhLv+isw2mAh8xGwt91lkGw07X7KFiY9QcnZSLFcqwA=;
	h=To:Subject:From:Message-Id:Date; b=k7q4B4W8uyHGg6AEXUFwjkcpA6n2HJyr4UwONBdhgdHgtF6wkfdzaTn5JtnLq7YPYc9KXSZ/icl3uf8+v0/A40Y6oVe8Rqaqe1h0jWEYnE3fF03j4zlT/wZDKsEImZiCHFs5OwydX4hu5BtJyWljWBwrYK10so27eA+f1HvY8rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvTgN3jC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvTgN3jC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C968DC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783681713;
	bh=BhLv+isw2mAh8xGwt91lkGw07X7KFiY9QcnZSLFcqwA=;
	h=To:Subject:From:Date:From;
	b=IvTgN3jCS5n7F6Iia6gobUouROQUZpbxF5+o75wVUsDausXEm3Y0JES+tdKPqKJdw
	 FWzGONKuzJLoX9GL4Pdfe2eaPMIlugXnaLVQBxcZ+/3E+6ike373b11s1WNX7cJ/Hb
	 cHcdly6ROv27enYenEzhF7PK1FBV17J+gkwYHHvAwUQK40KnHB61jfa+4Jn9DjgNqa
	 5ZNVMnnX2D+LLYUtZT3IMsrXNvl3CnQNxVnsewvC9ZdPXEYIUZpidOTCeYyTdDjCOS
	 jaMLn9Ig2ubp/mdBAtDYdNLknWUPVem5zeADH4+PCFbHFl2oS9rxPKVw6XP/b0amxD
	 JtLDmNJr9qzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82A1C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368171368.14329.8695929543253237775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6172999b6730bc87f8d7c15680802950cf35a1446375671f69e9db699d44347
Date: Fri, 10 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783681713
