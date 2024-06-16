Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7180C12E5B
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718570303; cv=none; b=IEIkOeXuofH5UH4EbV0Y07zzXC4Z67FP9P+ozWJk4zNQLcbyp1v4B7dhldf6Wj2x7nstWZnSkiuxd95Wa3LEZ3E37uOy9syXFiSo4YGHeYHNkjP8cS6yc2rjA2NbDK19Hr0qOl5nUFF537hUNgccwCN7GffgEp+9lwNGEFSt8Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718570303; c=relaxed/simple;
	bh=da6mpwoUh6AXj34bWLzqkjx8h12ohxMTWWHZqYKHlQk=;
	h=To:Subject:From:Message-Id:Date; b=sH8Gtl7rrvrShB/sZunGb3hWO8fXiGHrNa4dJaC62bRh0GUUl8tRtyHW7mqu3CUSmMAVyvI2bSuu9EWExFBBA/Yfwm93C4wo9RBqDVbPFSaeK54Xmj7Lt9mXICSrVJHGE6+4ddWD1JvgsWF514dese1JkzbHM8Mo0iaY00aXWRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkEATYbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkEATYbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1B1C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718570302;
	bh=da6mpwoUh6AXj34bWLzqkjx8h12ohxMTWWHZqYKHlQk=;
	h=To:Subject:From:Date:From;
	b=lkEATYbizEFp79YufL+E68tkVhHJNvKEGpeVZdVeDA5//gu+VLFow73WulHNmqSp5
	 FOQ/OR9Zwb4HmVKVLqJe9lsahjwwryqHliQXGvhTacFStlBs84vY8FeDAr+Xi0M6SN
	 KsZSDwoJf4DHv8ZgZeROM6oEKmggfGOOkELKk2MzDzPCXDM23walyQr+9Aclt09eff
	 LGUCNjmWWqSV81/AqbV7L0ciGc5fZy9KNKLWMsJErcS5xJW0qdT5PyVwg9EoK+T+ql
	 U/l0BeVRHo5TSy6aNyrxjMryWysd9yFiO0uS9TfKj7JTHRvhTDlFMneEyBQ8THD83R
	 lMPcOS4DIW5CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64A4C27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 20:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171857030280.15631.12045280193123956231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc3a76c6a1ba8a30716c31bafe338fe0e1c52a4f872894020648227110e230c
Date: Sun, 16 Jun 2024 20:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718570302
