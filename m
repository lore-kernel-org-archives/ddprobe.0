Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0336346FBC
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765872174; cv=none; b=iBbOAl+zQvNiBceCy8ClBqWNMCn0Y6pryLzPUd6edi3Q1BdGkZRj7MIHDkWzPlKTfzN71vGYbUas6N6thVU0JIZfDxMD1zTB2M5jqP6UL2ySW3puuHN9SCnJxmDzihCzuG+8467C4rwAwyEBCeDciAEyfucYKOBmSCOdpB3Q9Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765872174; c=relaxed/simple;
	bh=htMUnDRO/XEh0tm02M+IWpCL8Me8M4ZzT8CZc53GPvU=;
	h=To:Subject:From:Message-Id:Date; b=U/MAJVYt5AN8rmndmRo+4lnqpV3gLpuZ4yARhHShgCNRekSYxfyLqEhouUTsa8i58JonKUtouTDRXD1tKQMj1IGPgHUzBI11aTCK+VGR8zz1XBtqwuxIM+K2AONWg2kniYljvnWc2kWO7EKe4R2XIdyLZZRgwqinTsJaqHK15Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFuS78hb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFuS78hb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEB1C113D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765872174;
	bh=htMUnDRO/XEh0tm02M+IWpCL8Me8M4ZzT8CZc53GPvU=;
	h=To:Subject:From:Date:From;
	b=sFuS78hbnSZoZbDi4Km8UpmAOtYIqB3si+6MXHfCggWFk3DMducWqR1RqxL4RcMn+
	 wjmd28vHmCFbIESwxnoQlqx3QpxQlWkcuRolDzC5PwdChTa3KHmALOja0lB8KC88wy
	 iLl9TZ95fNtbumIwK4l7l543c+EtT/4vM4llXJXWGpdKRf9KV6GFzJHmOQ2iuhGDPk
	 f5CQz5HXKGDW0rOgGXcQXuW445vQH7HT35NIPW7ING0Uamhv5gM+lJx53nmDV9sADD
	 fVGNK4empYcHssQXdYn1qAu60FHgUmeh6ak1oVg+ayY2X5w/PY8K/xtv/pgX/mfgi8
	 mktjX/PYAX06Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A84AD609A6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:02:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587217414.26330.5934796684761694929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746ecf93049ffd1bc1ff4f76a11cc15ed64535498b08d774ef2260778ea1aeb8
Date: Tue, 16 Dec 2025 08:02:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765872174
