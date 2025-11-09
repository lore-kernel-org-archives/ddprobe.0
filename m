Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B28221299
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762683594; cv=none; b=pmb3tdnc/oALyIFtJJ4CFMpyJuzf/FdcnEYXx5qE1EBIjtVXtrLsx++sYYH5GUf6NiEb4ByUw3Fe0HktIgMcNCs7K6/IafEFhkEEdxZjkWOadsvWn+7qj9E5yJJfKbOZb9IoOVMG/XrPSgbClfabv0MczmJZAfazWLT2QxICw6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762683594; c=relaxed/simple;
	bh=MqVZEtIZZILcl93EwBMPu3TmTNlMe/IHSpVBlXj7tsc=;
	h=To:Subject:From:Message-Id:Date; b=e68EStY+6W5SAd7gyUqIILGTxBYG9GvriAFY/VnY9bm29+jnqGSJ/h+zsbsXy/J8E6FmLYACD94P/TOPcadQpDSX5+Xhq/YAn+05hHQRJv6/1u49Mch7VCqPVvBsXibBbXnI5+OI3FMpWHeEbMIcqILMYKNKl6yqq2FZbs4OlY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZR/JbAma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZR/JbAma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07A5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762683593;
	bh=MqVZEtIZZILcl93EwBMPu3TmTNlMe/IHSpVBlXj7tsc=;
	h=To:Subject:From:Date:From;
	b=ZR/JbAmaoeiS+hbJcOCGKh1rSoJ9r2z7HEughDC+5BswJkdd9tO9Bb2Iey98OEjL+
	 FX9kCDhgdfSRHWcQFhBhjWwFfyXJYhw3lAkJpX8iT9CfSZgu00KYioAUwhrDmLw7U3
	 3RVtriMxMytTvukN2OofA7qTZYL0ZudZK2W2BVnIa6n3qGt8t6M1p3FAgr7pXuHmBS
	 +rOKl7wdcgkCE9WautD2ctrEXEXMru1PTlRh3N1JLmyVX/yfG3QndVLFvb85dP0itp
	 EerrYU1CEHhUvgh6+EU8yo/bKWBnEJi2YRtgifrZDQ+hkoR2ZzIrJhIYi7XTYYzuxD
	 /hQfESAgxmGkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C17CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268359358.4634.8242199988952532332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09698713fdfcabf8bf5ee6ca5eec2c77e1dd4d3f3920b4bb82003f752cfae2b1
Date: Sun, 09 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762683593
