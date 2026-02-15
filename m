Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091D213AA2F
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771169694; cv=none; b=PeVCG/oYLUFzsAh57Uan+vcTMOiGUcNExBY0tIhnF5sNl0xJpkzyfQr4fFCl/OtdQM5Gl7DcqdboK22Bdmb/G9FRZcihhbQYK3S9zzOxJoytWQA+AuRb4Jgx0uCuqGHzCNe92EKTMmJv6kWLRZfCwLPq7+oDdaF93RSmmYagvFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771169694; c=relaxed/simple;
	bh=GgC2xCWN5V2MvftUVjPp5jufvL+MmZoFOgWL8Qth6/A=;
	h=To:Subject:From:Message-Id:Date; b=oCcy06tJt1GqGeHUAPp8/Fj8+SBpwl0iyeaN9slYfqJvx+YU7EV7XhksJB9xcJofpv3eWl3RxTF7DJyirWiXKmnCkor4hd5bwexNzgmmnnosuoSN36C/Zk+Zu/DSsv5zrYRw+g7ig6qixTqey232WfKBcJ3ZO1XAEmiRfwtges4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJ7+zzut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJ7+zzut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7200C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771169693;
	bh=GgC2xCWN5V2MvftUVjPp5jufvL+MmZoFOgWL8Qth6/A=;
	h=To:Subject:From:Date:From;
	b=SJ7+zzutihqYA5SB9MgqPbJF+tsgD3BX/1jzzaCRLbbiiY9A2VdgttVACU9cI3JOb
	 9FHpSwWFlN6htKvTXK2qTUWE2sl0CxxrlbGWvHRvKMfB2KUuDnrjNTgnSABa/qaiGr
	 soolysyt3wwEyx7VR+ATgszgvb9EaQ5P6PepuhxGuhJmw6/k5vh592sAJsoKrOierM
	 Lom+52w/9I4xzPY8pzvwNKhEv09jNa1Fo3jNCLiE6UFbjQaM6fvg71KmiQQxW0yohB
	 kDFLC5uTkWWPWVDckLRWRnB+Y2l+yby586rnnoQkbuXFxkgsM/bgwu36kA91AtfF6P
	 jeV26+/zSmGDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9385FEF586E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116969359.22751.9344736386740726764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121cb0ea8be96c54faab2446e31fe0510984f3ca00363224207f17a680b5f5cb
Date: Sun, 15 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771169693
