Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC0E225762
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759870794; cv=none; b=IPfl0wTSMTGn4EghOmaXnu9su8vo6Rgm9km+uoPao2MfWPQMMIwiLJ6KIVlMqIK4NVbRyz90Mz2vdO/nV9dR6A1b3AVMtvcQXuMYZJXRWysBgqe24wWmkXm6D2xmPPB5afeynFgEVJjK9/F+K2AHwdxxnzS8biJEkp9WUcbfkJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759870794; c=relaxed/simple;
	bh=AUeXo4tRtPFNnQBORzt6H+lTtdVVW0nJk9LokGd0nFc=;
	h=To:Subject:From:Message-Id:Date; b=ttE0e0Ou4wnXHdXuEBliJ6Nk6pRCyu6oFkOdTlrfO07yFalV/29twE87v0Y5jzKDOG8ffGBdTO+IU73vQfEsMa3xdYNBChn4adzuxq1wtTXwygtSjfzT1qu1q2iEv4CxO4UGqH22wMsAN5brjeUA+Nbq1LLSEMMjcUlvzW87bM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4FbHdQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4FbHdQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C0AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759870793;
	bh=AUeXo4tRtPFNnQBORzt6H+lTtdVVW0nJk9LokGd0nFc=;
	h=To:Subject:From:Date:From;
	b=V4FbHdQmh+JMQcrgFcEDNyXLhkCEW3prA3p8do7cWYJeSrjFbEAPY1sZkvcoRgHw0
	 kjBrwtmhg1W5AutQTRSf+lseM52h0JIe5QwkMwcJS9i3zHv7qLOTasLPumxV5sWy2E
	 0Cy/nt7eRAolMCUx9IofzFRdfCY7xI+8TY62DNWwVE0cIxTdy2VJyRviFhckftCHhM
	 65x5LrL8Jd/Zm4C0CY5Zjn60M2e0fiGvMgbEX/s3/MQksyq9913bYrLGACK1XjBelJ
	 kgftTN6r9MLgJdRux46MqIxzshzDHQ84ZEKAaX7pjlFyZe/w25EJryx2CNRYZz4/9E
	 YR+JHm9EQTTBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924FACCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987079357.15854.8215596904700582799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4ed31e7efef4daf61dad4d05363144881a9bd1604c162607425697f82e40bf
Date: Tue, 07 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759870793
