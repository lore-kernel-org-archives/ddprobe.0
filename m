Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F96517BED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748168394; cv=none; b=Y0XdEK0ckN/sC/ApfjlDN+URmUanSpe3wpOS04mxWROQsByVZ91canCzTzxcJqSYU+fajVQFvbI72mkZ9Jn2thFrMJNUkcPj213IpFWRqkdURS+yr4ggDaGSeMEwGzoZf8Eczi1FVKZsBIUmDFsvc2nmZ/uJe7h/ovTlUkIPMkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748168394; c=relaxed/simple;
	bh=IYj6TTP9lBNXq5CiFLDyW+pa1HliCLkbgm8zgJF4RxU=;
	h=To:Subject:From:Message-Id:Date; b=CYAZ3pHcofwMBwIIiD/dW/DICuOj875B7dCPlpl0RkH/Tltz65eA69xBFYjtrhUqv8+Cg3Nb4OAXjEL0KHgQ+rqumk+8frOAnGvPgBIppI5knrlVjSqObdkCOHF5eVHfm3miKrFZbO9KwD/FMmUYoIYJh3CCT/2x02NGd6vUbkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgbOJCKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgbOJCKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11CBC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748168393;
	bh=IYj6TTP9lBNXq5CiFLDyW+pa1HliCLkbgm8zgJF4RxU=;
	h=To:Subject:From:Date:From;
	b=kgbOJCKcWq85Oii4NSZtNWSYgHDmY79AFpiwXVuFbyQjiAapDElF18raP1IJqnkw+
	 clG7hCLFGUNtB5yFGFlRAnAvxOwaHdUZc/cweAd7BT5QbJ49cEHBhGC2DzhjuyCZq0
	 bl0xSnyjHXr2Wi2WZnJvr3BhCeMJifPcJIgNWOk/Yu8jSqH7Ow/Sd1HtNPY53lomRO
	 MMdUUkiA9HO/Dg35tVzmodpUkvsgeHwEGHiGKAQWONEXLfUJX9elZeGH8xIk5y1y7Q
	 AtEQzrG5CPm3x7tCrEFOGU/m1C2xf34Mj3AqKduSldBpic7qe/oIui1yehXlo+XrVF
	 BhhLivPJdokhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A4C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816839357.18870.1563491449053418002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7bb9373d7918c9247be887b4e9855b5d31e50b020d2f1ae468c00dec14ae6c
Date: Sun, 25 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748168393
