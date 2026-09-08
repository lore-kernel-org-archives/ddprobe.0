Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7436057ED88
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788885634; cv=none; b=FCKLBb2I4yNrA2tuT9ta5zqFLFSV+mfDFl9W5/DyKtu0gXzVJz6iNCwLpMypxLr+en4q3XjfMwEWjiKIg6nbTJfzIwqIXJ7uYoxtWf5NGtixa5isSaCIfPtP3TuCiuI+BBAmv0bTnYTVr9H8vvy1QqBgP/XYyOKzyybB/HWHQck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788885634; c=relaxed/simple;
	bh=buLXOOfUQXppPzb3X1l/EJINtCpgXdckbrsZpNgosnA=;
	h=To:Subject:From:Message-Id:Date; b=a2PLi5VNXElKvrAXjkf0xtqqMoG7oknLyWG/bT/XwM/Qv14A3jjKun0vXbT576X1bN0qKrY5rYEsJjS7IEsRCkbVXYt7jd39d7x5B+KL/WlSnEfiLglzEAJFFCqOQpAnDcPVp/2wQwVOiIDzZwAnwj4Bqp/eAN/cI/+VsWw+d50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7FCHRqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7FCHRqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDF8BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788885634;
	bh=buLXOOfUQXppPzb3X1l/EJINtCpgXdckbrsZpNgosnA=;
	h=To:Subject:From:Date:From;
	b=m7FCHRqQcajpGYwuxqbx40JhoDm26uKLozpXXQV1iFtrDy+9KWK70BI/98+KMUwrz
	 YHvogAGfhvw/rGG9C0ZONkmjZErAKVPkeFmxcJqQLqixWN3Q8Ns97p3qnuJouA9VNe
	 DBOvyVNhUkbM3gDWCi+CMTpG0nGrQNbEbVJ3brmHYXmnRnoYpAA2sBShVz35eRLTjI
	 7yUZcY76Sxhr/vRabTneb3/hjWjRZ2TZ167FqcT04dzpbcz+tQ6nJy4KSgWr5N1NZf
	 lGwMTnsjjCsZNQRFtFpbSuvmQhCprII9S8esqSzy4vvt3og0iINrFRCHOetYizAs4y
	 5/yP5tzo4z/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42E4C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888563374.18679.7860984583635713711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8bda6acfb3d62dc08413711d5c73204a645cbd336bbb7e3d55cb198b32cb69
Date: Tue, 08 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788885633
