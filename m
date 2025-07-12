Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E387EED7
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752278994; cv=none; b=m9TEI3QWnmkHUiUlX2fMoSNnBvY80YKXAlf2971jHL2zJyH1TlDfQ7QFaEByn1f6Gg3z4znW26NT8iZMgUIdNlEl3bB0QPA5AoWldqqBNJuMl/AJazIKqXb0OEOEMDPtYzwzExoSuEfkOloDiB/nZb6ycAMBzhS/O/H5wCl9Pxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752278994; c=relaxed/simple;
	bh=8ZlMoZcJ5lbZp9CW7IXDvUxg1ASsW1kqEP4sS9Qh2q0=;
	h=To:Subject:From:Message-Id:Date; b=kpxu+4xesCP7LdcIyjMyawcKMbKaxcZ3x/KT4djhu/seiDed6gOZwchZcpb/YBvUOjMHLJgyEwHksFwRRDy37QmTkAQFJOX9/qBInfwdIHevwxbbOUzb2Mdixg181/UuMZUy18yUHyPWlQAv1DPWFNwI0rlMt/lEzdhNQTONeOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHy2tVtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHy2tVtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1529C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752278993;
	bh=8ZlMoZcJ5lbZp9CW7IXDvUxg1ASsW1kqEP4sS9Qh2q0=;
	h=To:Subject:From:Date:From;
	b=HHy2tVtzM2qBr/ZUExEuz9sFalejLAVISs0FSzkUGEV+YrHxfx3Ve/IJ9SP5/YbL6
	 gssT9MIOFHn6yREncgAHE1B6U8vK2YuiwECCImCXHh60N0pIWfk5MQ+7uuN5EYxkdu
	 q/YLkmQeDgF4yWZ7DV4NJSyYl0MElwgFp1zUOVQ9dCqACKb2g2NGMhwixHgZ5YAzYV
	 U5vFPZEZ6EVWTrK2BTW5ckaKOKyuEaWV0UNNFwwQ0V0XwZDM3p7Ba9f9rnZzbN+zdv
	 sIpuOZEa0rX5RaZQcJnHBG24OSP3Zc5XzOuDlIMMz1iVbOYwC2Aczs0W2FM9EB5iHF
	 SNB78koC8kadQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F24C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227899357.14298.10387328459565462547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9fef2e8c52878b0e6d7ee58ab542b138784e59c98a736a4e78a90738b25587
Date: Sat, 12 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752278993
