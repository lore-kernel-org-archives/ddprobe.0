Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C35427706
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743697795; cv=none; b=Nla52FzkVQi3e78IZcmw0PpPFm3MVqzNHWZMsKlF1DOFUu6ywc4cSHOtotcRhF6mNB1RHVddlm7IqbZNIF27V6mHwDMLKsLjg2TNxp8LCCGXFHvbrwcgDgalpOQ9pTRqcIkr7xmUVk1vbKd53snJ8y8KQzfZ6gQYEREVVpdWR/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743697795; c=relaxed/simple;
	bh=K1ZLgpAr1CHdzTAuqJFcmRvtb0iI71RzDhV6do+aVfY=;
	h=To:Subject:From:Message-Id:Date; b=qCjL3Gvtu0Kf92HkSGs1hQp7ppcRTlC2n9UB7607JuMF6qsiz2e8ozly3T/neMWCoOD9OA56FjDrzoc2hzkTkeSQkNTRKSy1rWPLHQVtMM/8s9f9Y3f56oS8VwvMnfrEWGCLRvTiScgJ9tsvZpt/N8XJV9pReM/DwOdNxE8yx2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcFFqhaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcFFqhaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70FFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743697793;
	bh=K1ZLgpAr1CHdzTAuqJFcmRvtb0iI71RzDhV6do+aVfY=;
	h=To:Subject:From:Date:From;
	b=jcFFqhaOpFCPkjeZCzbuH71vqm9mHWUsYRSo1O62FgGYSJoSrEQDME8NxG1Z6JWJf
	 dcfpgEUvcBpG43Vb2zO/gAlrbTVhJULnMbEwH0K620qBIcEb83RDQ4zSxUCleFqlok
	 7FaGxxJrv824GteUdQ2rglufiyPrrP+2WIuaBgwb4DhTF0qQLg6tlA+5kb9gd1xD1e
	 nKxkF/S5ftoPGnuwEQwz5Y9ZzLiNgZLHPuNAnV0r2e6KdM8kDNhfJ0M0nwsl11G9nQ
	 virK17bVBzRIJ1lrQRnICq3V517bBnrg4fier0TPLAgG4+Oj4vnTv9eh6nUJgeLYbb
	 VqNNq+kz5kKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D4C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174369779359.7012.9615851506283336740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ad9c62609dd65bb3ffc3a1d91c8c0de10b8720018a9d8b1ed0ac58b68d832a
Date: Thu, 03 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743697793
