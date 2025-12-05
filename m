Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6812E336F
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764933174; cv=none; b=sZwg7EAe2P6WniHWH9aq7ZDXh2wMtM0IVsAoPzT7ffJkAVnzkAbsTKQvNKDcvNJ8D8VTIUWw1VbJkAAyzpMcwxb9UVtKFMSvdp+AJ6behoO5W+t8S3rPtzcVD1q6Pj5Q0F/nGTAUakfw0vkR5VFtQkwh/EPezJfKbc0O/EpUeeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764933174; c=relaxed/simple;
	bh=RTtA5uND8FqR0t31VrkZ6HkXIn//g5Gw6yio0JauBzE=;
	h=To:Subject:From:Message-Id:Date; b=tJJaHY/97xEQZADf53vam0bTlgyYbkVeIf2TdmdToX4Du0ywB4YAIzfV8d2G4CzZyMUf4MgLmZ0IQZoWrlA/PihnHvVPuStCGXoCE6Yp8cg9g/ZlxCldKrt9nY1GgI90BQMwaKTuM2TX6ZgGc1XZ65OW54e/LpPdABrj6lDTfb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7v9cSs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7v9cSs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1799C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764933173;
	bh=RTtA5uND8FqR0t31VrkZ6HkXIn//g5Gw6yio0JauBzE=;
	h=To:Subject:From:Date:From;
	b=L7v9cSs3WrhD4Y3VtKxHInC2iwLYI0GB3faoHLWTxwsELb9I2lZgYgvQVx5s86sGc
	 7NnG4dcJZr7olepYbMmYxYdrylvHL+rQDx/MNvveJi8urORepVaBkD4U5q2Z0qLf6W
	 4QyIAFMvYrurv/mv1VyVKTT6og5XMF0Q9CFSC8N9d1f2aTVPB9PUlRErgH+SxwVHZD
	 E/pu0m8/oXwKQK0UJaEr7E1LKTCbO5ijLzjFWHLngjWGiNq97lwxojsSYXZcOX2N/G
	 SN4Bk/8NGb69Mei9ApBebSyTM6VwYqTHoyTrXeGVpc/g4mxnn9OokFWGpN9XbysrTx
	 WcixFko/jXRcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9218CD2F7DB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493317359.20810.7299408455754345164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf76fb1094bbc411a7d23e441528f07219fb0e67d3ed4d3db8a42be3c38f116c
Date: Fri, 05 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764933173
