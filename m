Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B3A19DF5B
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749892194; cv=none; b=N+TUqBGj+/ubeCsIKIxg6uBRpdQ/yN+MvaKqLMLIMkY2Skp2Qib+BE302go1BGRFqOqyQYljUzlQo5IXNKFJ0jV58WTn72oX1ONyEhIiSKROVBLdK4CJ0NlqS+ROrRMwZP0CiEZy9RB/MyomJBBnVlrfTvsU9p43F0TxaHI9wiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749892194; c=relaxed/simple;
	bh=X/MPa0ifvYDeL2bU46DfIYMJGjfoscEK+QbFMKY1U04=;
	h=To:Subject:From:Message-Id:Date; b=I6OdQStDBNyFEJ1Ieytb1IXor7QAkLvuz1ockCwEc7plemU+lgh2xzLdJVQLp82xEfPyXQpenrH0+M7EmbJ/c1T9FLPMAFpHUnCfznNTQcE365pw84Anr/zGoVDWtyM4czmgNmduxRGbzUXk1JKth9QyywFoN9bBE/eh0YHAW2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZofYK/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZofYK/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F7DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749892193;
	bh=X/MPa0ifvYDeL2bU46DfIYMJGjfoscEK+QbFMKY1U04=;
	h=To:Subject:From:Date:From;
	b=bZofYK/sRhA7ynf0CXbSVwSz6vnxrmDw/sZ7KyXQzuLXLA+OHwaGiauC0huPBwdUs
	 8a2Y3TtAb9xI2nn6cIUvj5AM9Vpof1HUbMBiIfxg9u5LU3T+gjv9XB5yIlSu3AY5mC
	 4eR4B8IPE0+DDOJgPdAZbjNZ+t586V7S3P6M3WBrEzpURLD7qP5RLPaDXRLi1XILjw
	 UtYhUYej5SXqqgk+DoOmMXg8KDoUK86GWckCbnHKXW9YHoTTIsdVYcjJibDkLfbSd5
	 +H7klXzLQoWCj/B1oW446YTss+2LGMT0pxew/tOclm09Gh3IyURs4q8UFC9YvdRpmc
	 b4Er2ZM18MIkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96341C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989219360.17590.6435423191967240717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741a62cdcf3702e0c4e55572906a04456cb5e71cd755c25e30fb5bce08e26cf4
Date: Sat, 14 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749892193
