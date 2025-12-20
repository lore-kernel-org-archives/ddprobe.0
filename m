Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8F925785E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766250834; cv=none; b=WE0Xp0IRHNzFy3wZlrEd/mr1h/dG0IFRYD1c34ucE5SZu95hJS0LPCawqrVhBXox9RtLZOADfwn5zSgJwP5C3DM7JrmKQr6nJOR3qlTlD7XvdOWCZR7lxga3BIOuLrlLY4zDyeKj6Vd2j2w608drQA44iCOy+68Hmu7+7Z7c+dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766250834; c=relaxed/simple;
	bh=s74uXBHhEmzO0l6+n8Ole7qlqMw5H470vXocNpNT21Q=;
	h=To:Subject:From:Message-Id:Date; b=fROq4wojR+GUeeEg3rhI73+QHK/+o6zSDERPRp5JnwBVEoqbIhDGHemsQYNUpHhjt8hJsYa26iIP8erCNvFIvty+n4oR0IhiJtzy5xsvbhc6cBvQqiO/kFipkPfsfr91dJZdAEWsvJCQqEBiglo+a8pw93y08Wmr+n1n9BrZtYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ick29xnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ick29xnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E15C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766250833;
	bh=s74uXBHhEmzO0l6+n8Ole7qlqMw5H470vXocNpNT21Q=;
	h=To:Subject:From:Date:From;
	b=ick29xnQOlcK8l8vnqsrTJ/eeCSSFTZuW1qNcQ9LQ3+UcAY1fCOhBnV62Sc8GxJg5
	 C7jUyCvGFIFoWjLWxlH9p3tt5+s+fLXPq7mzOeZp34tSuNsm+WG/K//HPV273o59jK
	 LZcX2vOvYTgah438xGdUmvWsfUDJMkIlzKDIcqFYV9toGL7z0/WEEyBZF2jLtDXHf1
	 ia/V6DQmAT3D3iF+sYsJYZm4JtttVzwawv/Ne1SwIlyyjH3oHCIPnDCH5oCWiMln9L
	 /rie1SqFOUUvQBWHD6wVR6CTIXD35Xr/DWk+e1g3oMpHcQOv2yAdOilYNKUBJjoLe0
	 of+4s4MHzB2+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F992E668B8
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625083358.16478.1308183260176899561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286f563bebd5d3578c4227360b1cf4b1d6014baffcafd4b85f0e2bee1a5ff709
Date: Sat, 20 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766250833
