Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8C2173
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754168994; cv=none; b=BneJi6mQF7AgJ5LtLzjnLB4d+WQm1Jm2YFUfRryAoky26fX9z+kXpFnS2cbG/6OhUc8Q9LVJ9RbV5aFof43rUTZxA+ErpcWHbSsOVYbEAovgx90fsHlADFOVtYUdqqvBYjK952+qymEfS/IaLtzFb7D/jwseneJfyR4QCtIdPlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754168994; c=relaxed/simple;
	bh=cVTi4mf0NwHCA4hGPJlQ2nboSlgyDURX62BBUVTPqKc=;
	h=To:Subject:From:Message-Id:Date; b=i7tqgF1cLM/SZabBOVP+YHpj/JUlWtI2MkBnPzgs75YSeUl/OuAZcjnAoeFn8sSMr/WRM3qLOXrB42IsJmhdY6DVR3QRwat6cdMeK2iTmbL3xb3RH0mCSHezib9g7fpVPvP9z571W2QdiCFtqTV2dx0UEcNyvFfJjSKNmyT3ub0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFm/g3Yd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFm/g3Yd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAFFC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754168993;
	bh=cVTi4mf0NwHCA4hGPJlQ2nboSlgyDURX62BBUVTPqKc=;
	h=To:Subject:From:Date:From;
	b=sFm/g3Yd2J37jm2eZ4tuBZeZCyMUGHtWQxobsBWGkrGmypmHdyajgI0RJGeeWyUnA
	 MmVciiNgiE6IlCj76/wU4aLPjZFC+qJgYaCeAfK8muiMmmnYNSh1aA4Ln56Ir1lE5a
	 V3HFe2vrwY3xSLG7svmrxk1PJ9zZdZXpTgHLSX+mpkXbGWUJtwK77Ct7CnuZmjNTzT
	 rc2cHUVTrnoGzGcnCpfpTrjk9ns2EgpbhyuzO1vBR/TDcFLMtPp1z6x3uMShtSKUKd
	 +20KSAmWAzCLdn+PglrYokEq9H0tdp57dB4O/yHN1mldZ6E48tdQw0OqHyWaD/pzrg
	 kpUTQCK4B462g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A4FC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416899357.3399.18415485766124868777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1952f4c7a6906acb5de7eed6899177eebf3e11a40a1a4e49c75fc8c14fa94c64
Date: Sat, 02 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754168993
