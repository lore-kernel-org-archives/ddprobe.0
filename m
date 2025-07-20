Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41559A937
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752988194; cv=none; b=smSsUfap8HV9FZ1lwyW9fcLbBCJZrS+koIulXj4FCxHdtjQjOHZbRwuESe6eRe9+vPsX3h10qHg6h2QFsnh5c5sHz7HkKY9uvGg/f2zVXvF9/cks68NP7R/67UBQ8bdyuKeMHf5+kf27NkWft3UzksiSqPWDjGGf/vI2lyVr564=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752988194; c=relaxed/simple;
	bh=Mugn1/Tv6orgZoRwI8q6RfAPZzge+3I23h6AfdK0Usg=;
	h=To:Subject:From:Message-Id:Date; b=r930xeVxJAnafFsi/GnAhgvd9O5E2Cm94LGWAlYAVcE2IuuEIXNclVdreZL6nIjqvzWXtafRkPjsFQg6ojgUh7v0MtaJa5G6LcOtIFqMvN7crnEX7uU1bTyejDFuPFdefoM6GSpgP3a+MKFhW+kKbT1CP8BL+GvWfFnERHXAVlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiCvYoYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiCvYoYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD67FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752988193;
	bh=Mugn1/Tv6orgZoRwI8q6RfAPZzge+3I23h6AfdK0Usg=;
	h=To:Subject:From:Date:From;
	b=RiCvYoYxJc/cfKeklLzQ6y+sYdAvLLEgB9q+7R1JodSPWQ9Dsi9G/gYGatL7hyZUV
	 k9B+bue/t/2q6qhu2ik0rcsovMiUuaetQrjCvR0uXg4nXI4tKCdmYNr7BTE6TkGzEL
	 WBQMZdGEueb9UxZ6WT27bca6Ntp2JyoH51b1tOCRgaW1vDaB9oAnEsqvNzeMmcEcpz
	 W5UvNaqz3F6vAXwpr6zA+C8DIV5c+GRHdYGjKplJlJk1Ynw3oUyfQK6dO/IYB4Snl3
	 qCfaxXtsDqPa8uhTPcGgzlK33sR2rsPMXkwc05LUys1SwrimNuAuJfBET5O7++CP3y
	 vUVbPoGdAaeUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9248CC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298819358.15314.2378014952752014023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e924296f99d1e753bbe6550ea80295f2be3ac2545b1c6a70ea93ac6e3eb3e6a9
Date: Sun, 20 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752988193
