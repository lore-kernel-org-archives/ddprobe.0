Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6670BD51E
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717924643; cv=none; b=Sy7ms8DPyMkAsN9LmX6+pKllG/vpPdIJ2/LlGPkoNnYHo3/3oRt8OLFcv1dIZA9JjO9Z36mJie9+CB54H++TyfJAPFqtmQdddZGx7PnKc+oQrFqZ3xKgrzEGQmqD88/65YstsSFs4s/T/NbeVkh1IgzT//JuD9IHYa+vQStcRJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717924643; c=relaxed/simple;
	bh=nB6IRLz3X+NEeDuw5oIDpaU7Mx3umMIDAFJWEbGHmkU=;
	h=To:Subject:From:Message-Id:Date; b=TlYNELNbVDo1YHE3zZKaDXAvCMQEFNQMrbbt9qlJSA9MWsDM9z5F/rfDPhzgktElS9PPmgSKzMg8scmPU3BbaDYyjn7B7mwbFCL3ciqRyipX2twE0Vs2qlXVyHc8g+AecX2MXLkXsXMAhHJGv+lQOE/wrIStCDHzW1oq8twVzKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4Ig1/Uo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4Ig1/Uo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C3EC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717924642;
	bh=nB6IRLz3X+NEeDuw5oIDpaU7Mx3umMIDAFJWEbGHmkU=;
	h=To:Subject:From:Date:From;
	b=e4Ig1/UoLTSej2U29qNb/iQsxOJGogs3aoDZAh45PZLNDa0k8lNxs8WW5BpJ647XZ
	 FK6pllTpOekF4or/cE9+jgq0FsWJR6CN65Mb6mqfgxN0O0uJIYzV7/Y32tBHXBsZ0A
	 DE/wKOgBrc9NjfM2LhPTTY0Sr4cl//lRlNoHp1Y5+EmZIGwdaclo4sQr9iqE46IQyz
	 O0JfOrPVOQADRzuvJN897OgX5/3DuHCFduQIUzb5eb1SEPQRWcjocHideyWEqM+xFC
	 2A3cWwCsOjiC7pDwpn06aKve5o/5Sr1ZPzd3F42Ftpsq7k6j3Lie2VYAoAbFQH5QAo
	 /WFk1OrOR1MeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD30C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 09:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792464275.567.2991379529010320828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e025fc27a877f0290f2e1c97d0cea79c8cdea8ef792a12ab193ce58f07270e5
Date: Sun, 09 Jun 2024 09:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717924642
