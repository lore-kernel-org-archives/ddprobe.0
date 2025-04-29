Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D577246791
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745971194; cv=none; b=ImHz0zcAeB/jFa2TUCzPeGt84g/axQ0n7eCUwh5Z+dLbNSnpfvidfxMwzRMbRcJXoLkmjByIo+BOb46ydFlHuJTjKuIX5DMS5IOld+5ty0szrSBaQDSfzHrf20wWpjQ60Zv1/jxVS79wZWzte+tZ/yx5jwXx6ApAlnqGOum94wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745971194; c=relaxed/simple;
	bh=y3UuZStz7Vwb99u2p3B7wCS3cS7MsLAHpGpjW7YZZZk=;
	h=To:Subject:From:Message-Id:Date; b=W2XQYYlFB/XvDdY/LlJPuNBLoyGsNIA3xxLZ8dWLQTTenhhauqNfIPm+qYHpWowUhZFqz/WjnAVBBs7zUjibXWeXL2utGA85zxIbKa9/ulPgVwG3cn85eRfPn3rYzuwZpjfQPxb+SEcjS437bjbPJ3LARytj+8u5jA+S0JxvH3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSscQVcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSscQVcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF85C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745971193;
	bh=y3UuZStz7Vwb99u2p3B7wCS3cS7MsLAHpGpjW7YZZZk=;
	h=To:Subject:From:Date:From;
	b=FSscQVcdMENcrGEEwcd/EMXSEl4Q8kU+TVU2OEs/xp2A1v2f4WML4d9Q7BaPDC+Nn
	 7sJcuj+W4vVr3H8JSbS4YirV5obexdlZUGFBThxzledOejMzeZIkvSwRwPE2dj/9Kw
	 NfebCA6jGvGkIR5azyp02Ug9nM6VXpSGlomXcdWeVy0NNyScqoinEZrRChApTmDSiH
	 ZHNUlpJfpYpIpfMRy8bfj5mmy5FS/dAIzp+BEjTF8nz0Cv8vcGAUd3jo2N5U/qfmkP
	 ZieHfVM/65VwK9cVj5eA4G3fOl80OLEFnL7T6BDiJ+YtiWopTFiDAyShHA8bQ1PgKy
	 eAg2wYCpNVO8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E14FC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597119357.24871.7538598190345097544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab1290e3345c3d0e5528cb88091a6fd9edef47ba8c769818928300943f555de
Date: Tue, 29 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745971193
