Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B8F1422DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739471934; cv=none; b=BeQFI1t30uwlIHwJtWiQNx8JsvZgzMQQxhm84iDfvuRn3RXqVZdpvHNaYxPb9M6BRFIydYSzwzto5pFNdFS9vwIOBzVoDSLup0Um3qckGF73u9WlhM9JaINSDBLjXvAoN8wJoq+nLYfHmE6VxOvQ4rKPEWOz/EGmuSFU+Y5Mlx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739471934; c=relaxed/simple;
	bh=q8U0KNIjT5TIrOuYILQb6iYqhQ4VQOZZZS8Q72Ulaw8=;
	h=To:Subject:From:Message-Id:Date; b=gzt98Y7B+KaGEI1gJZuQaHxZIBLWh4v4WC+K7wsYvtx5C70ddWnAolYtcdy4TFltmsltj9wI/x4qkE7FXToy39UGr3iHbzyEL7V26Z85ZMMx9SLzMvYUWlY7F7Ww2niW3XZHXSkCXAoUw1TACxXC9PfhGyn6cfOne6TKAWdWIG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3yQqFVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3yQqFVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA090C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739471933;
	bh=q8U0KNIjT5TIrOuYILQb6iYqhQ4VQOZZZS8Q72Ulaw8=;
	h=To:Subject:From:Date:From;
	b=k3yQqFVdAd5e31OwcsD8s6WqMn2wbZU4NOQ5kmon3YB/3SieZsiRcppgJswiT9ODN
	 X9OwabB8rukntqOzHXN8EdqpBB0I7r2fEhnYVuauYiMMLlavjD93xHLfdC2SZnO6qn
	 JtLaJ8h6E4kX+4VHRygk1wev9q5V/yCSKK7VUTP4w6OJfQUcOqR+IZJfZVjiF5sPa+
	 Kx8rnz0I+uxeEATmFKxGSHdI4vV508OUW/48XNSnMY4e/kGyCHGrJEMANIliA9djCR
	 lTvPxWijW7VRMxblJQbfZ4TT2ohLgvxfMgMIkydtwMxtH7no+uwthRCiJ6n4gBjzEp
	 sDeSfgQEQLUzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7976C021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 18:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173947193367.28803.16472299965840154958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a59fb7231206246dfc7ede0a063c16a48c3ddc793a42571ca7fa408a50192d8
Date: Thu, 13 Feb 2025 18:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739471933
