Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09370305E10
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771863894; cv=none; b=Gv+7041mYvySroQT++6sWt+OdW6NkwUGyvRFJwORG3z2lwtCJAa52rTyh+uut2gmrinl9Z/SoGbHRIoLhuUYxKViRfQV59DnDSCDlhIh/lSkwSXd+M/soDHqJ6WTZz4dVHce6hfAyBfA7NY9UlXym9joyXSIv4lX1JfSk0z0VXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771863894; c=relaxed/simple;
	bh=EISkOITDS4xgrfhwo/NOVbm8H7PxMYhsoBRS+Il3/vU=;
	h=To:Subject:From:Message-Id:Date; b=isNnsp/9MZWyEtfZ/2AhzsiJaZ4drYmMaCwJolExogsZU5q7Lb+xWc9jeKKac0QJib55E8jIcsd4nVMHnNYaLVWJX0HSSjrtFkpmV76NoV1pV8GzsAFs1xXrX6qA7moEHOqudA9RQu5khfbo6AW8a0K1UyXH2Bd46zHh156+MOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nn9b4OZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nn9b4OZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB171C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771863893;
	bh=EISkOITDS4xgrfhwo/NOVbm8H7PxMYhsoBRS+Il3/vU=;
	h=To:Subject:From:Date:From;
	b=nn9b4OZzFLWKKg6VdsBtMs7IYG7qTqKqhrc7e3uTrvX9aCk02ZTMD77mzxQ9paQgT
	 768Zzf2zb7otzmwZGCvq9Ven7dgHP703YF2WWLstAAYSsyqOpJn0o2JcF+85d8g7nr
	 +au4vDw+sN9S2MMKevaOMrIBXKmcVN23cULi5IoEf3ExLTSGWmpab/T7i/STrDIxHF
	 5mVzKBLz0ERSt180rfuaVxCiFgIu9a9ffPJa528CoiPTZVqcKs26NYUH8/5uEOBYl1
	 Uk7yMs3ODYk0wQQs4CJJJk9cfbcPbcpDKUQnauiqruVbz3bNhXel0pXnyk6pskcorA
	 Yoe48VSNWkEQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98875EC1104
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186389358.21341.11409008084232235658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c8952519bf7dc8a86e82693bfc3006d98e44bd9bc9ccd8bc0720c13ebe180a
Date: Mon, 23 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771863893
