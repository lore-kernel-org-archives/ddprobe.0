Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B63B14BF92
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787533834; cv=none; b=sD7X9U6oZw/1KgdZg6hUTQ0APpyPlfT3aI/LuewOc6uAlYkkZI6L9cBk/CT2vVu3EIv+H6Gd0f2purwkqgPb7N5IKVrYU0llkRAya1Ck9xvqrvhqlSiDXDSO+iFvsN5o6ugM1tx9qok2tiCN7bzp5TfCbiMrBOCRB52dhN1Lpos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787533834; c=relaxed/simple;
	bh=TFSTp6RlGN7b4LtsO6uJqohLZS0NXARJcaCZDtF3H9s=;
	h=To:Subject:From:Message-Id:Date; b=S6qM1NMHcFOpTUGN3p9St7Z//xIV4sZIyPmjvE+SxP8O0kYCbL2zafreEZHTZCHyPMOzWgTJzt6ZzKgo6CsVqgB4Ra0lGUXI8jYq+/K8AKI6kqsj9y0h+LNLOIG9BX0QG44YynfIIgbZMcqpyqjdhPAXl8hSWQ04qWqTqbcqu7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6GHuAEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6GHuAEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DCEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787533833;
	bh=TFSTp6RlGN7b4LtsO6uJqohLZS0NXARJcaCZDtF3H9s=;
	h=To:Subject:From:Date:From;
	b=d6GHuAEo5qvfmGsvY1K6ITuhv95aVRucnSU8AOFgM+gw3uStdJejiHt3AdCFx2YkO
	 EZQuYVrmcsraBcuB4KCDYkHx8f5glSULy+mCXkgsqxEjeoPePvjLkOy3cWCUHfKKni
	 dD+DjCxiooiuZnBIOoFUwFK7MdESWlGEQWIoYnq9y9oBYtCrj92WKmMtX1M38pQWXt
	 NOgwVXR08SRn7aVS28QAI8P5faAAsta/Ue32xBfqgRL8sVrzYexwk1j3uCNXJ5xLr3
	 IVJDutXYxeGwed0D0RzkO+SMvksHdyQ/t2Aa4mW26sKsCQSYYCUOWW6MlOI7lZxhMu
	 1Rgi15ydsfVBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99E1C5DF97
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753383368.23205.2964805112087562135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263aea6663d75c65346b9b631808be48606b04bdac0af6e496a0f380f2ed248d
Date: Mon, 24 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787533833
