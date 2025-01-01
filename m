Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219D525771
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735722354; cv=none; b=ZpwjBIxHGt780XysIbb5NirG6h0U7BUY5q4Ar/l5N8CPrKxm+Oz2XpWUUPuPQ60uTcdivYGh2Axzxertthb8WUC4yDi9p/GxuSHVlrnmoR1tSfp40+0FVhPHraqYgPXHGgjwIuaYUSfua7eQrrwU21QemKoJhZCNgFg7FuUigiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735722354; c=relaxed/simple;
	bh=ijyyu7TjB5qRR1qZ5S/7NL8jgtlse0vkmixGfwv+4pI=;
	h=To:Subject:From:Message-Id:Date; b=FYnjofhVkdTH9LtJXWUjlUf8t5NnoWkTJChAnBtHJcIf8djR6EkXVXyoJuP86y+W0FAJQLhCSJhJlAl/Uvz/YygW2zkY9xEVnJW+FrsEjgTfGpo0finfSzj+BYa3c/s5kFsdiDvlVqXIqI102LZZGemSmEB0GQEevSILAy23ZQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCwwmwxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCwwmwxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EF0C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735722353;
	bh=ijyyu7TjB5qRR1qZ5S/7NL8jgtlse0vkmixGfwv+4pI=;
	h=To:Subject:From:Date:From;
	b=pCwwmwxWf8MMA6FvwQmjSZ7RWD4kmGazadJB36D3AXw/OW7O5/PXkRNHlRYVJM/VO
	 xk8hKcI3UIFz+WJQIZegfSBO51oLOwDXdMDm3AxfNlqekxkYw4DLYEWzTx01pEshi9
	 5itMeNdOMAaszi5A7i00n41vmuMm7+iWGKNVWwXQeKawoLc0nvisteibySeZwIVweS
	 7tdHTalEoW6b1OB6GtOGtBETv49GynifixLTLvHFrzpY4xlF4lF6MJPYJ8yFkEavMP
	 Y4PqB2eN6F5FTzUoV8yot5AzguUkqyZL6908l87gwbxIM9mgT+V8DPh1O7djWgKx51
	 CCiAtEaprpFBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94955E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572235360.28332.16700069791302405428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283dd1bc11d8f53d90e4e62b1cc61a0cfbdd8490929f06cf5ccfbd93ed133674
Date: Wed, 01 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735722353
