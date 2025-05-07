Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B492A1CF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746581994; cv=none; b=OT9ehwGmIn1hP8BSE8ML1C1bKefb8P2wPcJy0xReuvCYhw/bWBIycH9OIXxV+drWBZ7lwp84MW1hW5LkgL42oU+hHhHWF7vyPlsFjVUFKQ+8Kl6wppwD8g9RQ/RFH3ezou7+jMWvWT5HQ4yNRDqvrCxG6sETm+4M36sXTktx7UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746581994; c=relaxed/simple;
	bh=8zHZ+jsUYqipRd0PD/KKoCdJHoOKVgKKxZvIb2XkBeY=;
	h=To:Subject:From:Message-Id:Date; b=Elg6WVUUNhvP2V/PyYlB+vHx/BUIBg7zutUo6kZABN+90YPJVcb70wah8UJTr/pFU+bQDRiKEWrJ7auG+AJNEdr/HaWVxMdowMoMRYuKKed5AYClY5CjyR2kqwjOitSfZKnXLf0AxASx0KQ56DZIyybviDYM/d6ouxhJYIhvqm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIgM7UUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIgM7UUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C61DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746581993;
	bh=8zHZ+jsUYqipRd0PD/KKoCdJHoOKVgKKxZvIb2XkBeY=;
	h=To:Subject:From:Date:From;
	b=HIgM7UURfV1pGycxZEWbrFHYlxICx92SIWMvHonj0/K/pOQfWTKAW5gdQkcYftiFf
	 A9b+UUun9V2H90HSRG4Ez7yRqAZ/Z6SFB3LutFXUIfnvkwEgwj0upac90JfMZZjDnC
	 UUP3WJbaLMEmBIq7FdxDgwC6RfQJsWpJXtQS3FO4j2iviJGJF6hAvNSNCt9g+Fjtfh
	 IipgJyewyPnhmh0Opr6Zpuk+tK/WXAqERmtTdK7xR5Y9+ep+yBQSbp5DrRMmR7twvt
	 3ihIaoHPJkHidWbR0Gg2G8bqWjBwGJpm6aABQryW3mzYvJ/+2VLDLiQMVizC8xIzmN
	 X9vdOxnv7LsrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E70DC3ABBE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658199357.26734.13137376468888489197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0efcd2dc6eea4b9eed39a1e2fbfdccb2a36149ca8c9e4e44cd62a0e832bd9e5e
Date: Wed, 07 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746581993
