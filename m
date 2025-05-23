Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BC02951A7
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748009994; cv=none; b=cMCMgaRlgo2KYxXUxW86qmlnqjKXMYhZhL8vTWUNK5FSqOqBTKRHT8+JpAfuRQgvuKB4ExtzAAABkmv/FzPpg+J0N9vYdRVFSIlHKcF2nYLxo/KyFDsrqNjX1wwaKvdMZUh3Hyqv8Sb8nR4vIPrrHE4QbaN84XZwNj80pF2Pu3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748009994; c=relaxed/simple;
	bh=P0V+bAa2umbh7KIpmd8qTZBOsgS3JqClRoDH7TtVE4s=;
	h=To:Subject:From:Message-Id:Date; b=epy0GAM9xem5Fk72bxRSDmqdVSwmOR4JbqEb7QDlF82fEXYZb7DjRACUcBpWe29Ja/rPrS1PAvUneVtQvZGm/sICCFoCAqYShRsszqcJ0QzQB7k2xecUDFYuFbNCN93+zGEZwYDMPfFuHFMQcph5n3mqbaNKTEN+XhWyS0+emrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKXAzKod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKXAzKod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A405AC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748009993;
	bh=P0V+bAa2umbh7KIpmd8qTZBOsgS3JqClRoDH7TtVE4s=;
	h=To:Subject:From:Date:From;
	b=sKXAzKodyUUsDdO3BOWV5YUeADK5BgBX/XiLpqTxfBY7mEXaS8tTS5OOuS21ftJN2
	 DruDn3Ze+BM62aHN9wX9klcNG1SfyNqgjJ0EIlGijdhEZghD/UZdMyjh2wbMkvwxA1
	 rZx2v8Ap4Mo2d/6dzayOMNfpYpvId9zK8+x1cVBnSSBpiYqo2HyiawlPlCRP9bbXqT
	 Y8MTaPHfXnwUuVOTE2tpvBT/uwnVtEMEYNfSqhkiYJ2rtDzUsabFSBaIigLoVXbLlZ
	 z/v+0qYo8YNkk/mAw+ITugnnRR8TYlWoVj9tPONKuZGmieexN1vcFvFs3QQye+scuN
	 CV6cgHnXbuu7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90195C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800999358.29052.14715368845962477187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4456544f386aa95bad44b7282964d0b4ac2eb2f2148dc9858c87ea19994810f
Date: Fri, 23 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748009993
