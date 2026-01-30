Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2492E9EBB
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769739234; cv=none; b=k1IcsDNR124KNgzHp4Yj3l5C9rGLc2ReCVAutVKIiLqOtEj8fBIt2zluGYFK+X1pJ+fGD9aWgFJeLe3hIp2k8ICJYVRK3f1b9wbFKCErrP37aZTngXncHzC3R0T31s4YNau1jEE77lD48jqjfM7kRKOYHWEzl8WgD+zK5UzkN+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769739234; c=relaxed/simple;
	bh=8S4F9HwgA3WJrw1IW5NffUMURg9vS/GrtyP4r2xbkm4=;
	h=To:Subject:From:Message-Id:Date; b=rE5QJMbVb3kU8wzqrK8O5olHrwqIsGdy6jOIHna6Wja/kXmq5Nh3VPVO5iBRZSbe0PFeMYcNdeee+Ku92RZuiNf/E6pYGF/i+nMRHRP4rfIUsbCcpG8csKUIaQerK2JxtTUGkVnAojOwM69lFZzPQkOPZ7HQiAr9jRG3JEowvUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pf7zstKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pf7zstKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB34CC19421
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769739233;
	bh=8S4F9HwgA3WJrw1IW5NffUMURg9vS/GrtyP4r2xbkm4=;
	h=To:Subject:From:Date:From;
	b=pf7zstKYhV2z+A8kVvaXs6Jzr2ZNnYCBhX+7A/cJy++M1lrRpwp6/GuSnu+NGEwhK
	 e7ZXW+a1ad+mp5vwCKAZ3zuatAHtiCwKrn4e/Ggn6flZHVviXEBwPakXSJmTqOMFeV
	 TItqnA/9bdBleSnrO9Nmyb+xG8h/LqrPmwxjnJX1WZqiRFvZrXiwI71J/XbowU4Elf
	 iTkUeHvUBkxtL+3jvC8lfuPS1EzwK5ykRRG00gD8C/z5AB17n+1WILIGSuPKA78jcS
	 ACoRlJ9lEBwLzd9J0AxKbLFGIKjKpEN6wgCaq+n8wRo/1WJd/7aORD8MwDGg7ai3Rq
	 EkV+b9mxil/4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96715D73E86
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973923358.25750.8050343793803939029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f41442af98f90c3b3409efc9f62f9b40c736fbd828ec8eacccbd670eeeadecd
Date: Fri, 30 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769739233
