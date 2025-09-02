Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAA2343D61
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756834194; cv=none; b=ZtOrkBIZA+5DVOLXl84UBaPVKHQt5NqEVzDbP/iXVctXFElwEn49Wm6ywYArBeP5QvTbeJuwuDh/Bs4JjFK2wXExT2SdsmVhNnT90tepUutVO2y4Xl7NuClM5Hgno04gheD831TO3g/a5/8NqpAohzuluBdgAc4VZQvg8bzp/mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756834194; c=relaxed/simple;
	bh=YFSt7EjDsh54hb1iWrVuT1Qxr5Q5uPTQfGnrhkyx/L8=;
	h=To:Subject:From:Message-Id:Date; b=OTuv7AXZN+Yeenaoxuns39y6CGN7nobw/SIM7vHEUcoy24MzgRbtfYXVhbedftKi3+I8YUde7+qRXlKYwVOM9eV4UJ+r7qegID2yrlRTFu9PQY9unmfpK2VCfw6QnSxUAoUeXUiQMIbiq8fzkJDXhEDueg+T+h9JLTfA/sB1Ays=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVU4ug8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVU4ug8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCA5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756834193;
	bh=YFSt7EjDsh54hb1iWrVuT1Qxr5Q5uPTQfGnrhkyx/L8=;
	h=To:Subject:From:Date:From;
	b=GVU4ug8uOU63+sANWHVXODtAuKjlx3g9etiimrckS0AZmRGySE1SMhoXsWfdyznvs
	 vIlh+udWP/s0qZ2hEd72izGYiOdS0yv7diyzhjR7dxLQ77X7AFd9YZuZNOWh94Y68T
	 tOGkes8n/BDoco1UU1NJ7gRztkaqLBmxrnWqCYsyRT7Mtz1T7R0RIZ6jCypu/2xRes
	 lc7KUdw+f7weLylre66nHbrSe1Uni5SB23trbHJuH6Jdi0xccqM0NWpCKtrW05ZBNh
	 x7/SaCnywASY4JSvTLLVY+8HnRB73L5/JZ3bX9+XsNtKibfC+I6EMqhCOaC7ES3fZx
	 LqVKsAAsweLhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3B6CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683419362.15515.11032231298820942788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96e519942f9bb390b01f47e55568aa0f63827bf938b196e50267e25614d52c1
Date: Tue, 02 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756834193
