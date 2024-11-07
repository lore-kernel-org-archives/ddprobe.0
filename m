Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9E01DC04A
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731020154; cv=none; b=esqXn0tTeuJISnRVbHXrNl4b7ldUAX7bBpofzKiXLT0QEXoimMNQzhLwaFPx1DSX0HXlukYhRk8/B3nSX6ZYuW09T2B/EWdaeHQqpNrbRQhTpSIc5SN1wa+xDmDgVE7NwdDYxCLUIwi0T54MlABMz4x6zW4d+IwHSR/5nFRiZH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731020154; c=relaxed/simple;
	bh=Hx9G4Fb/s4vL0FqYd6ZxtOoAQeOR9pHd+HXaofLsLyM=;
	h=To:Subject:From:Message-Id:Date; b=ui4aGWU7JEiRq5uYthOGlQr6UNlEraql4DUpM180csiWTgdZWbFSqdIBk8FquzElxqalB8YmTp//+3l4dOITDqzsWEjDLHGIQIv0Solb05qq/yX8Jo8O9RbZ8mxo7kk9Gl7ukH06zZASPyZW+zo/1624fzzNQY+pqxl5hHsuyiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvO48hcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvO48hcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D3FC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731020153;
	bh=Hx9G4Fb/s4vL0FqYd6ZxtOoAQeOR9pHd+HXaofLsLyM=;
	h=To:Subject:From:Date:From;
	b=MvO48hcKUZCWZ0hDNlMmYuJWrrpofFNBMO7Nj8qGOwd8O6vwovgBvXFN7Vl/C6kG3
	 b7IHOr4NuIiHWfFI4sjQpB0nDOKIGPJ2Vq9mna+ebMWmZLP4cCUjpGAXHGmLZv9eax
	 l42uYV5ASoTX1Rkwr/cEPPGg66vvKB0RyJ4P0Jj44EIW3eHeQ2t5+gX0EPjVFv0bic
	 bdyqyZNmdBhLTJvUQgH1ABPvwon+6XLwqNPr4nrKBp7deXD0KKj8eSDd5ThTf8/Ssc
	 aF1NFt3zZchEJRAqDUiVOERrMty5/01G1lga0IUlyyTerjRnadVdoSss3NpBNO6YIe
	 VJcgotTUO0zRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94638D5D699
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173102015358.21753.8398576496435321512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62edcafd7560ee348460bde4623ba5f3f832f7eb2a378da0674b96fce1407212
Date: Thu, 07 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731020153
