Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A46182B4
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752991794; cv=none; b=WANzIax7pR6xgUprn9fP/uZx8Am2TtSPJX9SgeBq6XLcnUwkzvbjJeU9YAUnJOKW5UULw1gi/W4Vfqo6QZm+THEtbb68ZG3yVLE+is91XxtQTbDBsqNL1LX+lT9Dhs9kzw23Cr1ed06hM2dd0L7F740XZK+bQ/DevPZQo6n/DZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752991794; c=relaxed/simple;
	bh=UOzCAMGVR4wVwIVdc5m3Xmb9JhRrJonzu+3hgD6hYpc=;
	h=To:Subject:From:Message-Id:Date; b=WhfV/zjzSd5XvFIvw3CMXybk49PqkyKejJGpOiHBPW3t3Ms2ODc0Ur9l+tgkpyIsM/hT12jNT7IfKQMM2g1sHYGFSQrO8egdNKmHOR3fZJXUxuNsPOEeuIM6sR9xiOfFhO+sRB3l9tTM6sNpjcFMalyiUGBHyyJsgNNEZDwwJfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dc2TGaPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dc2TGaPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E55C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752991793;
	bh=UOzCAMGVR4wVwIVdc5m3Xmb9JhRrJonzu+3hgD6hYpc=;
	h=To:Subject:From:Date:From;
	b=dc2TGaPjeXSKXlC240emvfssuVfsqOwZ/UzvitfUscIktw6kk59FX8T3/LtdrtoTO
	 RcedmpjjvS4mblTrIFrJe8Lcj+Wgl16CeXXUpyzTiJoDXuqOGcSiIhXBr7WADYTCqD
	 Kr+PyT9lxmt0rLTj8wqzZbegbFcxm6ExRr/EVjXz+vo6sm1puLDGph2sFNgbQKVDun
	 MF4IHN7nyewSTWZ8bI9brnj+XwJmlq+MbYn3+zepaaWtfd7MV70RtFjjF1EcG1o8JJ
	 c8yI/5M5g35RE+lHTYkmxI5Pl0ZfgaV1PwGIVpBJVGwI7UU2DaFfbnr8JqxWMTBQC9
	 vJqH7ZYuH0cBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C07C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299179357.1037.4714922395005944044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5325e8f69c0455e79a1d8874b2741204cca1b18cbdcc4aaf6eb2d7ced2cd288b
Date: Sun, 20 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752991793
