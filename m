Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B60348C70
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781280994; cv=none; b=IWQ6fFVlcgE8IBLADbTP1NespveQQjWEFR2kYX9VBa/aX7RNaylKnqwWbDnZBtpHSF9LEB3sb7ATpm5gz2GWElNW8HHMdzDGawYloa7T3X4PEtjLlv+GRxJPbtQwNNp7G/H+QIUWtsJSGjQ96llCN31+j5f+NFKsU8nEpQKeD2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781280994; c=relaxed/simple;
	bh=tRNX7TX9QUd8ECxnqUc9JKadkKvJfuO7nmxHGlsgSJg=;
	h=To:Subject:From:Message-Id:Date; b=T7HHz8QVmLi69Nq7U9xP54rFMsDomfHp9ACWpYb/Qxy92oQbqY0jnqQmIWxjgnFkt5AuLbCn5A73FA8P8hMA5Gts3mlvd99lF2upeMtQQkZ+4CbvT9ZqjRMoIhvz/X9A44B1rshAi7Ux8V5e+1jU0v90dQut3UQTvZSNwiRalYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUtBsPPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUtBsPPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C594DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781280993;
	bh=tRNX7TX9QUd8ECxnqUc9JKadkKvJfuO7nmxHGlsgSJg=;
	h=To:Subject:From:Date:From;
	b=aUtBsPPIP3LLMI/YnipvIky80xUrHOD8Q1UPjFcPz6BBVv+/kScCDuXjJYJBPP+Ya
	 1AMmkus+XFlOl3WfOUtxYd2sRT67pIc32mWk0NTixM2NA4Wxhv7Iz4IwmL82dQCFh3
	 od2dMisMqUavQSreOoq0yOci2eeBQuq/rQh07N9Lx+JjKWASlB9zfsE43KDIhPZRoA
	 F5dCO6Vv6uKk23AWN9TNlC5UNOTGjHf+J07udfq9CUzvbNm9b9kajuOQssa4FOhLxl
	 KdwqtDSC7LDFQNIPGZD0MY9LdED/mzfirQdXSK2BERC3X0lMDwyaMNcCr9oylASlCr
	 oW0XTE4glgTfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CFBCD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128099367.13769.12591563646575556604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1742c831b6af7d927792ee5b36aa9d61605a02a1564ad994a262a9f9dcf07f
Date: Fri, 12 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781280993
