Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFBE41F236B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737471953; cv=none; b=d410Nl5flH+qKM02eSpCnCeLfYKFqv+2iHBAgaxab3tvG8leTnEiItrXy5/ZFqtN8GCNHll6K5tSDX119Gv1n8H+ntq69cMArgu0y9AZfCz5CqzcjE0ZIxNLZ9BZNjg5CDU9I4DosvGjawqbAk0iw00JROgwFgS9T2G4Nv/OdEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737471953; c=relaxed/simple;
	bh=CXlPAVVX0nKlPiTIVUp3smhYJLKXBoJtY549+QnHpwo=;
	h=To:Subject:From:Message-Id:Date; b=g40aWVMY0Wia3bvYmb5x7QTuDSefQReGwrJRH55rB5xLOfZEjPpbtRQjEu9Iu8l4sOhDaEEaWdOmZGrRYFtpjCIpmHq/PQVJoghF0jw6yobw4fyivfJib5Yh/kG+oFt/a0vRxeKSiDpIApIZL9jDutKisgr6Spnl8NgDhi703NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apX+9vHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apX+9vHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4831C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737471953;
	bh=CXlPAVVX0nKlPiTIVUp3smhYJLKXBoJtY549+QnHpwo=;
	h=To:Subject:From:Date:From;
	b=apX+9vHbd/AJkQkSHDTwsjPYBWH+lGZlbcqCm+GSt5Vk1hFLnG2w89g1aw62gxSyS
	 uFGBvuP5B7L6VT36yvD9xbb53H7Circu2mZpMHMs1HAMTYQxEVWzRuY4+/++OQAEEI
	 og/UCfVPQMTMI1awSmN0G6Bsk3oKs14ZOAtLBnFjoTj+mf/RB8L/9UDarXrDJ0yENZ
	 odU/AU/Nd4FM6qIG8YWNSDwN2Ot4dnhFjZa9k3kZjJWKzaY5IGE5M1F577k5uHB4FR
	 QPMFAt0mD5YSZjFw9BTT4swuVUSXQEW+sJB1SCykpqxvpengoOpP0ao4L3bc/bHmwc
	 ELpRzE4KwCEkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD6C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173747195360.2202.13542358068928004096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93866b7bc7c9bf87b1cf68475b71f880b147c63e709897144ccd81f9b2b527df
Date: Tue, 21 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737471953
