Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269F2215F7B
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727901354; cv=none; b=TxN5P36+nsH5rjEI6gVjcxABOOb0tieCXbi3iAS57bWVjjDwwBO5V47fGBETJPTg/zgmRPfCmoWaK9e5eNURFKCp5EqUpS1h41x+qmPv5o6IdxGGsANZ1DbIYQX2zz6XbDG3q5Hp6LG7AxFR28D7cFFpB2366PjdQGdjb78roEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727901354; c=relaxed/simple;
	bh=wqhL2idlBt6UnENOWZ7jtZMIs5QkDWs7bX0MsmzwB3Y=;
	h=To:Subject:From:Message-Id:Date; b=EYPcPRxtuX/hPygAUqQhBh29Rw8vkL/3HOmw5a1rVtMiLJ1YRaYKzaNhVGCazF644lA5B3OX/mi1b1qVr0IoW5Hl5xWtTp/fk8ytRKiEOGquVHNkuXmDfhoj4mWpG7THvsUy4XKDjaYxjIJzVTwj+7Jm9snc7SyFewRpI/Wydl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wu6VWoez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wu6VWoez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A960BC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727901353;
	bh=wqhL2idlBt6UnENOWZ7jtZMIs5QkDWs7bX0MsmzwB3Y=;
	h=To:Subject:From:Date:From;
	b=Wu6VWoezNxhhcT4nOsPfc+Ph+D8RXFxmOwpCyhUex6Z4gh1CDxyg6q0TNFdv+VP1Z
	 h2r97P8NzPPRnlnorKJXpQILQramHXW1zp4WtfmYByQAwzsPGWz2wqLQsG/1fY1T7R
	 oDCqXgW58RCAh+slB/vkEGOIm6BiWyJ5MsCEgX++VS2SYaL2T4EdmqCGOWBl8hk7Hl
	 1JlLN4yGcHGN8ETsISHJ2Cm/Ayx2gknWSOQ5yr1tdftqegbGieXc0eDUU/tvo40thM
	 6pe/oowjvQz+86QfJk/xss6qSAdXp7lEpYTPppCa4axvMHWdgrLLqiGjDQ16FT9+XQ
	 b357+adbqA/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97949CF31BA
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790135360.8295.5396018420992101311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07ffa6646e21a6c50f354a351f5a56d73a9fcd937921c05f8c5a34261086d7d
Date: Wed, 02 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727901353
