Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1560540DFD3
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774775094; cv=none; b=Sm6nQ257Yw7XDqdbK11uQAuIk6JkZ5x5HVp+sEbJbCQ+WTxZbGMRspbUUTr8kwG9XU9UELLR+XXpIernn1+zhZZxxoCqEs1KpZ0T9Z+J+U6WK1xxKX+0L+UB0krK4QWrNa6LEV3U2xknWWs15LxB6HpIfqfOyhgZVgNlut/ieqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774775094; c=relaxed/simple;
	bh=eLlGU334jL/r8Ox8BxB63MzcoAawCxAcUkzglu4ygzk=;
	h=To:Subject:From:Message-Id:Date; b=NP35a21wmeLpreXR7e/+K9/Jj7a/w+TABTn9AffUUP6/5hVBv5d93dQK1QOU2ZZtPUWT+9w5hVa9P3kIf4plXUOPseKSY5K8YYDrfACt4ZywgYrDbpLU7nUT2XWbZPsyPkVmoJ8mgTsciOOHIhvsea/DYEd2B/+9BpQXmNMsBec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZkhJeTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZkhJeTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EB5C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774775093;
	bh=eLlGU334jL/r8Ox8BxB63MzcoAawCxAcUkzglu4ygzk=;
	h=To:Subject:From:Date:From;
	b=VZkhJeTom8dsGUZ83qNOXKaeaMGbFnqtT4Hs4lUwr9HV5Y/cKYyPnVuqgcaAqhSYI
	 wUD/cT+uZjCaKCF4W6nG9unFnsN3GH719w08LT7uHASQe0BwD0vaCI3ySMKHwSfvX6
	 XWZ2zuxtVXqVvpXOZLO9HMSFR1E8VrDyaqNDCO9PNUVcmbW22RB1j1is94TM7CdbC0
	 zGt06al/lG2ZYuKva+ShozlYgucLPMjtsl+uibFGwnkAveEWbS2uGds32XdP1h81ru
	 Ctp1VwbIPlzKp/0fpopV2tqn53IRcpQOyZEO9pS7GSacvLnHQ50TsMb9sllLLh8yZu
	 O8ysYl/oX94lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C1F3D5FD
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477509358.12287.17984488357757653076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1f01fbf6220fcb5be852d7942f8d31585a3f84f3c5c00bcd3f4d61277bc644
Date: Sun, 29 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774775093
