Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020932E407
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705606697; cv=none; b=WXZRc+9GCZttrcJ2yiYAkPc383BRbm6xN4U6XEsONUESwXw6zUQFDOpX+xpWraGpckLkuU81VPh/1/k71YRtEcOLFhO1/E18vhJgHOQjF0u4AKHTqSkuY17fKUkE+XAgWLdISTUCMpHj+GmHu4lN/2NKbc5Fg18WUee1BEnISAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705606697; c=relaxed/simple;
	bh=lQIiHioV6fC6ysgD0kBWclOJ3wXvxALvnhQHPs0OmR0=;
	h=To:Subject:From:Message-Id:Date; b=sRYguHUnbS5d6JwiddrHV8YaZbCKOWVB6YSztLendSvTJ+bc3HsMklR415aePxPAt0UJJQ+n5hZgOphM7nmdDVmwzOePrTbnqL+CANSpD1m4vsOQYDhrz49GcZ+KP455R2QyMjLXBlS+8pMdcJVeGfr9zWcj6iF3uPVPukT34P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVlGr+EN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVlGr+EN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7816CC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705606696;
	bh=lQIiHioV6fC6ysgD0kBWclOJ3wXvxALvnhQHPs0OmR0=;
	h=To:Subject:From:Date:From;
	b=rVlGr+EN4328y0XQZ0UvIXZhSWM5OZme8JKlaN4tO1xUshaxJQNp78gtuaMFjcgTO
	 OXhKCZzzzcAiwA9cAteeHwT7Z/tYXcw0jQgtRX7zxmlbS/iCJB0d89CvbznP7tAk8l
	 bI6PIUF4O+2R2V9GubeQnX9V6VYgR7S3C9oF87HGP+gwvr0W8nbB6fzPJiv2DVG8e4
	 lElBo8O+MAQo7A8ToS+odrFE0mI85fg1W6Sbj7xukvJu4VxqaUqAzbsDeN6h4QEXnH
	 +CtUvjyFMTaYRvk9nZ0VwqTXUrU51ZaZ/h0IhpuXn/DTteQAYXJD6RANlWAqnW1gPg
	 Xkk/yO5pDv88A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CCDC47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170560669639.2258.6250028005931978945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6036c26a4148aaf29235c3b6610073640244f5310f8e6e3a0f50de4db405e1d
Date: Thu, 18 Jan 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705606696
