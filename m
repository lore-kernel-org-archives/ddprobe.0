Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A753633F8D8
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764952374; cv=none; b=awc05Al4CuWdoNYNuvhrv5c5KhzQ27ABL/UUjFzfSoC9HA8bYfpuTYjNVRm7jiLt+mMzEEq+UNRkfqFrUTjUT8BVMADXc5IJg1XBz7s0jnqBsR82+f2JbMLEy4s2K22KXf9KxjPfuKQ3KTyj2VUaVZ8nhY3jDgbGQhJK0ViYwTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764952374; c=relaxed/simple;
	bh=SvaZ9RkffX16rb/AEAxLeOFpEkX3/Q66cLR1er66gkg=;
	h=To:Subject:From:Message-Id:Date; b=AOmi3DMnI2AQj0ylcSBEQpfuDo2hBCIpq/FqoxnHl6PLHQ0XBaWHfD75x0sMvNFYZl/2bL3zYfjMt4N7dG/SH15DfsBONc+74Y3rQ7kfLQDVuT3BZYqpXg89hzVQI6nW1LTjjY24d17DYZxtn838qyNqbyjIB9gPoVVTtSQkaYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K72gaJPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K72gaJPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B92C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764952373;
	bh=SvaZ9RkffX16rb/AEAxLeOFpEkX3/Q66cLR1er66gkg=;
	h=To:Subject:From:Date:From;
	b=K72gaJPGa7O9bW7sf5o37ldW/m3AxVLyuOiauHdQu21x/Jri+OH38Fzx9+6aEe9cl
	 Ihy5bMmxtobFQKVY71yTrHgN5QvPT2JBbcMtyaCSw1Ybg99j/nQE/Y4zd8IYdXoEfJ
	 Z5F6UtsDsNU1XUG6YvYP/kPRZme+iw5HFxaj2nV/35YGtfnQx6stPKvGVLHHOizUgn
	 5XdhDQWezdzjXxM6dQLmGXe8WNVoBQJoyMkAVWZVaZGaPFmysFZqDOOml/SnSF8Lwx
	 0zwVZwJ8UuHSh9vWD9rR2IeMb33I8NOoSMSThsGrnaRmbLAEqDlI6iwG9v8Wr1HJH2
	 zf+w6ixyAXUVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98550D33981
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495237360.19759.11715921825100625167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa1e2aec167db300cdc7c4ed683cc51238167ed0b0ce41b4ba8e61feb9bec95
Date: Fri, 05 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764952373
