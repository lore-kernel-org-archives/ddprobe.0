Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DB52309A7
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733820954; cv=none; b=XCGeKqHugHv2wQH1miUXEw0KSo7xxo0obaAoNH69Ye2K8EEMrKkpH0ZQA1cx0QaRwDJUBYGH8Vt4O1TvoWZED4WpIikDeJz8kZM0Y7ypM/2Xp5JTAzDbwaxSQmAo7+mxIlHe07nR3tnvi/3h6Qry+QEa8KlgWgL9lfF6VV3XYDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733820954; c=relaxed/simple;
	bh=CRmpDEVzBm7woFKrIqXnViDL9+PeKoww9T9w//Jv5MM=;
	h=To:Subject:From:Message-Id:Date; b=G6ADtxfJOUOdrB+Jx+j3P01TGIAmu8PQaBDGF0brJE3vUM76jq1Rx5CsegWWqYxM02/KZJ/FX95wCRr2I4zRUlaeFhwWpBAuRJDJ/pnGogMJ9vOzgfJ+PxvjeXF5uOcfl4Ktl9jpvDuUH+2vUvHhr4ArR4WkquEwAG3DD2lJUro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyaB3NUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyaB3NUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBB0C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733820953;
	bh=CRmpDEVzBm7woFKrIqXnViDL9+PeKoww9T9w//Jv5MM=;
	h=To:Subject:From:Date:From;
	b=gyaB3NUBneOSPKIwDRSWuV3ItYDqRA7d4NV+VDSXm5lgu9YNju9cdlESgBNgjPbrU
	 4BdsL5RL2y+KKHIIXhiWcpjE3lBW8XxJII91VFcDe0kFC+jgF/VbBX0bAZwDFIkyyn
	 Jnp3658jLXqbZOVzCkzmo8rNtdqa+sXptLBZv3CsdTJkLYwCGFa5FCTnMu9RgkZ/GA
	 4VIfwA4XxzWddU0l0nqueoTujLz+4hZpf2v2vFOWF9RMfuAFE40ySi/ojgJNScfUhf
	 QWwAkfTUSmvSKkcpY1B+Rte1PYA7nYC5MgCMZlByufWnzhA0Kcj0JYg2/7Ib5BunPS
	 GWEGDzLq7IVIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97733E77182
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173382095361.13063.10520076218230770856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a9755daa3a9a774d5f8352ac9ab770380181588cd3174f11e15f240ab009b46
Date: Tue, 10 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733820953
