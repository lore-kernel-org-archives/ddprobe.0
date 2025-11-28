Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5403B2A0
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764372774; cv=none; b=uVjCu1SZxl8uF3tJPxFxxNtzszs39xPzLEqDolrw6/HE3B2EUHdH38lYRfuZxTvtYiq0iiOhwzv9br8GXoZukC7mOoBtEV3ocq5W9p8D2cdsgOFEGR+JZlfpL1xVzaaExxOmcNtjGSg1DeDrSAOEkEq6zojUp/8fgLEkjVVKRWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764372774; c=relaxed/simple;
	bh=mzbDlizYBK6lLFVdXeTpyBCN1IadhSkePLXVj3M/PpI=;
	h=To:Subject:From:Message-Id:Date; b=H7Tce8k82rkcRaQJQe1lNaJnNGzAxW/VdAfygmH2w9CPkZlo5W+2vpjOv2fN8Pd1ALj95HYJwoBFUp464IVJUET56/6TRS42P101bAc9iumn669TDewZGU72ucx3GPphkaJ4iZnqvmdYoCJz6X1XWBS2ppZQflU3mcVmxE1cIao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkmVVB80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkmVVB80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF03C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764372773;
	bh=mzbDlizYBK6lLFVdXeTpyBCN1IadhSkePLXVj3M/PpI=;
	h=To:Subject:From:Date:From;
	b=mkmVVB80eet84N8b9wAFnsAlQIq5SULjlrHtAEaRF5v9kD5iiuZ4SD3c86mkwfQcd
	 GWRy0f6Co6Z5dOmmh7aqgNnogvfeffKF9sn21nYCBNtuNx3lxxUZK3QUw7au79sx60
	 WhZmFO1B6XZBRJkxVcevNrCLlXXXoxg7raVk+/f20PNK5qrXQ+dJYVjet1NbPmzJnH
	 kCs6Cp6siZn1aKObk32dnoPJC73UWlc3CGy3J0rHNf/mAdt9oDCFChCr6LLGHg+BCH
	 FQ+9qehYck8LMgKYhMPPY8/0WEfCfzqYDo4MDUF5cobea+fiyZMbjb7GP7F5CJ4M0x
	 1r0eKmMtqJDxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B28D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437277359.8427.10144819625825400310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aac5fe1b8f3b84043f06ae39ab2aec59d309b3edeaedbcfae2a42d06a8d7eb3
Date: Fri, 28 Nov 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764372773
