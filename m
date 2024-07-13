Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1461B7F7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720903223; cv=none; b=iuLHqUvQgqlzv32EeWpUfsYPqq363C4zZs4NlpRi7zDwHeIxWMFNdDokannGk2oB0mXzmtH4IMmI18bWZnqzkYH67Sgw2BId2pr1lHYwuGDHlhnVRvyzVpIv0wnPOiZxF+AiZ3NH32nLVXe+ZfiKaPgWS2UQajuKMo6L9zo7nSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720903223; c=relaxed/simple;
	bh=qRUrn4FTSob6aJePOX5gwLMkVD3gWHCdiNzW7O6WUeU=;
	h=To:Subject:From:Message-Id:Date; b=KjaasknxIL5xYLuZ7fFEhXS/SCC5ImVpuRyWcD3ZNZEqgr+z8UknwPEJHdzeBm7DK8dCQzfoYPYVgU3v5cqUXctr1X9Q5QoCQWi6QzhBJ9ho4bahGTQ3Q3fMh4XX/98JIfD1STzcg8H1X2BwsckFS2W9nIsxQhC/7dtuJ30LlRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8SU+ZXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8SU+ZXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5912C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720903222;
	bh=qRUrn4FTSob6aJePOX5gwLMkVD3gWHCdiNzW7O6WUeU=;
	h=To:Subject:From:Date:From;
	b=q8SU+ZXsignmlV/sAIyVXAB8yzjm+XH99xJPHsNgBjTBQxpp+NSG016KRotj3YBvz
	 EYIHAIgB2lajNDO5AyR15h+FVPN3EO8+hAwPAq9QX/aNcvL1/tqxH6802A0e3JyNyt
	 dw6FZedFjrb/AmUpjTAHdluXOknlkMjUuL5Nzsv0imj9pGyTnJuF0+WIWoX8lMPVU0
	 cFKTDsHQ6VgPnk78j1cXzzGvvBY0NGJ6Ep5mNTjWB9vWB+VVqzpPHkWIlwHSKMvFYE
	 PiolTmtP31SHylUK4lF+XgF/qu1STqME0wzTgD+LkH01v6qb5m4jVo/Ta9uiYE7mQ8
	 r81nT4xzyG2Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2402C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 20:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090322276.11462.14827179698562851768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1cdedf23732c040e4bff3b6998468caefc296a73e2bf32c0bea52aef7b09eb1
Date: Sat, 13 Jul 2024 20:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720903222
