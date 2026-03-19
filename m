Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2885D3A7F72
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773908094; cv=none; b=b4Bhk3nnCWy4rt/+hBlsTSuCgxRtkkSDOb2ZqXiEc8shQ/w19YLh69AJNUDbh+zL116nc/iDjJjAlcmTxaRut3ez2rERm6YvPs6TdIupCqnSxCuiAfwUgXLq4ZLIju1uCGdLoNcSOeE1CV1067BIEfGHoXYdPWD7XKvFco9UMFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773908094; c=relaxed/simple;
	bh=FpY0Wevn1QpPOmyXDbB746zu/+fRn2Bi+DPBCgUowEs=;
	h=To:Subject:From:Message-Id:Date; b=gG25/EjyqruWKK3YNvODNQVUyJwTNKgILxOUieJbweTuI9kccFja58+i8LhahYJ0z213cdFKKbnDi7O+rUMokLpssEOWT+ycPSULKz1QOXVg8iIDBDV7zQFMsRTgWMrE5iUpBardXtA1IyUSobcqfATraOa3q7eipsUd0RnWXVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJnJuj8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJnJuj8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D33C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773908093;
	bh=FpY0Wevn1QpPOmyXDbB746zu/+fRn2Bi+DPBCgUowEs=;
	h=To:Subject:From:Date:From;
	b=mJnJuj8QF8+oYZIYSaTqZy2zJZztzagb6YPzaFfSLiDkHKzHWgQL/vX054sZNnPxf
	 poPBs2jyRPhOmsK8n5wlOGa8yw44BZV/YfEUT4P1v6/WCq21s7BzVXyTEKdQF0VH+4
	 gM90MuqWhKMQKUZj12KopYpSLzbHTJkT+1ydnFkmHkUh/dB/qpx8HGeuH9PPtuvmTR
	 LamGHsuWa0jE8CHOCJgiyKkhkkGqahgEJFcSTMyNEaaSQ4LuwB4yqG5Ct8X8urwJxF
	 sxARpJYNvOV0VnF5KW0dkUHLpgdS16VKxmSZx7yLe+Js1IMIk1oJO3zYgOURc5F289
	 DCq+MBYMGvPug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C51075274
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390809357.15334.6983103759034509369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6d87376671b9977c82a11ec007652000d3231f27c82d5cb6c61a27bd97119d
Date: Thu, 19 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773908093
