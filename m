Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B0521480B
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753949394; cv=none; b=EO0MlSCO86pRxk2J/UnDody9BrARS0JS3UujS3frDYaXiDttwjGCqXifokGi9Wie4KAJt2PKcHz4FTVU7q+hS36Ix/Pa2FlIcfoYdyNsrJZqT2AgkyFcETW/vwMNZcQO0Lhu33KOnt/JN1ILwx85/7OQ817N6U/t9uaJeGmnCwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753949394; c=relaxed/simple;
	bh=UTU/j5jT/Np1brk88qm3U+Fa6iRpS8TrfhBZiTwcRXU=;
	h=To:Subject:From:Message-Id:Date; b=aYs8VjVoVlaMLUuAyqHEHYgzKJjxPF/9jXIdah06UIbdF0sEeNjPfSjsOJzuaotzh2lP7G6fosJs9/iFMNhWUNYfMvmmbG0pRP/Az2gzPsj4vLq6nVvhu7swJZm9HtdSXHB3CjxjRqqqxWnOPVp5ujjgK0ZjY435GbjPRku/akY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+T48h4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+T48h4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F54CC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753949393;
	bh=UTU/j5jT/Np1brk88qm3U+Fa6iRpS8TrfhBZiTwcRXU=;
	h=To:Subject:From:Date:From;
	b=O+T48h4kzVSA0OBaiEcjk/jxD6moYPGijJK/1S84Agi8/EbYdiXBy1j/U3cBSfJ2X
	 4Wc8zPpn8w7Qylle7jQ/kEFXNQEOjjYNmjbwZ69+VcNY1yBIWTponafpkMDEz5ArgL
	 F4gEuJOOVFAjY0uMG1ulhFyk8ntZ34Dv1YFNOdGTcePLj8/AG+GtUiZgKMgWlBbJ35
	 Hwmi7F0Wy7PTqzRBQlsUrtfqLK6HdkHcZKk7byamb8vxTpcl1b+XsWQNbZgipG2UYj
	 ykJdv2MDtuHmrB5LPZM0ui0gqhGKGaOPzfrxrh0DMAanMgrhm1QIiXSzXWHw5EnVXE
	 Y8+TzDvMO9kPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC46C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175394939357.23525.11804796422145064224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e52133ebedf3a3c8871f36b6592eecac550df1e71ba251e9b6816895a29e8f
Date: Thu, 31 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753949393
