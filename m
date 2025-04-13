Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0DB4438B
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744568994; cv=none; b=QWd45vnCuZXLWnoF5aPKS9HiEMSkpTpeaIcPEloSMQ8jjz72YzCFUGqqMa0/VNWmZxR6UZ3wGsTmduWncS2jXCozRar4UwhBTUxrpkqtxxtG9C566FL1xUp18k/bgOB13W9WDwJjAOcU/7xr2FVaixQRIU1deN9qlQUie6bXIuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744568994; c=relaxed/simple;
	bh=7MMQ6rxLmY8eWWiLLoyvgAZmJwLX3zqNLSpa/BUTjoc=;
	h=To:Subject:From:Message-Id:Date; b=Mg2PwmGPUY9E8pgVho6exEdwSapeoVfaA0eNy5MZXJ21vMWuklvmX1UYs2F62oH6NCE6gjB7erELPdEfCXxidmaKsFYMQV0yEwgzw4xBM5EAfG0b9GdFrVP97vrSfb997SnWH0MPqcHH2/Y9+H1pXVaKovIVIOqfbCO5tbkKzQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKM8YDpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKM8YDpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB41FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744568993;
	bh=7MMQ6rxLmY8eWWiLLoyvgAZmJwLX3zqNLSpa/BUTjoc=;
	h=To:Subject:From:Date:From;
	b=WKM8YDpAfjNccx9oOeNGxwFPpXxOCfck7laX6nGVv/58HdKx5tSiWRgHjeYGYKVxY
	 gvv68YhYbC5SaUe+/hpw972D80zRz6dklAEogF3xNcC7fzN/KegnLjSRpc+dZQ6xKR
	 +UqhxqexSt1p0af+ZtvylbogFXbKhEJpIMHH9h3XbH3RwfqyUARKb3QLIBd/44tG9P
	 bsC/t1+iKbywyVtcwzyteDkms3J/XCiNFdSxvn4lOGBPtnRw+YBRyj2RE+zMXQkT0M
	 gldpha9R9FcAWUchgDeOSlHCpZQYyFwLkNzEmfYiaP2yFhMQ8NIr/YivbD3HdErin/
	 eDMLoLbxe2g9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A889AC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456899363.18964.5598854012984143807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8bc5f2ff8cec744942cb6f0bd50e74296e4bd85c2d78c14aef4c2570674286
Date: Sun, 13 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744568993
