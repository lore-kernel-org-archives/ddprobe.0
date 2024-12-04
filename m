Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED9E17B50E
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733303754; cv=none; b=E7VQ8ktL+bI0Sk4cbkQf69eU0yK+0O5qcKGPxVrhWmXBDCmtenbBckETn134IuB+cEDPDrW6cKvwddoyGvTPosrdCewLHMfsQvQx8G1w7DmTlSzAWx7zpLUlKsXxN9bfQlEIbGoraJGijJobErBzHXMyAD66Ka6oe2/gh9PkMqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733303754; c=relaxed/simple;
	bh=jyDBVbrIa3jLqajSlDU2JT66hKZLbIXdnKnr3uVDT0w=;
	h=To:Subject:From:Message-Id:Date; b=qPWdba19/V35DwOA34Kwgy2Y1rRz29jwxocTaj9tDmjESmsPf785UFQ/1p7IoQsjVmNG1d0N8W6nh3pnqP8Fu6m6TjseRCQt/tEToNus6kzgTApWFa3zaU066O7cHxNvbiLD5MFYn3fI7TBz/6j+mWEBR6v3soEX8MXXoDXVZ3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePH/tTYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePH/tTYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55F1C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733303753;
	bh=jyDBVbrIa3jLqajSlDU2JT66hKZLbIXdnKnr3uVDT0w=;
	h=To:Subject:From:Date:From;
	b=ePH/tTYaTMjcjGxgBpa3SihKxF9bfTQxMq6+bQ5gMjOZxTIh3hsfIf+72gOpb5scQ
	 ArMnKKAJdrdiq3xN8IyPHBuLvd9kOftTLGdu6DSyNpsSWDy1eOy4twScAFygope7rP
	 opE8RUy711jsviykDCuLjFv09zaNWTxr53zbCn7ClNn4pfc0j2dTra5kX5Sk0vIicu
	 8e5JT7APYSwz3JO0gq+pcuYJK/WulC8PMNKqVpkOBgcGfHvy1Up8WOfm2VjQP5+t7H
	 VWRElAcgCXmGdBixSgLlgksmj5hgM/g0CM+H2CX8sTZkS/ZXij7SGLb9NZ3ikKKFHc
	 Lb6uAgv3siSGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E994E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173330375363.6026.6644867883915004987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2770ef29289f866011761771c38a3ad0e691a3b43cbde9a335ca63e8c7ea7c7
Date: Wed, 04 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733303753
