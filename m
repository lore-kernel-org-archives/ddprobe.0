Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A9A3E5577
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782335254; cv=none; b=ZUokhzTCWa74Sw+Ajgx3bOhDM9M9GjCR5BsbzUkM21NG6kCR98/cCkZWJ19PTYRBgOFVx55iaIhoh2D6xu43WJuOL9Bj0/BChffGNbIM3VP+rz2RvK0OSC3gP9VCpsf7SoFU7PIXZdIfEYW/2LjRbBrKPYTpxySHBpVCPHYenAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782335254; c=relaxed/simple;
	bh=tZcE+oZ4MmJW2dQMWq/xHM7+BSk3EQHreV4qDngXy6E=;
	h=To:Subject:From:Message-Id:Date; b=L9FCWAb9XZYJeK7/TuPTYixVXGuRNIyNCcI7YJVTmN+sUzAEV6kh7nDNuoWC/U0PQ4GTXaAgWmHD2ouhak4iZu2HzOO/Oeg3gBeEQ+D2CaAF61QStgoJ6/gUXfRTbG6xj2jV4vOb2WKJCpnLMj3YChWE4icpycgOICnKBzZuL8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5rnab7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5rnab7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D987FC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782335253;
	bh=tZcE+oZ4MmJW2dQMWq/xHM7+BSk3EQHreV4qDngXy6E=;
	h=To:Subject:From:Date:From;
	b=T5rnab7QvkwAxajJ9ZS25YJKQBIJtxCUpb7qTKvSxDLTMF2dXLD0aWt6eSeGsj0Vj
	 h+rvvts4JZfFAk27rf9+IsyoUYMrj/QtcDvVde0TPBUeIYpMvkxc545umwvHZe9yL0
	 acvk4RO5ag2H56he6LEUnDbYScEEU4jxP6Z1Ev9Uj43dtmAk84DN5yTTz+0mDKdKuA
	 77lxMX872GN1ov9znP4PRVYQ/eEoTJ/uj5lkBOqfHuMUTpsf6KpotIi42040Aun0EF
	 /cN2g9w8jP+zNIx5KzOsJVoHrJ0DvXPA0mk5bPNzXb8DO59QhqONRWW4BF/68xKcwb
	 8rBQzNGWtT3xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63C2CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233525373.27924.15598724646489430642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b608491177ef6ee03f26cdef454968a592d1fdbb0abd19759d6ee2cfa10d4c
Date: Wed, 24 Jun 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782335253
