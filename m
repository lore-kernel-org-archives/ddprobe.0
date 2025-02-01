Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46514C125
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738389954; cv=none; b=S8w453U6/QKNIrNDURFP35RASJqdpFyfyy7dWImNKOxR7Pp/Yi/5BIbje2K22vPHja/wZ32n7YdvmnMdftuoU8kXcsFjIIqKXXi5lhvzF9t3THCU7a+CWhpLnTGfvCe2+lUe8bbknNvT3rtU3XKxrBVVSwVaztgyjKIH1R4skgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738389954; c=relaxed/simple;
	bh=O6fYAEszDvqh0RfUYIAsoC+L9QDoWHE6dhN/7NdLHdw=;
	h=To:Subject:From:Message-Id:Date; b=SfPXdlnbK+rBR+1YJKkwQdcOS9xyb+XbQtJ/ad3uUpQUMWs4P2n7MvQMr5M8mbjNNKJ+iVqgHNg8SPoF1Jhfm/GC/mLxfWwj9zgnv/pQaXetjZbo0sUJdUUDXlP789CEbvkB5tkRfwaCTV6NuVM4F+cPvivUaLlTsD8pbrqTVKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uw4FVudX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uw4FVudX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBB7C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738389953;
	bh=O6fYAEszDvqh0RfUYIAsoC+L9QDoWHE6dhN/7NdLHdw=;
	h=To:Subject:From:Date:From;
	b=uw4FVudXG+55L9E+wCyV30fj8ylw1Xxfyj4dwHa0E+GrTkKi4p/V+65d+Le1zrgsM
	 c2gz5tmcTe3rdIDGU3ax1l1FdMQWYEZHolKe/oMVtkVjtX+Xq2ICDkG/vKKKHMER0M
	 J92B6ZTKTiUu5hNzG9devpXBGgFM14cN2AgYRDgOeWh02rgwDJwRDWiHVlY2eofN6O
	 fnNH+fR62bUuXoHtCRMxWcdSuqAUxFZYy3tpSkh2IumbDhqVqx8g+6WwITWfTA6Elp
	 ZFi/nvvowXzvpfo8PD6fL8S+2hvQD77b5bfzYkn7t3FzBEXfqaF2gWKT7+3Et8g+e0
	 mxI/eijGsePjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53EEC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173838995361.21553.8381002584047411655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da4690dd7773c82eaadc75d9dafef1dbba0fe1df52807aee276a83a283900dc
Date: Sat, 01 Feb 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738389953
