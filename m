Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5AC3FFD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765152774; cv=none; b=Yom/rIj2BFSJuhB7lva5skU2mNGBJJN6jMxtBxTqOuXNVx5UaZnNJoe+yV05YR6uIX/EUoGhFxxNyWMXRWgZpoAmfwDK4Zg4+5qS82tAlnSWyQt8VHKCyMfcqeKt2UFyRW5T9Q0NaxNqpdqkMVy0VTnTHK3LQehTBsJtDi/OnnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765152774; c=relaxed/simple;
	bh=R4yEyFCVd8HN/2B1Q9I35g46lcwHdUbUmF8VFsIguqw=;
	h=To:Subject:From:Message-Id:Date; b=EnqNP4TjgSfN2BinJAFgeExaS15JCRuJTK+tZV7/Pac1uDlQYdzBDTtsoIO+hsPx5prFGQiKVWGjJFo+S0qF1V5Hht02XDaiyDvbX4bPZDfoFcBeWO2/KjqtwT22mKoLdrGWpIQmcA8QjfQG2rvPckMbTe4FXHxND7t1wUlC3QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZJYQFEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZJYQFEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA13BC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765152773;
	bh=R4yEyFCVd8HN/2B1Q9I35g46lcwHdUbUmF8VFsIguqw=;
	h=To:Subject:From:Date:From;
	b=EZJYQFEH/h4tlYeqr0SWhYYZp32kz8RjGm0i8Znrmh5K3JikvETApYTdpjU1o2GfL
	 g8n0hwYSxJjZduHvmtW5fYZ1UO8fBITMjMl7mIsfELTrTTUMhzjVj7JNZ2k/xTUM1M
	 J3rzHvwNVjUzYpfAgFsEkjJKnKEPijGDxmodfAIjIdzY/LqKvWZYwKk2HZ3Pk15M05
	 inauRq5YWmPOKsPZXb83c9VxdiBBXg877y75gDRHKoRof+UeFUfYso7qMrFlnOasZE
	 QP+pzkfTUE0Yw3Yv+XxJSPU70D8v0gWkWdGygeMI74x9D3eJ40tEfQT4cnAjzJ4DQw
	 21Ck7RpNLaQAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DF8D1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515277358.1308.1803556435440886868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252305cad5a2621492b81eef994f2fafc2a13608f10505ada029e7bde13c774d
Date: Mon, 08 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765152773
