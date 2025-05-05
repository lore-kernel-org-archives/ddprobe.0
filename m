Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D071E29CB3F
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746485394; cv=none; b=loGiTxC3L64XmK6BdmxV+fRlZfurQeypejhoA10o41COXi9he+nKe369lBwaKXdvWw9oYvwpfLzN2AtVGlxlHyDDqI2G2d1KczjN9TUTqZBUmEzNwUv8Eb7mhh+MaXTBHbl9wRw5wQpx2uFd1fVuUEU5Hk8jnXI8WOwIWnnQnT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746485394; c=relaxed/simple;
	bh=pXFFseIq69V3XqnFwIhkMM3HTEgN+dcNXmozEV4FzQg=;
	h=To:Subject:From:Message-Id:Date; b=iICTNnsIsdTj1fI25KAkyTZcsz1o1TIzVs7DdgyYfphF7uDkk/oQt/vIgtCIQWulMlMV5l301exrd2+bH/FhL/Dkm+US0u/DlLHsqF80ZYKh0qO8EgOu0VFt/WeGbRzacZrw3EQqEk1SWYEd4unIKG+wCf0Vn1rVHtC/vBc7N5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHikAxrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHikAxrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22A7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746485393;
	bh=pXFFseIq69V3XqnFwIhkMM3HTEgN+dcNXmozEV4FzQg=;
	h=To:Subject:From:Date:From;
	b=gHikAxrqrRmkNS8QD3hrEMxPFvvLDyxLqpLE369DAinW0ya9Lxn9PfWBnxEl44Kl7
	 LVXwohpVqQ2OU6mnCIeV0gPhgJuUsAb9zOrxrmJ79MP8Zhks75sugUsEwRajPbLZLp
	 QJnXUjaRr8cgyX/GaiUaNIBHajFAvsfgK4OJIpx0e57Do0GBNafgBOHcd7gd+Cz7Nl
	 h5rpdQ+Qp9DbPMUHq+ZdCia8C0c0tJIHDSQjx9XJ+kOGR9Fe48Y5Nbs7PEXsU4vRby
	 eeZhyPOJQn0WjfHdFsN9P2IUzStJQwk8CjsjvG8jnhJkLtRXZdiXy7ID5gUPNThP6z
	 A0fepzoZgIMjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D47AC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648539363.29570.1420549832562223472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3e289f928b7177e4112bf761b9223d1d6fe9b45cf01c99963b32ca31c51d83
Date: Mon, 05 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746485393
