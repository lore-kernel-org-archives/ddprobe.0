Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D10C361DBF
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790258434; cv=none; b=fwe/UYyiadw3GPjnkVqldTZJkWc3cv8JCEFhHuLgv7usut/RXPkFUCKpk8qFccCEnPv1u0C7kdh/7NSKZFHjjglRuAl9luqDMUnlXwWkR6atmun8TMsFgYhIqEAxfxGq5MYkg+93XpmgRU8tZei0DUOYWy0SZ0VT54taxFfKLxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790258434; c=relaxed/simple;
	bh=4RhrNDPvh9nWuG5leUTHRcNBVcK6G7SiccvraZVX6eg=;
	h=To:Subject:From:Message-Id:Date; b=T2mnIPJwrPFWXAX8UMANZCi+02VYO8lBnwzjPQ3Ww+nKc0V539iIM+HQZSmOFsIyKeK6jeLYMb9TbuDF+pNCAQNh6QHwY7SoLs3wzXNc7XlXsokKRkbbCPJsuk1JaYs7OQNf/xhOWFFCOYh4IQRQrgMv1jT4XjyqAFXzrgDKzAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tj+vvAvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj+vvAvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3993C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790258433;
	bh=4RhrNDPvh9nWuG5leUTHRcNBVcK6G7SiccvraZVX6eg=;
	h=To:Subject:From:Date:From;
	b=tj+vvAvcZkvtnp0J1ZtUIqNAyqdEqT04lnYLDAo8bE/hYktD4t1ky5/A6z5p9Pn/Z
	 3Ur/edGEYV39SOxOl/tKIjmXwIhD33P55Uon/EMajiQYCVijesR+i47idmXhvXLDb/
	 Q/ID59juqR03FfXBHIGO/JXGAUep/sbjKQ/gW2+M69RXy7+x4haIbsNqz9K6Q7l+7k
	 kog1TaZGXviARFlDbQwfm/LsqQ6aE8vyuN0bsFnM+Y0tZ8omIWwSfEXuomfCji/bgm
	 cMV9voUajRu2WxG63LqtsXDJLYxLX5df4zboP2wM8duKmlBKhKO7yJG7u4LtNj9r4E
	 xQc3IfhBiPe3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD16FC98317
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025843369.17496.12073351985099953733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6378c1b7c4e51f6bcb873f2448560ae402cd98f359e080c820a69fec1867fce2
Date: Thu, 24 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790258433
