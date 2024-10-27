Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149F4F9E6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730012754; cv=none; b=ob12q2kfKP0RHFBHSBTwwX6p1gaBZCodk0Tj79v03DOkLTqv1VwSP0tPRRHpQBtxIAwK80MHeTihC6ZoJADN24hHTB7ilUrwWUSFPyVKBoL+q4N9ll2pVh5AsJ5yUDxsHjms9aKV5/kjXc8XlU8kz2o+H2ygEF8j6E5ITzd4gas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730012754; c=relaxed/simple;
	bh=duXxUDq4b9ftUdRG6Ky1lULpCCaSJ1SpGM7dvWLWrSE=;
	h=To:Subject:From:Message-Id:Date; b=cYZB13MNEZBYuDjIQhkRzdIsMFyZzjbMOBzbxA/K4noKUB2q71nYBMByCyt7RYw9ZT4jxaeG5ycmEYRPiyQdEMrd5t+UjA7LdxbOXFv5YhUsT/c5IctLi1fCODe+U+toYrhyDF/YFG43vRubJAikE70Q6ZGsO5d4S4eBX6+Q2AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHhwI4Pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHhwI4Pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54F3C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730012753;
	bh=duXxUDq4b9ftUdRG6Ky1lULpCCaSJ1SpGM7dvWLWrSE=;
	h=To:Subject:From:Date:From;
	b=qHhwI4Pv/A4VEAK7wXWCnt9tgWb6sMX3W/3Shfl0pwF553FK+JGwluru0j7GXOW2e
	 2kcezrhGKSuQWnh6hZwopgINGaqlMSpoy9yWkJo7lifAkmF3p5eVrrS2LUHXf75ncN
	 XJMhs9RcE1bqFF+Ve/FiP9w0J1I1ki5Jb49iKvuvqJFlim7uHTc58tLs5qMZmeybLs
	 BOdJUmOL306cD5vrd/snSq+co3lJ8EF9UZIYyd0XvSFh9O1v9oPkFAJpP0Cy3OkWKx
	 1B7zNcn6jjOz4bKskpYxMbzIcpFaLBNJpEegPKuaLJ8Ky6LsNWR2ZxF3Wf5DIaK2z6
	 J7gE+JoSEyaWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945A5D1039E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173001275358.21676.12812273703183149929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b62a92dcfd8917798af5f45902784a302103e37d73082244ab9b34cbb80270d
Date: Sun, 27 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730012753
