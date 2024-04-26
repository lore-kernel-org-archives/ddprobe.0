Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C37148836
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714143743; cv=none; b=LEPbXbWQFYBULao8jAieg0oj64rBDTjfFAQIDAF8N5liApuDUPfWQUWztOLH55kIUSSvQx2xvcEb6HO/6FINcqTuu9zi2bXXg2G2+tu8xb9cA3IxEiYLmrdwJiUrc4iJlliND2vNbgLVYRUfXQen8f47heCYbWILeABjKGW8uVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714143743; c=relaxed/simple;
	bh=VfIIVXLhHTzQAOKYIX+Chagi/9XfaAv1HmTKzkrS10M=;
	h=To:Subject:From:Message-Id:Date; b=WNUJXCjh36z7Wv082nc9qViBoafJZPeXa6gyHxdJxVAymjEwQoOzFGTObaQpkXaKJTocQjxyifQjh0MlI+QftZK0udgLWrRq/KUQhYrDNfyI5pdlKekwpQ88hM9Jz/HPjEvfCcVO9CgwXmaQ0BDJGTLpdc/UJtY8v9TL3wfqZLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgXe2lcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgXe2lcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96D4C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714143742;
	bh=VfIIVXLhHTzQAOKYIX+Chagi/9XfaAv1HmTKzkrS10M=;
	h=To:Subject:From:Date:From;
	b=JgXe2lcIUE4Ue06s7Sd28sL4WX5Z2E+FfJh1GrJhyEU622og1NjSRkjRlRRatny8+
	 oQri5msPprBm4rgV78YGVIxZ5QjELSrDrGnoH5riwk2pZcawZ1kFG9SaBd+plooeFV
	 CpMqAOomphMRSYGF919bKUDKNko0NxdM7V/h+YzVi/Iz5optFEXOlkmOVFB+FD9KBn
	 ZODpzza+Cpi2x9byWUHgx57OekyrF/FLjwh8wobV+HGntawNPnHsbxDPAlTTxyNak+
	 J0FbbvBKk8bMnbKdgXbUTmxWtMXS71kA0jbG0uCUaDvhAS3JnuNuGczpQkA2yiAJsH
	 HrEOVqJu2/mdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CB4C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414374277.24256.5195836637355973299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03d6c7fdac288431621f58125389d317c33a7818b6fddec01d55fd16c40fb67
Date: Fri, 26 Apr 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714143742
