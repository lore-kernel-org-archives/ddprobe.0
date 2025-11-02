Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2410A253951
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762101594; cv=none; b=iHDiXfPYGH3njjkVp2yzDuiWdwi3hV2oqxQX4aAyej121d9hQ/qm25kRAKXPSdoUx7NuOVbUrecqjBG76OgR/iUH7XSO675MCwsnSfyZ3Zlb9esk+wPNYcB6v/HYbGCwhegm1VhNJg81M9C0Az/QUGElcraYsKxZKsWdiRHfLzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762101594; c=relaxed/simple;
	bh=gE3G3tE8pbQkw7u4UCcWu2haQWQXrVhXcTh6MzuZNqE=;
	h=To:Subject:From:Message-Id:Date; b=tERXeB93JNQTkzgfdVx4aismx8Cl5y0bClH/tQ2i+qvmbP/BkERKgo+5zHu1xO7TU5n5f2DmjbsrzDwCFRkkFv7zJgwAlCu1DgO5t4iR1IXHunNmn9h6q3p4cMkRk3kfAiTAm8EVCzMXmIL3XuNyZMqo83ezfREGUQldFQHlOP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuOJWQcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuOJWQcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D9BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762101593;
	bh=gE3G3tE8pbQkw7u4UCcWu2haQWQXrVhXcTh6MzuZNqE=;
	h=To:Subject:From:Date:From;
	b=KuOJWQcUXs7zfp9XfkfMqq5bhSn1Zs/fQS4BXk75flzfACu/9FADbeL7EJPeCPV26
	 o9aPUgVPHeFP2sV+yFkayIawx7wYlZjBtGgruFgvuKlt8mhef/O/aZyCk6tc/utkAs
	 eATba7JtWZjpzyZPIqUv5RTmw6y2gQnTunZxo+EkUHAn8n5kAOVLSgmQ9wvw7kGZq0
	 CCuha0A0QD1fwgJpGTKIFw1lXpVUMi5pXV5eJQMlg8vqbboeR0oZsj3losmykkCKB1
	 dy64odchLDDW3WBpHI27oygs2ooDZWXZ+6OoTnyksIY1Ykv9Rx7KiCVlZZRx+0zxQx
	 sqcZfPhTGkxsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F42CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210159358.13188.11802547458276558292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9771e3a29438eac642b72e7436583479f5abe1ea616250515e4d68471e64d6
Date: Sun, 02 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762101593
