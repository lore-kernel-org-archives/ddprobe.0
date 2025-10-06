Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4906A2C235E
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759772994; cv=none; b=aQf6bgAa7Ld+WbNTjUBcl4ijJnd3Jg29/RGOo4Pr90uu4hcKYQcC1tNndmDjFZq2tvDHTtc7FkhWJJVvDkqixWlmu5Au7agKH6ZArReCHKGGmsWIDHRDIt2q2tHqoTEc15sQAW/ezGh6GmHyXVZ8HCXgUj5TGZC5PdLewY7UfHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759772994; c=relaxed/simple;
	bh=HFFW0t4zGzCWYTtzZsZ3+RxnnkhRzkJGtYt1YA4hRD4=;
	h=To:Subject:From:Message-Id:Date; b=nYtcCxwKryFxzKWEuJcUlF7wlrxHx2IqSGDsKZFl7/NyyCN33P3X8Ojw0y1Ex85Ax7Z8VO29OatTpc8/GCe+OLqgmbcT9zVdTefloVrpDu1aVYo2T/Wwgnr7A/WtF0uJ1IyOhsGt8YOB9179ae8QKM/fVQV+Bwnxy8YoCUMlhLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaDdIXcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaDdIXcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A514DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759772993;
	bh=HFFW0t4zGzCWYTtzZsZ3+RxnnkhRzkJGtYt1YA4hRD4=;
	h=To:Subject:From:Date:From;
	b=kaDdIXcMWh3Yvwb/lR8t934d2UoC7cj5h+j7lIZXMGbReaGK5Kk+o+WvKMrbg/4Ea
	 +MKe7kY+37n5wyINk71GSyTTtULRxriAorxqt65/U7vjxY0/whGNj/wG27hBezqZ4s
	 v836Q5nmNybwUmOS/CIhy4pqNNP9f7aMAUrSzIWgOJNuNlI7oIaY2CQ2jeumVrfUyR
	 VK9hShC7d+wF93I5mEFPSa92tIjCn28zbnzQKkL0UvwsMtuIjyZNaXmwD0XxVzigG8
	 V1BFPQTHFnNsboIZXVIPug5WhpYFmDuU9fYNmH5K3T08EM1B1CR5vecYEN2rNTfLCl
	 SstFQTh2IbloQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC6CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977299358.18896.11842700601887956576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee73c7a5741f37d7224d4ddfb64f1127d9a46fe2809d54b5086df7b57f72528b
Date: Mon, 06 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759772993
