Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5618A1DA23
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743349194; cv=none; b=fTKr1W3/4V6iKl16r39wwBy4b/rU1xYMPvRdV4504Hxxh6ANwQ1UwYpYJYXDuVD4D4QpRdbKh5wQBQzcUimh3Eyjss27YzC5CQhhN+nyWT9UFh3i6JJzQNP848lqJ+mwfPJ9M72EZrkZu3GjRrYklzsJlju7QV5vLouLfkA7bi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743349194; c=relaxed/simple;
	bh=nD+8YeJChD3ztNidmAtKYBOfVKpXtk5WN77ernc4+5Y=;
	h=To:Subject:From:Message-Id:Date; b=aVu2M6FrG2NXtQ/WGU+g+HfaUSamjqNaeqjWIdWd5TBGdvFY6oc9mPrvVOGGuL3xcKweXiB2K3MSKi4O1RK8xn6TQ9DqQApZUIn+lZ0kn3sEs0TGhYxJRvTRRa2P7BmDQqRoQzmHvvAeOC5s79vKH6CvGpeOblVaxGEkqtdVKdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYMPS6Ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYMPS6Ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99F3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743349193;
	bh=nD+8YeJChD3ztNidmAtKYBOfVKpXtk5WN77ernc4+5Y=;
	h=To:Subject:From:Date:From;
	b=WYMPS6Ux/AMK1E6GaJE+eGg/hXLkAhLugJsVmfV5LCRxcViAOehfAJTLMtCyrAzkF
	 CEadCcmOnEFE0u6gVL2Zo51j66s0uvNIMf45u1chfJZ1mIc0+Sl+ENIIMkLPSF8wpN
	 GFx+4mLIUcDXww6QjeWPQYimztXK/fPuWEbmnMUse1tC+8/hfEjz8KoIOCJ8uZHW0Q
	 KA9/8JvGqL/adcUd6CxXBc0AVaMoAyUWBROfC/1f8cYGd0CrPUnGjm8oEMxUzDTu55
	 pbDunZHVqwQbRAqx5lPLJg4hNEEgEIKhNFvEV/vY0zimsMC5s+b//f+E1VH77DfQd3
	 WCJzbYuUjyk/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A307FC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334919364.28086.10434750295089667916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94406be782b3248a40d00db6b17cbc6f578db1f2415961570b0e79444bc70b50
Date: Sun, 30 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743349193
