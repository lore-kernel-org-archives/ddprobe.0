Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47217339A8
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713895823; cv=none; b=Iv6M2BPwrGgW5EdMhw6tP9VOKIgM74OOpnKGzeqBj713pMnWz1z/SKwPZr6rL1FGBMcQM2nF/KvP/bvlIWEFY1N96SRWRjRlsJxyvukj7CedN1bOqEcMO59glYbEw8ATAmrnr1mRRAKSwE52dMzMVxLvPGUEuRoDZOhfCzxazLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713895823; c=relaxed/simple;
	bh=n8nCpoCa+v5eoQlZyInMNmWsLLIzNGaAPPR6uIdldEQ=;
	h=To:Subject:From:Message-Id:Date; b=Y+diAqbx0vlMbet3TWZvURik6YByP4R7zljzyWUmXupIMy4hsiHu0scMxsttfuqRUkvlsDkwIx0r+X4sGzMNlLz31wIulx+49iwHoTmqhcgzZEVilxXFqHrTxCHhIQ4IYRnj3SLKwGgFIf5S3a7Ejc08dt8rgjsNNLy+Dz3+qRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q44vpE6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q44vpE6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE2EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713895822;
	bh=n8nCpoCa+v5eoQlZyInMNmWsLLIzNGaAPPR6uIdldEQ=;
	h=To:Subject:From:Date:From;
	b=Q44vpE6uWjz5irh/4U0YqSHqX6GGMUfd0Jnhp2PzqLT7iySInBiurDRiBxpID0fj/
	 BuuwSAXossTzwFBR8y3jfn5EtUFpDp7llGZ9ajPOya/10JF3zc9LlZtF6Xw9hiQ7ug
	 PGtufgFMIPWZOI/aOVa4PZ71CjKNMRVRQQUvWnPVggYBXe2rfam/iAR1P6yIPt7KRF
	 OoTD+XOekjUIJUQTvedHWm9lVsfl7my8TBum/0ynhol+jBDZh7NT8mJpiihbHpsA6N
	 k5CQjMoVzHmcMKGbkRvO2w/E3jT+texoQvd5tQzlHioahfYqsjjL1WMuefyjb9ldDF
	 DcsvjPQeWVtsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CD9C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389582279.2854.8674391825737758957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669361a653cf574eced7b28b1a4dfe8684a1e108f86b91b36e3f62314e3e1934
Date: Tue, 23 Apr 2024 18:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713895822
