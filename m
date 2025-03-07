Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2F02116FA
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741353535; cv=none; b=ufRC0Tk3XQNQsOjwyYUg5sUQPCZOycHQYH8P3NHrdxb+7EqA82wbkDxniL28qS+7Bf1DslWmox735lNi7gQfiBNjjQrasZtdGNvXBzsUYAfj4e62gVrARE7N/LWji/PDnF++rxUxuPAtdpBZHducaSINJ0S0Ypupq005QHbAv08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741353535; c=relaxed/simple;
	bh=sesq4b5CjgL095xhWsDNK/zXJV2GsWFNt0as28CUmlw=;
	h=To:Subject:From:Message-Id:Date; b=R6CXXqCd54t2yYqNndwRW+9GjWMaNdtbNJ9gsvm4EztD6sb5J0vMJ0gtcGbttu/1Sgfxsxs5QfewPYNE6oB8lpipcS3mxdqUizEBF0yJEEfL1wJXshjsDnKv4O3op5urtoO9mi4Fwronm8mET+1hohZYnZyi9HRZRN6gkNUd/hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhngFH+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhngFH+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFE4C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741353533;
	bh=sesq4b5CjgL095xhWsDNK/zXJV2GsWFNt0as28CUmlw=;
	h=To:Subject:From:Date:From;
	b=JhngFH+JPCfaJRVmYq2MwBCAi0baPGrQA8SlpAJf9LWM3QQ7pJ8OcFT9RVg4TUxWX
	 XLlBnS6fYKr+P4TLiXSDJCnFEAfXAqeVMI/564IYRkVY9gf8vSgsebO9e4/tYONAAp
	 G6UTs3MoAQs9a92FkoCvceYfv6NJQ2fAlgYdeBFkiKH344vq+x8672RAjKLrMvT5so
	 EOHDvW1xmKgp/enJ9j6luKS6bCkf+7EeI5tv6oZP91o2OHOsFajXlFuqdPaHEDrDZ/
	 KZVBbPWwcdORWmZ8zrgxUWfJ9rJN11ZggrlA+yfeOGP8yJ5XVYl6pRxTU+8vfy7ePM
	 TWfmLWYNRY7PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9803CC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174135353361.23948.12884746443052515421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ee64c66ae0bcf16661ac5b21b23aec39e0890999897f329ab5c9669b1c4bcd
Date: Fri, 07 Mar 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741353533
