Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249853D4131
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779449556; cv=none; b=ustyCTUzLccrDUxXONACmCxr8ild3bibPWaUy30EvKsTuT86LgPp9ralcB5al3gjWEmuFMJksI6TiDyWNiEeu+yUz4n8S5ss0CCtV8h2NdMBrZoWdGz/GGLcbjggU+DsC57tFh3+WVBfYrnE3FAc/43NBPHLNp7dWJQsuUEI6vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779449556; c=relaxed/simple;
	bh=bIfjZ0l0W85Y4dWTdRTs2D7310BatvNWZ0NZL+N3B30=;
	h=To:Subject:From:Message-Id:Date; b=Io4vjW8FWFCmAC2wSxSM9K+Lp19cg+aqEZKMl2PdXasQ3zBaA/Npw5TcbiF79Zj8yOY7h5cJW06eue1F1YnHKr4FRjCZ6ppyPU5QVGmKGv06SrHNRvwAKWPmcitd+p/H9Wnq5bqZJ4b0D7wea8N3Gg7+YkwfJNBVohWfsfta/hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrnK/fmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrnK/fmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3F5C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779449553;
	bh=bIfjZ0l0W85Y4dWTdRTs2D7310BatvNWZ0NZL+N3B30=;
	h=To:Subject:From:Date:From;
	b=ZrnK/fmAMU06e3HCRHT0USl/rdKfK5d2paQvtz5VUOTm0ce6vNsE+4xDMPdASs5mj
	 sbGpC4tcVpoTIESL5AK1DspTdcZBYope9O53QIOhSTE2age3zhN+8oHcL43gBrW5GW
	 zVlheXuVZ4lrEZFcUSAHDlhjsLebypJI4M5OjDYjK0mX0unwwDTm+wVLsf8xytv2na
	 6ricXuZPx+fEq5Q8WZizOjVwgfv5RPiUE47eXSzdX6GVCqfCn+S5EHu6rLLnGzVmjS
	 fLHft3KTnCr1IyanDZsVrIAtYUfm4kA6E1cxi25q5bKZmDHP/uugIdm6SFEkSdqAMG
	 ES3vg4FAWvooQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FB4CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944955368.32093.950757127834182711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364865bc555544a4d8b20ba5d797b3fe7595dbd29ad18fbf60455f6e24a73ceb
Date: Fri, 22 May 2026 11:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779449553
