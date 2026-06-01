Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2205C3905F8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780305874; cv=none; b=A2T34KwJv1UhY76VM0MMeNsmmJ4rDvTkOnl2hq/9jY+g5f4t9NJBYi1Rudr+jgfktUVHWSzDgCYuhdy5+/8DilrXzB9vvUTOaqLg+OfkdKiDid+zl+BrEZKIzpGloNMY4vk0MthR1MY7UsiW7S/PhEi8z/1EGG/CMtsWqOa4zl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780305874; c=relaxed/simple;
	bh=791QpZZam9KFthFDv/Ve7QMZ4zK+6lqzXmcFhclfKsg=;
	h=To:Subject:From:Message-Id:Date; b=MtQvEVfZzEp4jwh20EFpDwB2ByHyr9iMshIbIw/Um1Sr7n+f6eVXlo6UhB4Q+C6mY/hrrP5ka4WefDe3jlcLlZ/qVPVwKMdnmjiYUggSU/wOpmVVfmcymNXwAwS9vFB+d4S3sBQKrgwoH8xxSfjoOjd3Ktcl9Rs0hCdVtDTmaY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4ru9S2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4ru9S2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3311C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780305873;
	bh=791QpZZam9KFthFDv/Ve7QMZ4zK+6lqzXmcFhclfKsg=;
	h=To:Subject:From:Date:From;
	b=u4ru9S2+fAiDJ12icIupcpKHQwwxDzABj3tPmeMveioFBTEqX8QJ9+2YHGN7eaXCZ
	 TOABE6/SBneZcEoK6wlJgSquC2ZKJVxhm4CDaZmRjOMbZOKSrranetptfmdK/9rDZm
	 SXyyCNm6Q4ieprMoqUwhobVQQ9EiiPdZtYZOt9hfXIEnGnA7msVcXca5NXaH+umMOK
	 SPnJb12BtWzeo6C5ug32zLmJtAixiYOmbDvq8VtjT6oRVQrXhJbFvEYXzXogu3yU9y
	 yVFS6F6TlzE8nXl8xOFgdNyG0jHoDocXnAIU/KPjrDRYd0J+dc1hYtqRMkfmnMdmRi
	 DohpqjvkabdWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F0CCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 09:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030587368.17859.1761591185818741136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462c9dbcf415e895626264cd6d973289bf5bb6b609d27853d3e2efceb7774e89
Date: Mon, 01 Jun 2026 09:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780305873
