Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533023DA5C1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785487234; cv=none; b=P+Axqdxg86bDjNSoqESYvFQjYhJOgeycenQn7SpHm4UAcQND+XMApF5NMx5LhvmQCn6wqBlvSVFABz9FXAaoKCwtzLmLiq6MJDQYTJZJ1vRhLOrthi0ATBJBFAXcHeFxeYIqMkl+HQkTTRhX0RpLkgzgGUEkYiVl10SCe5f00F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785487234; c=relaxed/simple;
	bh=TRoRB6srTuwLSdq/1nWDKTQ54wMhKV6qPIwE9PuwzG8=;
	h=To:Subject:From:Message-Id:Date; b=gV5gsz9cVKcT5WtAWt7DLLe15wuXvb2CBjP/xjIKsF/NkqOm5Liqlqxl8F1w8WEa1tmAZMGbe0moTaBByG48xMQi9+4oY3gFFQOzOGYm0oNvLTcNyCyUrMvhpq1IlC6vFEJGgKOeSR2LHIf8Uqrchwry5InWYEFNIQ8SVpCJP34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnJTvaEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnJTvaEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36E8C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785487233;
	bh=TRoRB6srTuwLSdq/1nWDKTQ54wMhKV6qPIwE9PuwzG8=;
	h=To:Subject:From:Date:From;
	b=ZnJTvaEATDn4LtHXekuNmUnvEb+AUODfQbqi7cUuQ8q5CbUS7tkkVMvbY/FKOkLMT
	 M018HdPnxe1jopU2qT/RfG1jDumnONQ+tCfEnEPatIgUEaxSsauLljbIp1gt+etB6I
	 4LOAYzKeTFNl3O9mNsyTr+SCdeacekpMEr/84bCHGWWWFRrO/8vCgPTSIYjngdaf2C
	 Fu+tdY26JgkzOqVahFTKE1T/nlP/vfkT1iq6Lpvh/QDlg1togd2RhxdXvWb1geOLuO
	 mj07w1j7kVC0gAv7U5u/HdSuVu9bgWQrJn9/HgaoYIhE08Ru5KijfPuOdTq91fu21N
	 du3LtHyt6JMcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD67C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548723370.9383.10084897563901067342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c0a86911a9c62567bd8e0c77322625a3099635e11e67b46d06991b0ec0dc7aa
Date: Fri, 31 Jul 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785487233
