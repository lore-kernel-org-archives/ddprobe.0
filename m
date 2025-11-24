Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5513002DA
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763988114; cv=none; b=G+AUFMFj+7WkWmuVAO71a39tNEGCgFe53kvKt/KY3NytjEv0+z//C8j3ffW7hIcAa43KMhvkTtJcJEuIOTkjgZA2j2951s7z4ELHYl/9EsopgonshgGMwSXefI0sb9bOMPhFgsGc7DW8lisKxGf3wi7wcQoYXKgFkhvY+/vjmXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763988114; c=relaxed/simple;
	bh=9j1H5ckhaDLczyTKXS0JNn6fKdN0y5dqrNhJqqbbEWE=;
	h=To:Subject:From:Message-Id:Date; b=YG8hYEaQIQOl6YkBPFTqETB9FAnR0hTlJ9S5dDFlib2vbiBWc6kDewAV0T1ea4UNUKGyrokfmxDbrxAxmPzuhkxRBqN/9yvWioJ0WgSYwrmSl8+Aq3qg4dECTHhuoKXbzijz+p72Dx8vU9Z/Q13xuIz5mXJ3LSDswUNlsk0a/Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYBJPYoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYBJPYoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2972C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763988113;
	bh=9j1H5ckhaDLczyTKXS0JNn6fKdN0y5dqrNhJqqbbEWE=;
	h=To:Subject:From:Date:From;
	b=cYBJPYoTGJRRtY39eJYNL9/mnQbeyltpUsh8qyg8GImmrc/vT7lrA8hOl6Tgmk61/
	 JDpGyzFdNNiKs2OoVe+rj+Gib/nURNfWpw2Jel2fN4jYNdZ/zo55fzle50BeqDYygL
	 o9CUgL/PJ0A5Gs1vW9SlSs5Z+WO7x93UbgfGm+DdtHqtihRqKh9xBQ+MNEmVO/n4Eu
	 ihEr2lBZUEY3qabM5HH7P/6qIBWLEPjz9PxmwFr0g6Y/50n057TPfTuwNTdA44vm68
	 zgea95OwKG0tafMdzfl7+UuLcQ4DUPpwnyX5DbLTR/3l30NVWfjqV2+qVG5yxVeVuN
	 G0Z1YMagMcAiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911ADCFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398811358.31859.4910103583824692341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ea8beacf4a4c510e656f173a4c142274ffc7a62f98f4a2b80ee98e40e4a245
Date: Mon, 24 Nov 2025 12:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763988113
