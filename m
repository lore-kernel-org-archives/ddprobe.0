Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A48E29ACC5
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783977514; cv=none; b=XChZ37+NY3+FGK1Uyli82iDkWXpKt8xA4ScpL482T89n9qwbBpi3d6HjNvcJKd5PTmAl9d0VECqwjFbFa63cZLoiVrsdyiP1EWOIrhsUUmYW9yWABXf8P/QoPnEnPSGanVWMf+3dwxQULJ9uWoKKdnUn0IVRsEhkNBTyfgKPlS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783977514; c=relaxed/simple;
	bh=r+h6bHf1/Kjr3CScz0vxFG6+ZSJhBFsudWWHHPpDteE=;
	h=To:Subject:From:Message-Id:Date; b=oJTBJO52WRyz9JP9osfSlpgWjJjorWPlogSZwgWuxRRKrS5CX+igwy3jMj+GcsbbYPnAUAEaVgXNBxg/1qeQdEmS0RWZpFcMVd53YGyUBYaBdzk3w9W8xfU1GjMUHa20Vkhrj0tkUfkJwqSZebJ19oVGxF2/10RwSrjc1MJctD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhJe1f/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhJe1f/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C557AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783977513;
	bh=r+h6bHf1/Kjr3CScz0vxFG6+ZSJhBFsudWWHHPpDteE=;
	h=To:Subject:From:Date:From;
	b=OhJe1f/zmVRMCl7QhsQeR9RNjPnrndja/ywbYN2LyywT9TsI/0cZU2eLgQ+dIpsx8
	 bELum+506qrnFtC9o/JPAL7WMpmNdKyN0PiurVSUlo9brGYIlhpiCuXAPq2ObpV8i6
	 JLezFnfiBPgGTKkfa1biSTBAhQBlA3PMLHCBh3Mg7xdSRudCN4fbH/eBBxxHvT7t2b
	 0XuSihY/o52bgg4L830IKpaLjj0iC9T/n4VhP63T0RIeK+xRR0JFler4I0AN0uz466
	 vDnpPosoBdWxJtMzw36MWWNDTTaOh9fMggdkzGxUBjUxGioO0pmuDpQw+MYE2mCX+c
	 a8zMx6jE6fU/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC18BC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397751369.31788.641374622260941633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a08fe0ff79e0a8349f083f56b1d73a52d9ca3d3703f5af802a742a8b36a381
Date: Mon, 13 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783977513
