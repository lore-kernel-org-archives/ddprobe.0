Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3D3199245
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723563354; cv=none; b=QX6rn01vtmAfLU9lJ+zKtLq5bMtdN4oC0gKCEuLWucwXHOe+vCkytOx6lMH/ihOrskDOPmec5ObTTpxOZyTHAukcwSNvywXJTgypXhCyk8G186erJp/Gy3YzoR+4npJJks1RhhuTGWvEFgQjEEPW64tunH4EMKsZ6/mfCUHRr5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723563354; c=relaxed/simple;
	bh=n+7NHJyS+R6eAa6H2VYGPxfufztjjAPCVV2DWHUUkNI=;
	h=To:Subject:From:Message-Id:Date; b=LzKx4ZBmBKuZoQ3PtJO5EKzcbR8yle7AjcA/+JQXQJCx3NldxjuYb76ijIPJ3dmUO4s+chtwvK4YypFKXwq7cUspHal2DKeAJ6GcKFuQM0roDhG/edL62+LFP8SV/WW21tvfBLy0byXZGPSJ6Ea/eu4e34JnqHkoxCEn3rq0XLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLkihY4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLkihY4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA23C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723563353;
	bh=n+7NHJyS+R6eAa6H2VYGPxfufztjjAPCVV2DWHUUkNI=;
	h=To:Subject:From:Date:From;
	b=dLkihY4qxKbYfaRBboqW3mD26QF68faZd/9aRPiRdL9/0YJ6F1E6kPmAxucPYhk6O
	 3ssbHvCTCftPaskdQznptD76wZO/JFj0UzEfiVexiS3GWhgFfK+3+utCiMI5pNA3A2
	 CcHziZYbAAixnqSmxjRFe1Iy5SFGQ7OsVsXKTtiE1YpwztOwR5uFh8rONRbNWkGXJT
	 xGWNmZdysfcg65A01NT/6l8qDwhmPmhOl+Xp9vbaoQtVxsS6OAxUcQYRl+CV329BPD
	 z1OIa5mC4cnz7heQ9O7ePx0I/UQZMHx6mfiMlAZdKrKt9ivUWNu+zUMA+y4MT4FwbM
	 RuC7dlgxvnyAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96572C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172356335360.28255.12567465414142834259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab34a4cbeb9809d51d20dbff029388c0be62928da3e85b4811b07e505a7f891
Date: Tue, 13 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723563353
