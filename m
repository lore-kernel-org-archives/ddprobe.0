Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203A93B8D48
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765263774; cv=none; b=S+LhBqcumcU8zxcfcxzgAXlhsGMn/4MdvkAg+kUR7mj+FWeZY1ANkG60nL6w3UJBMipIpvQr2MtRa8z5iP67CsMbKo4dmkF/bf8K0ftPePrsckTslB07yd1soDdDs9kC9bZtws1GdlIqwzBPgkPqoc5IuB+UJRrUu7+QyGCOU0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765263774; c=relaxed/simple;
	bh=f+7b52SD6R9Ncn4bgqTeLU7frVrPhiGm07/Lb/kQJxc=;
	h=To:Subject:From:Message-Id:Date; b=ATpy1b52G+ZYX7j3syj9Q6wP8mcoeoJyc/F741CWas4o9qB6YwfjEs3LxMMbnznOaqJYQ9NFg1DUdF2F7B2qiMXdck5f0xXnj7nvlxVLAJkeyaU4pTsVHED7PTz0KpmmmnyNjx5GvOrWqVNtNJ8puPLisbFZsy9lUNwbF9YxE6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMNp14GU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMNp14GU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A221DC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765263773;
	bh=f+7b52SD6R9Ncn4bgqTeLU7frVrPhiGm07/Lb/kQJxc=;
	h=To:Subject:From:Date:From;
	b=fMNp14GUsEzV+GSPOKF9c+/2k8kP0mWPDdAq/MROYBQy3WjPniDa6xoB4sjakKUfs
	 rgaoDxbgtthHqyUVDTEc9IiGapdn+t1mXxcGUR7W02I3PMKQNFQ/Kcmn9igUQJTmjS
	 GfJ2efv1h/Y33iNP7cooxt1E1vyA+5PQua3YOdKBGDdBtVduHLfLQIqXxj6Lr2MDt1
	 ly+PBmfyPzciTa7fisTOmYq+Voxba4ru0PdrVbpWcZg2k9C2iUyybGz4FodT8pAWw6
	 E1wl/Lz0QiOCAJOAtcrHAo+O711jdo6egHqdwiDwER2xHa276M61lbsrrlFtUAWVNt
	 86FhlRi3NcUVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904BFD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526377358.2369.15691622017161122603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9b987261f1c7ec1d65d2c612695f2ca83a76d113aaba7fb0f9bdd05e7d10e9
Date: Tue, 09 Dec 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765263773
