Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B96295DB8
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763697715; cv=none; b=ZHxhwnhSSVturdUBtQb8gBD7auCSarwOlX3/kg9XfvRfPK83kvgwqc64LnnLbqjXdsZInYpJ18FOJMrEgW9MsVCPsuikT+gq6P+sLM5WCgBpJeupi2MGPRB4gVuthMFVYyJcp0OsxNZjpgRyYexO4TzHjGb9ACQUX8Ds4wBEM78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763697715; c=relaxed/simple;
	bh=MWCYS7VdMYsEQtMyUQMmjwpKh4cNipGTckdgt8nxTzk=;
	h=To:Subject:From:Message-Id:Date; b=l+qR+AnrBYdts9pTygw1vOEHWWghVk/0tBWba9qTWZSQgiITpaqPyxpQBIg+RbpOr+PJnsZG063bI+SlVt52mHbRCYuLkz0487+XLTr1C7KhgZ2l2oIgwHCfGe2i5N/Y5Kznbfn+Cw7n2u4GkDNUbazZuIvs8oR3JsXUlTEKeDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6cTeCF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6cTeCF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45ABC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763697713;
	bh=MWCYS7VdMYsEQtMyUQMmjwpKh4cNipGTckdgt8nxTzk=;
	h=To:Subject:From:Date:From;
	b=O6cTeCF1mOO39LwALyVnvrPcI/a6/0sdbU6rJsGJ2+mUZVGLYboSfpkRZjS6J+LHu
	 En3ZysFv5HXaG1i96SgGkfAYhu1CW/NQRvN6FeDKTi71GCb8sW5hmW8z8Jkv3zC2pI
	 kAIvL4omVLGHjyaRZEhLr21AqRuughuQI9bXot4fnX+V7gvfwjiyWxxCcQiBQYEfDW
	 cIvdo5oFlZKDQVMU1Eq7nQWokNa3egG+qi/AI00wZmXEMu37aZNtqHyraaKZgxUhf8
	 z6kJkLz7VnCmr+nTpzVs8c/08zAm3etFBI0zy5DnMrzU58y4CYG5TJbYae3zq6lY6K
	 PURGD9cRkqlxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F7CF2564
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369771358.27194.11667639710468602693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623faec09d4478b9cdae2909f3bcd64be40e1adc37b75dd04723e8e549025352
Date: Fri, 21 Nov 2025 04:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763697713
