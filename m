Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300552D323D
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754986194; cv=none; b=Fboupk2QlU3WwE/1ZVSwlFTY0wZ31/pPlu8NRPK/vyqkVUvhpNVkjghe+vIYanHT8dWBwXZCDoAGcIUr+fZZpX7M7wgXi2mqVndkIKG4muukeT0AcYn9wK94ApPykBXvKapEph1jqKbP6aZtpPryviswRQnA3l1BZ6/uiKiVguo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754986194; c=relaxed/simple;
	bh=5etpWX6DxU1iC4Sgq/4jsxesfyiP/qu3O/s+KHA/WQw=;
	h=To:Subject:From:Message-Id:Date; b=fra+LEmk1RetkBQP8HN+LhaMEN3ToQvoSu3vkngzZKbFc1pftBcoxSm1nIz2oZhviK3E5+lEd9LsbCClEFXpnec+hzCbiNORV2lVvu40jTrmTu+WwI4dpWYWUGTeeJkzYx9JNbNT69KFDWy4au/FSSudyPuAdIZehZglYJ1cyi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsJTgV3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsJTgV3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38FFC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754986193;
	bh=5etpWX6DxU1iC4Sgq/4jsxesfyiP/qu3O/s+KHA/WQw=;
	h=To:Subject:From:Date:From;
	b=jsJTgV3cVSeJc7OekgPRx9o8XvHn8ufAL+ZeuqarS033ooyDwfQgH5bIZRShpE5Hj
	 gESZVrOprmJCx2Zj5UEcCFfjY5fq0wxVcI3ccbkMrek4rFBWCOc7LJ7+Kmtry6oVQB
	 EbrirMD9UmPMxqGCzLMcz0PIJR4r3VH5c3Ojy4SEqyoV3KtJYP9za2NqN7fYCF+Og3
	 7MUewoJgDxog/CIhVIgAlpVQw+/Y1bdP13UQsH2KZ3LNrqpcLhtFzPhipFEu9Qzkwj
	 jHwlURyggesclkl27ykgrAEmCZzb8ZDahmsra22I1o5B83JjVOpcAsfnU/7hIVwxmP
	 bggUjYVHTbajA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F198C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498619357.7857.16084257411558697373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b3747c37fded14cfdec50094e518e8369b4cab2b621fc08cb6cc8c79f1a07b
Date: Tue, 12 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754986193
