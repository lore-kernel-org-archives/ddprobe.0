Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A3C383982
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791323434; cv=none; b=dZWY+4ymHLy8qB0v3D9b/CSM0MFSVQIBROP0BirjivDBdPiD7duO6E+62tonq2YrgBau8nJK7tXkEu5nafKWyoeQM55oxlS8VZ3sneQaza3Vzl/FCK3GTFQO6u65g0Rok4h6vnYkTcqUUq/isnpPU0m6728fRh9ylYUOSdBcxRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791323434; c=relaxed/simple;
	bh=F4Hcn1RlWzaCUVLhQswAf3NDOlFrNenDOTjryPNG5m8=;
	h=To:Subject:From:Message-Id:Date; b=q3oXCbt1ibU5H4sz59i19HajCQwtRDV7N81qCNImTwbZ9yU6FmnQRiZIE0E/IiyjtbCY4NTpNL42q6TzN11cG+HDt2vGewpvaTOEBMDA/bDSe7w2SgKlkWVTDsNjBbYr5211PMXmDv0p19AGKP8PFVi9T8hxxXEes6Y4LH8MBH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tr5h7hKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tr5h7hKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5715C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791323433;
	bh=F4Hcn1RlWzaCUVLhQswAf3NDOlFrNenDOTjryPNG5m8=;
	h=To:Subject:From:Date:From;
	b=tr5h7hKpGzEUmZ2TpBx9yuTxiFDz6236NVSsVdUxguWXhIhpmYEjQhKmIv637IPfY
	 WeWUzfK1WfdAjxEkC7TydRt5EHvnR3U6v8oJoldEXyZDHNLyfCljckhf1BHWBFHt8t
	 ifjEneGH3Fhu6wLYLwOUq3wm2wjlvLL/DeKttsIDn6BheUH2WXpMhrNCtL0aDGp/+J
	 lQk+kyT3kzaWHwRfsWHvdvrZCszOUa637sXiNCUHfF2t8rOpxuhE7vBoAjz+hodlmK
	 exOw3cQsJLVL+AjjUass3fVcWaHOvvaFNo3TyeF3PQQ/EzKkExTh7tZCVkDyYz4ihJ
	 MU/9rvNRyel+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B105FCA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132343371.30403.16941559454439605510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d264f6518acf6e256d95bcab8ca9ba41b778142294a2686e5a62e2a7e5c3f4a6
Date: Tue, 06 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791323433
