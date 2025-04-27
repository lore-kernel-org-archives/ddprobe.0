Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22E4288B1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745720993; cv=none; b=fXyJuXKaIKEiq/LJii8B5kVA47fG8KFdn6pAKPkIl4TabxOT+VFfTq/KA7CSxql9UW/KE+rCrBz3onZ2BsrNJfaMFLLEH7VwQBtuaZ5t3wnimMVoSrZTzhOxl30ont/cUNNmAAG/9S5jpyV8UxCFJrMuwZ9QS4r6BDxfjes3LVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745720993; c=relaxed/simple;
	bh=Lm3C2T5CSNbo9OHfd55PxnGEg94iXMLujlV+EIPuDy4=;
	h=To:Subject:From:Message-Id:Date; b=CQ4O6cDP8mn/itX8iOAqBTH2uaFDIR+5QWBvwJMye4DLqKSSTaCSn6Jb46fc+dbW0LPc9w9vmiDLzScZtfb9uvkbrSBVdbydcw1yWo79XhwjKtigga5B0kSeVVJK1gQgkSTmlyNcGp6iUMT+CDTnSSDPbCVa1Y9AtkzmUC386vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aszj+eXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aszj+eXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A633DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745720993;
	bh=Lm3C2T5CSNbo9OHfd55PxnGEg94iXMLujlV+EIPuDy4=;
	h=To:Subject:From:Date:From;
	b=Aszj+eXgNV3+sw0LeB2lTqORsvkjbEJA9NR8dyLwdIVp7fulTzYCFSBoRiLwJXP4r
	 shR6mqirHRn/jueOUaVK0jhAaWr4SA/wtfU7GTgZNoBiIemNhaSRkAwQ6X/vfo3qzu
	 FBO/qY0wQJ5//G+xpYpV3BaNx7l8yHriqSwTU33Pq7QRKr7/o6/a7l1rgCEK0HeP+N
	 fQFdl0AZdnY+/ztKd411EWt3wFqDLenoHmnTmKF2VEr6Z8RbTs9Uqwt3qqtfUP1lvp
	 IcnNp+l0Z3RNuGq6e9dAaeHXimY27KEeNMXJdGf6A9UzPvFszmagnOx8IUvI9PWnMt
	 wrIHgf/d2f4MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92120C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572099357.7720.11173344166293907165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5d4767ce500fae930b9df7093ed56239d2aae74c2952029dd15186f4d1ecfc
Date: Sun, 27 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745720993
