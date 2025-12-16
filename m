Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2171B82866
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765846374; cv=none; b=rjJwfUuVCprAUd5BeOj7/4xjKtAwtB2erSSmxuNdYhG0MpgYykIBq4+HWN6Csgb3zcgn0BWiIBXnTfbIARw2LoLkLqjkJqk42d+xL99EbXOwWwMn4Tbcb3+i9sf5piLmsPe3p3UKciNPyRU8atrFkImoFYe1/0FZWUUEWMjq2as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765846374; c=relaxed/simple;
	bh=qH++35NSaw1wIrVFoQLrEIr1fC12cOtiJKQsxGRjsZk=;
	h=To:Subject:From:Message-Id:Date; b=lEs+9CBBjFLKB3rS/IZyuw4UmnKR7BtZEjK/5UNPu9UUc5j3AkFC+exr0/1cia2Nm39jCHrCjK/lPFEVL8leCoAGs8Wrq3vP2f8EjdzitDtVTHyuwNuTQT+6FIOndD/EdY0rUObCn9Ymq8ohMslgowotTjd2smT9dOOfyv+06y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nT7nbok2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nT7nbok2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20B6C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765846373;
	bh=qH++35NSaw1wIrVFoQLrEIr1fC12cOtiJKQsxGRjsZk=;
	h=To:Subject:From:Date:From;
	b=nT7nbok2YpWB8Jbho2K75dLIUkLxBN3Ha0wrTnTIiaKT/ObJDnSJp6xFydMtJcE0t
	 Z1M5umP6ukfq/ffxH6UQa9GMn0jQXHWKketbxRRWb/SssO+eOG0CWpSgDhhklpg/Bk
	 TwIErt94s+v5kSoy2eqlPAmY0k0X+Prujo5ZDAa8mPYAWtluSwk0lS2lz9ocoJxcnW
	 y1s8Dth3apMwEhQCzl08hj4eIc4DdSkgHFFVPJVmmXNsE0LAMAHcpydNQQy1xSoR9Z
	 ADF2Si90SdTE9CJi8hboL2Inysx5giYRiLrDzPFks/rJ1EcuJxo3gXTEOq1kxcFUs3
	 hXOSAvGc4S4rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F64D5B87A
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584637360.21987.11074795777627013529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1d12c69388b035d7f3886a75eb473718049b305e90fe9ef437fb11ed8934eb
Date: Tue, 16 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765846373
