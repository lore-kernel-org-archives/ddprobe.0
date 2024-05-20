Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FB04A33
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716168743; cv=none; b=e8OQ/lC5qep+A5/DmQZ36N7GT7HBiGt1wzk2rIN5J4IbqYE1UkiPjvPeh+nMJwpdN/18XbnQrS7aaXIJBeVjN7ou9/Fnb3W1aLD/p+DLLwLQYORCZeaJ1Pndpk1UzuK++aq/rBd0v+6nqwGHIDslbv9wZgaMGFG0ffp526R7EaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716168743; c=relaxed/simple;
	bh=bmBwxD1r7jrYxPDR1/p+hNze6EJyxpvigPLCRB2fCig=;
	h=To:Subject:From:Message-Id:Date; b=JHxBUJZFxbxvxS2lEkC2yNtT3nW9OX7FzKYaGQk/giO6yor7NzL2gOb882Nazp52waeWfuYulLviV+GWwO7JVvy9ZW/ObJO/WC5TmeyCQqKF6HZOtrJ603AbF+FF8LlZE6YxeGHlVoKh+4IgxmP37qGZ9bmR/ZxKcu8PbwU3hDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGlY2GeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGlY2GeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91F7C32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716168742;
	bh=bmBwxD1r7jrYxPDR1/p+hNze6EJyxpvigPLCRB2fCig=;
	h=To:Subject:From:Date:From;
	b=bGlY2GeRmRmr9dcCYd1Y9OgjvkvMZQI9lkJsVBbtJlvZZUCQJ0Bo6r4+dmrt7FLHK
	 0CmQAvxUy7kqMlkW01k+MwuwmkVQ2eW4PP5A5cnVLDh4vMDphwu30ThtP9/ToQJwsr
	 bdCoIJnhVlEKfnCHo53yLqUCjRfee3CgbdYsIyDwvMWLuYm9KkEJ5EcWcu95+A6JhX
	 RLs/PSemhZyKQ3WMiXEa0SXl1sD3BpIps4i2Xkdw0T98bbF22vMIcGSWH43QBwY+7k
	 nR7Kw/nOUA80kBKWn5tmOoFQ/POupPNrxh/XJ9edscck4FaaCG8ZbZXvfeiCLp76iI
	 sXX942Nuuz4aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C548FC25B75
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171616874277.5015.5143066409826356797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704a73c77785a0714252d7d16f87447164d1d59a2f870039ce5ea9c4c7f38b3a
Date: Mon, 20 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716168742
