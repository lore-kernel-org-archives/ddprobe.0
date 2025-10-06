Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317164A33
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759711794; cv=none; b=NiFlM+buAO7dCnRUD9vWCEylzMLfR2OSEKNDBaVd652VGOI6tdQjkbBf/c7QKpnpu7Nzlk+y3qMtd+gHNlWGToxWdw3finMc/a8QBmHmKhs+btYXu0+4CVsrZ7U55hg0wDcwh/SWLzCzHKA5ljZ1SIZaKwhUs80XXUpRvfpz+FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759711794; c=relaxed/simple;
	bh=P5ECM52oLl8BsAFulCTf4mklYsF7xDR25yNJEgy8G6I=;
	h=To:Subject:From:Message-Id:Date; b=hFqesXrD+3E6XY/fLA+ClnYXIKuheAZGd24dl/vCvMp5f+WVDl7eTV1yxziCaE7cDoUDNG5NNK12u3G2VR3M9WqIQeH6Ph6XXnNvE+E7J+HYxujwjqrcNYsQbK/CHA1WeaciSHU0p/TpkXlrEZzK4q9Fd0y/mGbthZTHTgsOBhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVGI6ZBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVGI6ZBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8527C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759711793;
	bh=P5ECM52oLl8BsAFulCTf4mklYsF7xDR25yNJEgy8G6I=;
	h=To:Subject:From:Date:From;
	b=PVGI6ZBzEjPjE4KN/4GZOtLgLlSD+I943fDZYR8xBq2neIulaAdRFVWFDHECI0o2C
	 06JIHLfdx/cAVmHzqEdbsOkbewdQ3vcwKqvVuZtOGDmxMo9ySqpmGyhZRIDyJt1yf4
	 wkgPDwN6YiB8XWyypDwJygVORTnA1ftRZUJZmP7kKVdRBQlnwTWoJJS9ckvEMm18YZ
	 +Fj7OgTc6cZ2/Tbe01N08S9l21Ku00TVcJi9YpoP/KnLaN4KGo+aooI89hbZ6Bld4Y
	 oDQ7YnqkJ6ZzYIT125mARp9GrJQY+/8yCeu77ywpmcS7Kai/kKBuo6UeqZPhiqSo0v
	 1EPwndcZsDezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9553CCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971179358.15171.9384400478553767616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7059fe8cdcef83047ce4d396683645eef283c75031784cf1d9a64caeaa426be9
Date: Mon, 06 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759711793
