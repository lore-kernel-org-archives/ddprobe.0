Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECC7309EF2
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783962514; cv=none; b=V9drjLZTkYrPIXB2Dv0u6fC0PJSOzwsULxN+wLSMEOxdB6RcSOKNaQqVpDMPC0wsE3ZWS9JUqTbwSZKEzIExsalyzxiEBwrcajMmz8qYoCJfadkC/76ils2+5TX3gnRXAdJwA9k33FClirlXSgdNmSNYtrHIjdEoz8yX+qrmKfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783962514; c=relaxed/simple;
	bh=wsjZ/3bzNtFYU38GBruT58Z67OXB7CLQZPnyVnSQ2LQ=;
	h=To:Subject:From:Message-Id:Date; b=H7VJx2P2xNmhDiYJMLUP9272/+DqOmYgxKcio8OCTfrXGS34h5bK0r7mK5f/nV2njz2pi2ULcKqctJs7aXZbeb3S1lLsDfWwWG9XVj6sQQy/kKJJgRywY6+Dhn6rVOmYHfFpk3S15hUe5j5Tm6mCG96m9T+vxGUZ/r9DRybDEds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNSEdwpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNSEdwpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDB6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783962513;
	bh=wsjZ/3bzNtFYU38GBruT58Z67OXB7CLQZPnyVnSQ2LQ=;
	h=To:Subject:From:Date:From;
	b=jNSEdwpbwqO3VKQ9rNsw35KnjpmYi2WtJFDz8TY+NtZ69T4hzM6nKPIIXtDaHfVl4
	 SKej9byH1VxWM41V9n4iN8mQSXo7X+l+9U2fw558bvPhPOvraL/XO3HHbEMM1Et8gA
	 1T7ldDXU2Auj43yUG/GYsblSh3e2jJH95gB/ksZkLuzgD7fbyqEqvvuLDOZE0+Cc81
	 VLj4/twitzTqI4DtT3XzS29UK4as8ukIWhYEhAYH8sMQhI219UtfezVTQ/R8g8AhsB
	 qOcOV5Ar8AkuPDQH5tbceF+655otAzel4gVmPSNU/lrKp4n8BxUvIDKXzBq7nUL1n+
	 54ezjMGHJqrJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAD9C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396251369.29713.6916982446671151818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b67dfa7c2fdfaf6f758455544457a2b04a558ba7a5da69d4eff9d75a764812b
Date: Mon, 13 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783962513
