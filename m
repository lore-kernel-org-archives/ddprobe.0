Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6657604F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719157943; cv=none; b=eyezirgaaY03OZTKXz1yy6IdV7szfuFkLrqZ+GshTM/JZnIj+3jKNIxdk4Q1v3qBU7VwwhRYz5Nd7nm01BqrZP0eBUKSKMavwgTPHyoApQPAYwyGeojapiWUTqk/yOsIh/jW/wZpNwe8Le/nwC0/1mkd7P3g4fyotdR06d+p/EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719157943; c=relaxed/simple;
	bh=IIu4/iCJln6cUGOMJYqX8SXlRm9bdjo8lJ7etSrkGEQ=;
	h=To:Subject:From:Message-Id:Date; b=jROsQinNPM40Utmxd7ceWguHjxYsswSEfDar+c1yMB8Dv1vUGJAUqj2Fro3taSc8+GCjSj2xaahFvwDevMxW/Y1xQKjUkG5mW/5Gxtyl3FXVEqVCL0XDMb/60TPqm+VatfImvutui3IG0CY47sUnYxuVhaNs+2dBO6pGcsDZoJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cR9kU2JT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cR9kU2JT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E817CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719157942;
	bh=IIu4/iCJln6cUGOMJYqX8SXlRm9bdjo8lJ7etSrkGEQ=;
	h=To:Subject:From:Date:From;
	b=cR9kU2JTwbied/CyIZPN5CkZdcg23Irky3jjRULNVg5DAj1Dxwxsw0cgd4V7QIby5
	 k7gHzbe19lLgdV5JBrw8DEDhd3zFBtWY7McZ6lHH3qU2H6vYz+WdJrI9HGnvQcTSw6
	 GfQZIeYDIzklm3GdKTlvq3s7/A5D+JkEDL+Mhw6JRRrcbs01Rq3VHtk/rstFjK+e2U
	 YA4TS9NQ6LUas21sRrU53C34IssI6RFKxZ/4P2F7TtZ2Ph/wHbZPlAaI1P6oRtCOo1
	 QKP0j/hkq2j/57zw91Reu19w0Q33VEogaMp7qPhaclOFdgCUcVk8fUBmv/+Ww3A764
	 kr/CvA0jM1o7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D269AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915794282.32131.16842375559607329322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ae25953d844698fc77feb0cfbe7d62a7e0ef6c01a9a338c68ac9c1b6e66cb7
Date: Sun, 23 Jun 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719157942
