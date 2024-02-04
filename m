Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D40613C
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707013697; cv=none; b=E3W/BgfJAREMoFUzhAI+NJoGGKheIGj0jEVQk3AooCs0WC7kQiLVYZV8HnwNcTAxrvSpCORzPlqJkFXdA+TTSJtIGYGM/T1ekNoBwzQ8LH+7dFMUKiPfwm9n6eU3bsoDFSA/L0mCICBwoShkKlCKSzFYpgMvmEVFhpEG3UqQ3Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707013697; c=relaxed/simple;
	bh=mfdXQ34AONnqtY1ZpGO5xlKMxktTtJk5o7txXnJzwak=;
	h=To:Subject:From:Message-Id:Date; b=PYWHc7XTZGmb3EsrFGUpFnU5dgzlHdGDOpnAY6dzLXgDXP1JfPl/WPj40mjyMLTekvVPVcVg3P/UXoLpxta4S6DFZIWFfelKvjBtKuxRtZgGnTg13Zq4B4EkBGB+yPHymDYbt3k/MdD0H41KXLOjrR42dUskbPEAPDpckw4c2rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEVWot4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEVWot4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C442C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707013696;
	bh=mfdXQ34AONnqtY1ZpGO5xlKMxktTtJk5o7txXnJzwak=;
	h=To:Subject:From:Date:From;
	b=bEVWot4rLkvh+HIn50dExIiiwRB4F/5YvqpuhcB6wQToapv/Sr40jdmvVa7Gdm6iy
	 7DtzgnnsKTT08NA6+m8ydvYYNWYGNxg/+AO3oTJShIymoMVvEY24cls3zBlQK9sPCa
	 dxMKYMI6jzEESGMzpm7WAdB72iKhYk9Z/I3T/18SOT6i3rxRqe7BHuBu9ADcB4Zr1o
	 U8WAOV3OBlw7IUdHryQggxyQ7JjHRRSGXjjmCY4qvG/3Zb79Us6LOr0pweB7IARpYj
	 maux1LiwxTyQQw/yqh7Ks/eAoh41ZewSrnc0A12O6cWgApSzC2Jr9biY40I0i/m2j2
	 0k/bXsEBfzXrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B456C4828D
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170701369640.13277.14647079325606284967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c758a5119a44fd18117cca24c71bb24723965c8faa4707b41812dba811a5194
Date: Sun, 04 Feb 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707013696
