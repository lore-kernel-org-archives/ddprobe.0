Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333CABA27
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746797395; cv=none; b=okMPwBG5pXIcUukhddxWWi0ukN9T8VNcEny/4Qv4/RZ1kgigxLz5o6cWWGQ+t+xeZ/a2J6C8/r/fBDzlY5NgAQ3Grhc2w97oCnmDXYMvJjmBAQtQxEjIuGD1u+jpgPOhpS4wnckehcvJgGHoqQr7A8SsLyorzrrTwq6lPPqNNKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746797395; c=relaxed/simple;
	bh=iuDzEteUc6H7a5VGDxlkd3g92KBM8l30Ix4MieRn66A=;
	h=To:Subject:From:Message-Id:Date; b=ft6aL3II5mIviu6CRzSlfPp32XZJihlo1fJjtwB28gBbZ3/CfEgdVuURykAbzRb5Hd2CbfpjaFyE2TowSQZxv4QgG4XNOPDlKjNlyajMHxaVpqAUu4UUFbKsw/U6Nvo1ORJt1aHzcVfTxx1V9nqdr4H2LBoEVI8Cl+O2GMWcSSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONdpNDB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONdpNDB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33CCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746797393;
	bh=iuDzEteUc6H7a5VGDxlkd3g92KBM8l30Ix4MieRn66A=;
	h=To:Subject:From:Date:From;
	b=ONdpNDB0wYkhUjaS0qeySTyk82rL+sUsB0IS3T8UGJ2ApoZjZyHFkXj+E5kQdwbmf
	 /vpuKQU3NRn7wGrQbJuv9k1ZvXeqKlqMXFQjqv/VEmalhxK6jD53QygHvzxztcinQp
	 LceFbCIyi0lGOPKx4Vz6R1ifYkXLs0oDX9AlYKSurRzedFHEVEz65x31d+JgRlujUg
	 YiPsV6WPTA95X+dXi+AUsDSRrY4Hfr9F0oEWDsnyyhUjPOu8b7m/oX90cftAxk5x/s
	 BGZSz+SkzrGJluuqQ9M7jDtlpNLdb0d6WVrtXkvmmfw+gOyQsVEQPo1db1b+ZBcpES
	 bOpgkewFoxKkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F484C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679739357.3405.4530877611295111608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0442660887e4b9c62d0e1b6151898c4b930a4dd4130beb1069b12bad036dce6a
Date: Fri, 09 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746797393
