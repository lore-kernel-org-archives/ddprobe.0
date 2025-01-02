Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE24634
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735779354; cv=none; b=MzEkk0xxf5SD8qKA6GgxHerW1aL3+ktrJ1RRdlaO3FPcOrgXo0F0/cxzGNc6ZzUD8msdVKEfkrZu5bXTTuw/P0RY7YytD5OGb1FYhO3Ng+EL71GIIuBAljbD1nGbAyTLIH05bbYXOPz2AyU0TDT0myH3Gyr+y7dgFpMjOsywzzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735779354; c=relaxed/simple;
	bh=uI2Qq3DZbqjvZ4gbsqDsrAjlLssVXJ7e4I0AexHGz2Q=;
	h=To:Subject:From:Message-Id:Date; b=R1mipVydKWGjPDyB9/LjugyQbUeHD9O/8Evx4L0Dcw+fk19+p2kmjY1Nyn2xWdA1namx0FSxhnV0mjM4S1RFQY+mgR7S7S7e9E6fsAlXdSYdpsIIHeXBx3VYNZBZq8B+sWRX8bxocy26MtyEQuVxwfDiH9g96msEqjGgMhdhsr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkULWT8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkULWT8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7898C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735779353;
	bh=uI2Qq3DZbqjvZ4gbsqDsrAjlLssVXJ7e4I0AexHGz2Q=;
	h=To:Subject:From:Date:From;
	b=CkULWT8L33O4kkSxqkw48xQPRGy7u14Seqr36cjZkOiJJwn/HL0pa2ASngwoBCpuo
	 biLXZ6EyiDByHhnKCAskBldlbOtIhpakVcdWG9Ic8UQxKIv9Phfet5EOSvbVd5Z140
	 Q8Wsr+5ZafpXDoUFQQem+iW5MfwfQcL8kwwNp23HPZXhcgtZ0GtXXmWnJvD9Hdhp3m
	 QHaUQV43UZCj+3ZCyU3Vd9uoh2OvlmeTPY58gAt7lPBb383l0q38BpycTlr2e88Kqn
	 0BFOPbHNayIiZ4r8utBAqjojW6H0zuX9VewLTKTSCnGburz77BEYUIJzAdnJRr5/Io
	 c/r1Ny1hy/W9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9193AE7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577935357.960.1521327018593801624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ef11e857b1e956036d68c62c719b3a0240084ba909a69560d09d193a48338b
Date: Thu, 02 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735779353
