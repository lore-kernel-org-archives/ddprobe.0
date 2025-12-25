Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4C03A1E65
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766627634; cv=none; b=pxR7c6+rQaEPJbF/R22e3k8AudfA1fZtfdmNCJzXWpgg0+od5T9ULCrcyfV1AYjfekEwEN6gpqQWieCo8wbV3UO0yrIaEPFqETVFY7uV1cUiWwjSz5wYsb5Q4P32xjo25dPRNlFu73p3Lz8GAqv6mszKffr1waJKpp+7kXsjdA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766627634; c=relaxed/simple;
	bh=cG2wInfdmhZsgisj4CAvt317gx5HcKGQHeWz/Cb0JPY=;
	h=To:Subject:From:Message-Id:Date; b=pc2uXz6fSADPNHPazMxNTd+3zDdJjJz+JgcBcHTnf1xYBCm5FH7NllVensy4p0prMUi/g3/cQY1MFzHkeP/Wfuu6Qrmj2Zd4aeJ1sGgbv0nR18l33Eq3toYaubBNW/SgWkp/o58ZsoWV0JbSTU4/p01JvStBZvf5i1YKICywxuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maKoHcaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maKoHcaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0221C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766627633;
	bh=cG2wInfdmhZsgisj4CAvt317gx5HcKGQHeWz/Cb0JPY=;
	h=To:Subject:From:Date:From;
	b=maKoHcaLrVDJ/CclEgYiH4q4CwkK9lmnDGvU7jhL7Vx5uI7NSa9My6fwAUjdRdWZ9
	 mVQGsGw3mMooP6C0Wq3lIB87Zfl45OtrLrQAKpWQfsbTfgH5WMEckdGBGK0SzkpEwh
	 xU5MojOG61X8fhTqQvH4LVkxKvWzujnsyl5gT3kdgZQ+WIh+u+HO+oYeAvSYIDc5dW
	 A99CQCXp/eI+joklg+5pTvkevBkaNH7DuF+8VkuXNmhuMON3eiqyQGSBapeO0TgM1P
	 CBVbaBhSaW5BCAasUOX3gEyVGpN6UijwgOjwRnSHFMW/OOm+KuOfCZh8/zGvGzBySH
	 7jv7BYa06INIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6D3E784B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662763357.10990.9158512942229479981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7101e592dbd57ef5a65bf2bc5d2b0cbbf3b4129d0eb874cb9e0a522502dfe6c4
Date: Thu, 25 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766627633
