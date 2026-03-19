Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CEE3FA5D5
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773953694; cv=none; b=ZFL4m2GQv/h1vno5Rlo34IxoF0SVxSc63cmRjLbklNyLnuudi7Epfis1qV0wY5MIl8MO1717ZwUF9uE7c7UHTWNI22jcjph6zAFh9FfPLVWpW9+w+FDqb1GuDBDwc+3KIhWFGODt26o/KERHqgv60uscjJuxlar95PTgqcc6198=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773953694; c=relaxed/simple;
	bh=G5aAEBgV4CzCr+cx+PqV4fVg/miZiQlg1og4GY1pa4s=;
	h=To:Subject:From:Message-Id:Date; b=RWuC6fBThCUZhNo3OVU3kUXbNKoolABZ58q5wVDwsK4hva3xUSznqzIxXf/7Tmg5gMZVdT1EaIDMd7BZALOcaEO1VKqHmY1tTLD8YVUk0CtztJGc+1SEISXhDj0By5RGnM3+4ljpqmxLUrjm6l54tMCDL/xZ/vjwae6ELKShZUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc4zHGqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc4zHGqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B7BC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773953693;
	bh=G5aAEBgV4CzCr+cx+PqV4fVg/miZiQlg1og4GY1pa4s=;
	h=To:Subject:From:Date:From;
	b=Sc4zHGqmfUzHusm4ef9yD4CrIexJWQpKnUDLKGTL8qL4RYDvQbRMl03Ux5DptMAEO
	 eMMwOowm5xEgVkQiV1rrgOb6Cf45V3rnpCjimgjemcFfWbVx6iOEDvGO2LvSbFEsNu
	 gMRD6qd71SEu5tN+6Wt+iPfW6TjgAAPrVFdt2jaEBvHpFWQp8QQTcw1TD+LoyEKu1q
	 +60sVYPV8UlKuxRSljFkYdQ8DShfJeMNGX9wb8F8qpE2FTJkRq/UIWpE8ZKWINRa7s
	 H86InJzJLmgMl/4ZQI0nz9cM9t+W6f/aUg0K+KR5XWB3l3LvirSBaaSzR51N1DlSPn
	 WKlkO4LvkGXkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902791091916
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395369358.27573.4053624379520569055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2253dd1ef7c283cbf81259aeebcb3462c4fb1139f993d27e9da81ef73e5df162
Date: Thu, 19 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773953693
