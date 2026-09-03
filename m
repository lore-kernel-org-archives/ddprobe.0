Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AF11FF7C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788406834; cv=none; b=Pt97n9Y6zk2fffNuZWFtZVpwrY7eWkVt53vpP48j5Px7LwYigpwGhagGMCWWWddTNTIU+FUoofY3Fi4BJSb4fZvmJoD5fpMMX9nQAptSZT3hLuFihOPv6yJYeObuowoHnCwJDYmddkxlZEnHQSFcmFz+0MDRcvHfNhOoDVBSJgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788406834; c=relaxed/simple;
	bh=C86sUoFWZUsTjFqjHWHOya9y7oNyfiKXEO/VFn9Btyk=;
	h=To:Subject:From:Message-Id:Date; b=sKEsV7AdNDKcsy+7QEpSw0/EONEwUEBhtsDlU86J4NwqYZ3BtDwGrwkTfqwN3onoAdygv4mGjB6tZX77X0xnNclBOc0Yw3kcS/ftmP+FKieUgGCpSvoT2w8uoCTMS6TnN1+j7VhV8HnEC50kzAntbT5dQYsZuixASCK/tRkv/Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7GeVzDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7GeVzDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE7CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788406833;
	bh=C86sUoFWZUsTjFqjHWHOya9y7oNyfiKXEO/VFn9Btyk=;
	h=To:Subject:From:Date:From;
	b=H7GeVzDLaGtfL198+382mkvMmQ4lmO9Cz1XSqi+P8Rt42MonF4ldBDqGBnMRrfAvD
	 fKsSOY+IhDsEL+9nBqq7fVMyft9BYGKXbwItGR91UlsWI42aSqt/X0dkylwg2lgdFv
	 UlXU7M/SAG90He88ABcAEhcLw5fNCMiKZJF7e1hhrk8bveNXSXBt5NPDJnPk3mmr2Z
	 OY1b03ZOyNAYeis91CHIDQpbvLwKjdywLOFEzRVOZ7hHuIV6x1CmoyPG7+JHeDIw3b
	 j7pyfoAIo3mElVbBrassFeGgaIw0TEmJadcmkIQUrXzFI5Nnc4ZdgWADsrUTGuRkHL
	 1tOlqlfCQOIHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB127C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840683368.28926.5199864728600268788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df9ad39117aaa3412fba2d331ff36e28b50a8f536022a6a8ba33deda0ca8933
Date: Thu, 03 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788406833
