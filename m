Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF1D1DF980
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785725434; cv=none; b=Bb7JinqrARuneEcsbAzeoV468hMw6f7phK5pynFO+6v6KBd5+9fFUWM+3dLI3O+GIEE30bhC0OkEDA+QvZh2UTuEG+W+RCeXfl/0EibpCFh8GIrJVU8hP88JzmkqUoyXAw8qb5dyy16l9uRaOQvWqm/5V5JpH7swRIxGEmAPcHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785725434; c=relaxed/simple;
	bh=VgOetE613vs38OBynsnz3yFjCZK2MS1Wxn61tUJo2AI=;
	h=To:Subject:From:Message-Id:Date; b=iwDb2UbfM3MjX8KqW5xF/KGFNW32uvAp+1inlv24uPH7hu9lY5W4lpA/zKok8GWGllO0R45vswoFXz3D+5XlUEH3buH7B+CR59k/D09emgee1WFnS+MkGhcgdpIt8NHyud0DjweQ+e55zyPc9lAayfUJDSQHZYk/33cRrN7e+64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vG/yIpxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vG/yIpxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E769BC19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785725433;
	bh=VgOetE613vs38OBynsnz3yFjCZK2MS1Wxn61tUJo2AI=;
	h=To:Subject:From:Date:From;
	b=vG/yIpxOvClfA+XUg+zhV8ODC3tBYLvVFpvkmGvhsHqU3d5b14/YiKjeaJ1B/GioY
	 oz5mZJVuIfZ0tXjXVbcpLQ+Et9Xn9XjW6r+eUAjybTudTdGg5ecOUexcwVRsHVMy5l
	 BTd+lMjpO6aatYvYFNj9KV2052nzq8jTlfO7R5+7mbYY+EUT0quU9whumEQzsoJeGC
	 LIAyCKsXWl5XqQwHzPhS2orNffD3gpEXzyzzRrtON4Qod5HKctAiIDSPMKSpCL8B78
	 zv6FpC7tKPagmRkYy7CQRkkUcRKDCM+w1ikOcbnSJPxtKq9xLrqp0KHi4VwPhGcWsM
	 NSP3qZmi3vGXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE1CC55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572543372.19164.11545333936664321735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc314e01125a4f28c3d463d886056697cb94331fca4051ff6a2c9f7db92bc8e8
Date: Mon, 03 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785725433
