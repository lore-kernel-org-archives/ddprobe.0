Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D2033993
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776564454; cv=none; b=ZWdyNqIGytRf9GApC8FGzh4Z3slGL8nokN5L7dIXgjJ0LBgDiMv67oUgBSgHIgJxhP9nj+bv658/ZEet9chzdbhAqrF/o8+DXUW7YBmF/kvSNkOb82SZY1pVvtqHPmWwB9PTFgxmfdsYUASOjzDMM2YQfWSRx4FRQpjF/QcuBd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776564454; c=relaxed/simple;
	bh=LZQKpelnofNSIesmwe8CReB2PnDD5j0MFQTQeUdwVsk=;
	h=To:Subject:From:Message-Id:Date; b=OxZynG3jU5JyzwZamk4o+ewG4LSSLVqAWIOvtv6gsmYxkoXp4IaIqvP7/u6vqM6tlC9fN8dNZg2oDVJ+5rWkK8qlJ+iQVXV+d5NBYRsN6QvLZ6XUvaZqkgfJYfmEnnakTsPbo6SJRkvwTZpfa/1ssredas3vFovf0XoO/BZdyFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSKeTNSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSKeTNSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E9CC19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776564453;
	bh=LZQKpelnofNSIesmwe8CReB2PnDD5j0MFQTQeUdwVsk=;
	h=To:Subject:From:Date:From;
	b=lSKeTNSOWbbE0JFOyEQR0PXlis+o5jEQwFqkj0s1zfU93va31kri/CzLbMtpVLdso
	 rOD/lxQrvbIMohv0Xw8K+gNsV8t8mxgwloyVK6L7KgfM1MhEOOjwHIAyoBUde/UpMx
	 E9st/4cLUxO83TIQzxkIWLgkhjykJ2VVN1NXqUsswUHgKTKFJJLqAR2Bt3anQLkxST
	 Gpbm9K+Z/HMCcsCaP3wwPg5SbLFOuQaUJoTJgrkdey+HUXS6xCc4qd5ubE4nG9CGJ9
	 IDD5g1UzOvAIQWidXnJtMz/DMAignJWfIrJh5696nFCR1GW8c4fVVvocmgXkQZTKAS
	 iS9cN+V8RNsCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D3F99C98
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656445368.11290.136484831556296186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e822e5c116299e1db385739465f0f6b56e198874cd33858e718aba2cb66bde
Date: Sun, 19 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776564453
