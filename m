Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306A4176FB0
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746363594; cv=none; b=WnsDhBOR1YTQ3Lt/+xfzClNir4cZLGfEEcumifgOQ/UXDm/ImtKaNa9IRDkVotn0mMZShTMdEpVk1FKo8z4PRE2W1yEELekfi93cKOKJ3ZKwpCZTSFOF6+gb6B6V6ZvY9qlO5Da4P+KWQEg46HHXrAlPxz2LRPIZFQvHK7Yq8oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746363594; c=relaxed/simple;
	bh=s5cFuahE3X7+R6Eq3TOsx0yBY/tUxPBO/eHTXfFN90g=;
	h=To:Subject:From:Message-Id:Date; b=opn5q1oRSZhtOClaqlX/IS0Xc9P7MDriXkpRDQUjKy5D78a16RXgxomh65X7PLS6aPbzPDgO3bZX57rdRRTxLv0TAgfzIZXwiGfZbkCYSgg9Pobn+ba8Ovc5nom+Aim45GdeymdgUK2SfXR0saGy5kJkzWYaPvFhO3mmejeM+k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kw1WNBBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kw1WNBBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DCDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746363593;
	bh=s5cFuahE3X7+R6Eq3TOsx0yBY/tUxPBO/eHTXfFN90g=;
	h=To:Subject:From:Date:From;
	b=kw1WNBBxqATLQiRjX1rHSZcWoRDILHrlCVUQ/VYEKHyipwtz9AP8C+Z/RbbS6z5RE
	 et65zWzXUJsvgtBTuAiSctDgdqEfN0hjgNeVJNSntWTHSEz4Dq3DbC4bIMMUpSy1am
	 CQe8KSVvJWO1eOmz6ZJ89yX8g4CJwb4eCh2oaYp3PBOjFFAUIzgbad8sqaZuaubpJt
	 TalNKHTFmVB0MaPsxDUskp3U7qIMlX8CsspridbOORLoLRODQEM6+iKZQOUYyfnVz/
	 tv1Xj+NwxdU+UlWbb0DPJkbX+he1bRQztP7ifsMfSw22apKu/K0Ja48FGF91h5wheZ
	 XTl3RbyuttPAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FECC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636359357.2208.3264740594832770754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a2c0f8eb48d94faf89b8ab5fe86bd83448fe0bd66dd102f4fc6d62dd4d527a
Date: Sun, 04 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746363593
