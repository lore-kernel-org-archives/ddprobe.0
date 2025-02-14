Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4720E1A83F2
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739574534; cv=none; b=RxvVUMhlhp3QU3A1beAEHdPlYdm8gpMKAdhSA2NsXYeSjrsa99akraVFsMonOLVqL3ga+thxvfDQ9aHAgZL8fUsnHNW9G8YKYhFumIRTUZYlIkpC7+0n/uL43l5gRhGrBXhZkl8p0vppTW805VMJ8saDkD4KtnZQq6nmF6/HEqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739574534; c=relaxed/simple;
	bh=ly7KOPE1jqaGAjVbts/wyQFpJChqbecRIKGu3gV8TL4=;
	h=To:Subject:From:Message-Id:Date; b=DwZqQ/4kpKrmrBqav+HuCsT74AHl7liyf2qxRhKZ6gLhiObYp9WFewEzYQZx/+cWU15/Lhv9b74SufeVcXUT6X+yCmicNAo9+l4TxjRbncTBPDYXBNvSTf9ozn9EGSFZJNGedoWrUu4aeRm0Ew/ro19zvtU8Pr+UCUQJga/1M0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xt2+U6GE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xt2+U6GE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B819CC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739574533;
	bh=ly7KOPE1jqaGAjVbts/wyQFpJChqbecRIKGu3gV8TL4=;
	h=To:Subject:From:Date:From;
	b=Xt2+U6GE/42h2j6fn6OnAZ1llDUpLjJ8hoYYgZAnvFDyV/dH4j7Kb0r+gtCbo28QP
	 6gmp1qNGRbnd3f53wBIlTg/bm7hwyc3o93JhM/520GS4qALBxQYYc62FF/F13dtm7Y
	 8pxS1qwmJOpTZD1J4+MWqNvPaqsC2J4BBLwjSYaL/renVoa1XJfVYHNRSJgyeb2Cxa
	 i8zCaWYztwYoKUp/XWyfgnwThAhHujLo2wUoVgJSxAoQ4cN0pYIw6dF8QmoC9UG62i
	 zOj2YTiD23Kv7Tgv7XB5Arq4qQxULqpJbd67PZL7truC42mlFg3kR+d24eZ/td+jjS
	 S9XaD4GFIFKIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5606C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 23:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173957453364.8520.18442055000342775561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09b413c21ce515d03f93ab48643f304182f2888b9f6fc3c3fe0b7f86d0f5106
Date: Fri, 14 Feb 2025 23:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739574533
