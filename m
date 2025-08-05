Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1956A86359
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754423394; cv=none; b=rhmLEG5gzjtlTBJk3T6YFewEI5PSe/qEIoD+4wAuP8JhrVDqNiuHLgBcRk67piglzcRTZmlofoCTj9YzVxkqOp9gLL+1pj+egHagraBcKjrlrGWjPP0KdCZzveTnv7BD1q38wbKFy9Sqz0bU+FfWsf6ASmW/isNgvFRelL1zNMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754423394; c=relaxed/simple;
	bh=5Tafjf7nbS3x4/ubmip4fRkKwoDg5FPmtAsddKoi1qw=;
	h=To:Subject:From:Message-Id:Date; b=Ysij4Lt7F7hrqGRQjEtAasPeGblaH9erQywCUjyYhMAZlylKIPJXHWfLf3xcN4Klj0qXfhBDupMlWlHy6c1NzKPaPIgzn4dug3w/RN08LI0/2iVb7lhNO1AQtkz2ls+oFY7kVJv76THsM/JFZdIsV3sCff/4MVLovs6ZuVe0X/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erZjvHJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erZjvHJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CFDC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754423393;
	bh=5Tafjf7nbS3x4/ubmip4fRkKwoDg5FPmtAsddKoi1qw=;
	h=To:Subject:From:Date:From;
	b=erZjvHJXF+YWLsclMm2mhGG+6mRqsdiSX9+Dnc6snFhXvr4DIdw1lF0xIo0XwTUH/
	 EOYcgATV/MR4h1XT0W5Y5osvzuMkkF7YNAXoyrD4p0IORafSbAEb9k6JzAElM9S0PJ
	 pDbLwhgC5I4GwnDVLEqzkAB4Xn7WIhaPvT7fHvdirj96OcM7AD/+qKEjpYqIi7MFP9
	 FgNw3u3+OISteffi9pkJPuimnfIkNrMtomVX/rAxXbEBMgCaoU41uS2gLxGvpi7E+V
	 9dXQHwhEYpL752B0gN17ZeI/OuvpQj5vildCsAf7Pfziv9E0NUxkRUP7DgXHhkhyYP
	 F/HMgP4lPIV7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7AC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442339357.6142.10133572917989366341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d24109013a16d86d884cae4e7706894e1984a4077c9a6b9dd5e8eb402dfa5e
Date: Tue, 05 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754423393
