Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549FB190664
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745518194; cv=none; b=DXYPsoLJxWADoQ6ZcTNGab4kv1SQuVR7eiS9CbGsElbQlrW0igc5gyDHn8U0f6DW0f0mWDCnPwBxFuARcZbvJUdYD2hPmmaGZMBcDIKg9w6qn24o/PCU0kMd1mnm5fEhT7POsVqFymsSPsquP6AMJd58l9sMS4VK3oC/dOR3NRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745518194; c=relaxed/simple;
	bh=R4unf0hFJy1WfeXleY1afjc6Avbu8pq/G5nMKFkasa0=;
	h=To:Subject:From:Message-Id:Date; b=OwksoxP7xTh57TkqCEEVnY4y3gnyrN6KkuNPk1mL9qoTK5v/qTk19ExsnyF08hukkbo4iuAqtLTZkC0iWu/18i1LZpgqprF41oNmYaRNh5W0tsEmCiIa78fyy9CIy2j7mAE6Aok+s8DzPP/tgpxfWqWL+JNIzbyU0HtMjEBlThI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiCZWbog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiCZWbog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEAFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745518193;
	bh=R4unf0hFJy1WfeXleY1afjc6Avbu8pq/G5nMKFkasa0=;
	h=To:Subject:From:Date:From;
	b=NiCZWbog65UJhEVkp2jaujIgpM45ReiOBt+0ykket88nefbCed0upGqv+yy2z/ZiA
	 CVdDkXqtKt/1sNIbCFDZilvZN7FZjTdYCnhsGwBiYpL3ChGpWoaSPg+U1PD7UlFc4R
	 XSUwjV1mttDk0q/N1mDtF2EEModJ6wfMhwt7YSZ+pNCa3pqgl6Avtxldl3UVayjZxa
	 Fk4qAuxyYRCgT7SBsPWgYLxhTqNUHamkWvt7Zy58J3vouGkn6rfkzjT+u/CTZ0wwRi
	 OzlnVGjlNmTVwHrbJEKADo2GXrHpGac4gsEYYqt3qGKWD/IL/2p24NBg0snldxywab
	 LhUAHMFcqdDfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C1C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551819357.16788.11620136900746271158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d4f12186942bfbe54a52a0b0ee29dc9b8aa9dbed0d927caa5a6dda7b1c988e
Date: Thu, 24 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745518193
