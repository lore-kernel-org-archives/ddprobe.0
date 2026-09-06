Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69459361DBF
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788709834; cv=none; b=cjeZmEP1XYvUhAi+3XfATpDWAnM7qj11dTFfm1klJQ9pQym6w0BkMt1239p7a8aN/VznBrzseo/agK3QgksW3GPE4OVd7bzMIPMQx7sjvZtka6NtUWnoJcE5UWNSR304oxMFGcwpRY7E5aToANqptu7RJz25miyjI2a4WMYuRFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788709834; c=relaxed/simple;
	bh=Hk1IbMR5Mkp3ueIeSWmPd0MtF8wrXan5ITZrYsiEDyw=;
	h=To:Subject:From:Message-Id:Date; b=VaCfzB+SZuA5uRgmmJytQ+vN1dcYpusQ0G8d1y8hbVd1Us1eNbC9V6Z9p/oW+ESAyjJ33jUf5enW7Pu0fvqhZjE9Siug2N9O5RyQ/gvXUPpg1XJLlWnQnJ3Bc2xHdB3VmMpahVas8EcZtlhYoZd/FMrhcF2mASiDG0yh/FT2Xlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seaEDEx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seaEDEx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40D9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788709833;
	bh=Hk1IbMR5Mkp3ueIeSWmPd0MtF8wrXan5ITZrYsiEDyw=;
	h=To:Subject:From:Date:From;
	b=seaEDEx/f9DAUqouMwZwaiZVnVm8FLTFbtq9e7CL6LVK22V5yK2sGYeU5uv3wAtNJ
	 OzFqmf8rGCn9pobnm/pigWh2hq1cQVGJB6Ye+Vg1epn6nky2JtEZ7xupnQzo62bmeg
	 m8g8SPKw3+P2Un+7iAelcFvf3RXgw3QSUGk7NT8g5uoAufmIXx1NTHATKxJ3R5PBCZ
	 G9QzrwSfVxQWKNl8PPMZHHFlOQPB2DP/zCxXOPLsJG6lnS2M24bycdfvxbWToZbfao
	 OKQDny8ZywU3HrI7ZLUrYdO80AW1dRq2A5G0FxBByxEcYh18PJUxkhr0uu+sOxy2HU
	 glrBccY0v/zeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF62C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870983374.1996.12371239287079452714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79ec618f96f48e407de078f8d8ca059285a85cdfbc501347ebb9b8efd4b6677
Date: Sun, 06 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788709833
