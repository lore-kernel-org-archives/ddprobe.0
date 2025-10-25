Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB8A1CD15
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761363594; cv=none; b=Qf1jftIfZSbUgFKegJXNR6FOxMaH53y4jKtAg0/qWGKSH7iYLGbcsn8k8qcajUS1GNoVDqV+d4L8x78Gfhifi41qnLfQxN77yK3JJkqaE9wHXhtDMZhBFq2nkADkNBOAhZRY5tShmibTD8Zt1H3qO/8XUQYzhF63HOWeUHOoC28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761363594; c=relaxed/simple;
	bh=6biGRlM0F2lluwuHrRoS7ST3WCYIYlcG4HXa2ajFfGw=;
	h=To:Subject:From:Message-Id:Date; b=S9SlGaOY5K1UvvbePvpKOONPDnxe+/THK2+Oftedczq0mRSlZI23zaKZEvoKlpIWRbNwnrbb465KlFHpO7asGffX7OJO2fnDeC0HwCr/WNFP18odU+vuhuDUD7VrvxBI8gV0cGwrkJO1whsof9tZt1rBpq0NR3Gxxhds7yYZrhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsZE5O5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsZE5O5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8044C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761363593;
	bh=6biGRlM0F2lluwuHrRoS7ST3WCYIYlcG4HXa2ajFfGw=;
	h=To:Subject:From:Date:From;
	b=OsZE5O5zfm75199v6VnkbtebPVS9PGyljieTFCPwwWp452SfWvoHa/FKQr38gySfj
	 kvembM2GuDZ1y0DgsPkzeLfeQE/LikJ4Y/l1DJnIll6Cx5v6+UkoPipdB/EKwsxK3/
	 hJv/dX7PrbpOwhANCSabDe7mG6I20YJCsqQN+ovLBEiTklhussKrv/IxIfPoGnKl5b
	 tkDSdj9uxGmLB7YYzSDLUHxTF6C2tWU9SwoqYvPydwxwityQGH6YILjrGJhl/fLs12
	 k0iKfDMSA9i8NCfW0Sd1tqwJGRcC7ekTyhcfrS66gGTaFjpiPhjeeE8KGrOGD6S7lF
	 4FO0UIqewX0UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F1CCF9E0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136359357.2227.6419714907555431107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84848a20663817840c0a6f90fd42636aa48af9fde404867eefeaf30e79ecca80
Date: Sat, 25 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761363593
