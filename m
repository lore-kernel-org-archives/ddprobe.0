Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D00480324
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787775035; cv=none; b=Ms6NFL2EXqFO+DDAw+02Y9oHcZ+7XQvm2J4QWhkAWD7zn9znDjbcDdoh4RECT5JHP+jvogD6gNXDWZnVuaZ/6kcghej3QTcmQSMw3Jrz1NklsBngm/YT2V5euVXd0R2rYgltYIU35iLFxMh1oK/xLORPzdcBOTrgq6c+MOodoVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787775035; c=relaxed/simple;
	bh=mj6H0pAlv2XuD2qc8VUwLffVjc+oR8I655E253JqS+g=;
	h=To:Subject:From:Message-Id:Date; b=kZDFuSCJLmk+0gy7vhvPLl2dmuyWS7MuTydaI/zB6vdLrGv8XRv8ifdinAfr8DzAya8uVE6aZAukWZNzZY+7pWNa/oXJ0uJ0ARf0EBruwGQVElTVbErT3da/OMNOn0eqTq5Y4ODxzXn6MKbohQOWopcjIOuA8aRb1SyqQcpxgfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAL/Q7v8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAL/Q7v8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFDCC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787775033;
	bh=mj6H0pAlv2XuD2qc8VUwLffVjc+oR8I655E253JqS+g=;
	h=To:Subject:From:Date:From;
	b=iAL/Q7v8d9ToYQ44n8mlF6K6vAkytftfTdB9h1okylewrJemIuUxFI+oNd5iatwTh
	 g/xCOMFV4h38eort0HCtVh7PiRs8pd9H/eUJA1Vs7rtosdoAslOSi/rL2mpTJE85ER
	 hM7tiB6CPH4IZinR4pSarFdK2K6DG/TLkgKd/5itOz+H1Pb1OGJovTkfq5ZLY/KIfb
	 RQMl3s1rQks4f9v3n/oTB0qbRdBByR7DhoaXW79R2/bkLMjM09YilwhJf26U/E+y9a
	 dji4EnQSTYUEHJCuvvlzKq28tzsO5edZu44AFfnuw11FiJh6KyabyeMVoZB9dAr79P
	 0R4uaG5Ll5DXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB068C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777503369.9827.2269320280268713672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9038d8ca2cc3c26dfdbe61e797eec7a7cf442b1adfe9dcc3968acda8397dd4
Date: Wed, 26 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787775033
