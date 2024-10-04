Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF831E5732
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728072354; cv=none; b=pyYaWBEUW61D+7lEVu2PCbvCZtNwoxibjinawEmkKT8gCrWUkV84eXspDSvM+LmeIO8ckJ3p0pj6meqqLno/RJ79TW05WM1nzdbYFy+J8Gp9vr7wp1IdMHZR5evECk2v4viGcJwkaaFBOHCfRGZJhV23gkZiBg5o3dVw2eLu7r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728072354; c=relaxed/simple;
	bh=RWe8b84IJPnulcsKFRfGbEJTFOy6gdm266TnepFVDC8=;
	h=To:Subject:From:Message-Id:Date; b=SOmx/mztMzsiORG4QDOs4OYJFl1UXZN/pJLh0BAgUFLfLXN7OPwa6yktulkNpeVGL+WNVhIWK7Cgi4lRhwVuPy/+FqYwGAcIa4Zh1TjuYsqJdlpJuNcYWnTIZxG4tBwHFqTpQIZZ629rrSWojrjCs5ul+gAfthcytNwiglBe+1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QK0BeW5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QK0BeW5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2070C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728072353;
	bh=RWe8b84IJPnulcsKFRfGbEJTFOy6gdm266TnepFVDC8=;
	h=To:Subject:From:Date:From;
	b=QK0BeW5W/REknFBptm5kta1v9oHIKioUydrYmf5t8aDwvpfppqK21smmHuQxWqnQF
	 Xz4HBnLhltvHV7u0WYuB6WShmDW0Pt9ZnijfJXJCB8Z/YFR1cRGwEz2QKJByN3EfyL
	 VC3vA4IEpcc808HzdsAlusFbKuibh7eoJys5YMSlulLpLvdomKK7Qti9f9xJQhMqBz
	 wpx/3lURW+Kg7BvI4ytNHDbtHzSZy485nrCQf5kHEm9LIzpzhDPKpX7G1vqyQ5t/6F
	 mOdkvvOqko8WEcs/YxEjKlGW01u0R2O65pZnlfpwdEHjxHAJZVA8RdF6wKYLB/QP3c
	 vfwS4pPK/HHCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA61CF885A
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807235363.1624.845095600218047434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1de9919caca5244291d442211ddc130ea8d32287d1eec43709a1c278c6a5c90
Date: Fri, 04 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728072353
