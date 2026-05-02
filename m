Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D3A2C21F6
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777760854; cv=none; b=nV0PgKfWrWFBaC7aF9HwwpU0M49oAHIrG/Ml/jXnFH655+PSVcLQI1cd6ZITXbTq+7RRQ1LFiFwVgs77oNOzhekrJc1FixyfflJIGzc9zSmWsbDLe7j4yGy22er0cAWOAGcm18LfQr77vzXit1P9cm5vpl6j4s1qMe10Se40QWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777760854; c=relaxed/simple;
	bh=Kyt2CAvJwi6+B8XYv3RknKAt6bu+s1aQ5sU+Zz54BzQ=;
	h=To:Subject:From:Message-Id:Date; b=Hb4qlnVBVTFHfwUdnfSk8Sc7AybvpNjsz2lWYU+zxjKnMVYUXvXlHQr2eIvtS7sbGOj4Fnqw+nnEuYR8o8Sj7RsRHiPbA5gQoX9IzqZcLmpJGfKACy8sWfQeYPxaTjFzeNKDXMdSAD1HOLxzWwZkoqDNKoYq6qTk5fEBbn9FuCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBRSB66g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBRSB66g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63C7C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777760853;
	bh=Kyt2CAvJwi6+B8XYv3RknKAt6bu+s1aQ5sU+Zz54BzQ=;
	h=To:Subject:From:Date:From;
	b=DBRSB66gAcnKUU3anyA1hHUDq+HsPforUENfzM4HIS7fzpmy6zYqXgcgNULklvYEd
	 0wp3Rdre5K4R840RjrOGMfyLas1xjp1Gu2Fie8DV3zNMje1wV8BGeby1gVqjH9eHkv
	 yd4hjvVX97coVyR1LPqg4V+No+YWKKrck6zEpx28utGYd03aLh3lMb40o6kGComE5x
	 Gc+A75TEP4VM9re83U1Tm8m2cG40sFm0zV6+J4W1I2lcFusQXoG2h6S73LQewvAb4N
	 Jhe9jGZsJgiJbZinD+GeGimm/bW3FcekYQiM4+ChjvuLslLYKcO87YiPKVEn93W7PW
	 LkCiXf5Eil8lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A60CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776085368.16278.6372354357784417955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dce6a297f2af54e8a1073dff23009fedf751f6ca0a8c9e8fee2235aa6f65188
Date: Sat, 02 May 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777760853
