Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56B222DF97
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748539793; cv=none; b=bAC12jN2FvOvDEqn0972ESad31+X2ua7h90P5LcM/n3k3hYUyJcpBXSpGroO0ZZ565PoBlD0SEjsfcy9m5ZEfZ/HbUriPAHdQFAwrJAXUSfC7uQsmAxOilPrmdI52v8m2XQpjYSdOReBI9c6VngcJj8SztPNvVARZ6ZZVYEH6zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748539793; c=relaxed/simple;
	bh=dsS5En5zs0iKY/+VDUjXB4lRFQbrAyVBPwz5wU3IXrI=;
	h=To:Subject:From:Message-Id:Date; b=DhlSRH9xV/Eea1ghmCOfmyIKAW2X+JQy4GEfAkYTZVAFdAWKPwsZabR0+MrSZpjM978d3mLyhnYoytZzJ/MZbgS8AEKgZ2fx4e6n0MlTTkDk0gvkAH/ExpDRmk6orsZZgYFadGAmlkodA5HEQ+Cfj+JoufatQ+hGbHH/xQY1LSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9gNABEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9gNABEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A593AC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748539793;
	bh=dsS5En5zs0iKY/+VDUjXB4lRFQbrAyVBPwz5wU3IXrI=;
	h=To:Subject:From:Date:From;
	b=J9gNABEZjuDzxO0lpEgnuatqZMCaPBrQLvi2Ye59MN3lMJRKp1DH6Jh3pZL/bjKx2
	 oERGsH1P0RY5F1UAZLJquCWRWj+56PUzuYM3UPY5v247iEwgOIv9XtD6P4Do+wOJit
	 MceHP9b8hjCQmND6v0bZ2hQDByl7STx4AEQ7FwWch7HW5xTA5H0qa4SiIi42STz8wQ
	 I+xiDwTlamI83sad9c6e7r0qnRlu5sFmTWl8quxk9b4QDQ44xg8s1j8Wv1cWMBKOx6
	 o1JF9af4f5mh0XsgALRkQD8GK1f3H4Rnvi0J3AHVjMUVDcQxRusXZGYCi8TRGYs2J3
	 4M2LQ+fZ4mKfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A15C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853979358.6537.17505563428416735021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd536c0ce6627841e2a87e176e9d178e85f452c7aab0890e88d19f0f4674b50e
Date: Thu, 29 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748539793
