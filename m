Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D37D1FCF7D
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741957134; cv=none; b=ZD0UMdJa5Yz87tuv+DcyitsMe8rBU/aVUA+HdY6Hj5ptwrMJJ7itIrNuHJP4GNRHEIYUGmnO3NnhiswXAw+G4bgaOnKwy147euIkId9NqPD025UUzqI3IYghYEj+mRgLPVJEIMPm9ncd3sqz6PqvGSNk26kzfgbt93MCTGsptiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741957134; c=relaxed/simple;
	bh=0qnyJKrvOSi6LQKyCQMmhLFWcANuBGWjtSxwdHj9LJs=;
	h=To:Subject:From:Message-Id:Date; b=sSY3qO+dpBeZdEvgtT3iiaK1Jr1dtObIXuaS2viB14LSHdflIILUDQR0Roje6dynQeLsf2LzOENV7j1hm78Cr9GHdHhJzIWyTNgy18DuRivxILnyie0bliza3ovY7RzBTaq8AL91B8N7Rg0Z3pi9QN5Lx9wOBowgXeIC2YIYNaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuPfoV0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuPfoV0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BACC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741957133;
	bh=0qnyJKrvOSi6LQKyCQMmhLFWcANuBGWjtSxwdHj9LJs=;
	h=To:Subject:From:Date:From;
	b=AuPfoV0eOcLAALCuIgBMfLCjQZySZKT2yyHmMVbrKPN/pq/Jw5DzQH3fAo2SQ69n4
	 7u8MUpUuP5/O9UUl5ncanN/iv0ZBxyqDna9XLrn73m8xloFfuXhkF5Luxqcsbtz8oj
	 CJtfc3d5zph36S2kn99FXAQC97mdCMpjQn8SkMtV3EKwU/YmEJxnXodFrIqLJG/vmn
	 rwR+v/xC7T7bcLyD8DRIEl+PKhXSeq+6j+eXKh7fgMZE0w6/3LAFSbdwZCWH0TrxEQ
	 zcQZr/BySkNJLn9DoZG8J9rRPSps775vE12vuilAumolDPUSwPvgI1AuzPDNJpinEE
	 +i7xRn4ADmSIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A0CC282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195713360.14619.4150324890577102745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88754dd9830e65859d6da5ba30ec455bbb860e0cec8ab40ce542be4d15f0e1b5
Date: Fri, 14 Mar 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741957133
