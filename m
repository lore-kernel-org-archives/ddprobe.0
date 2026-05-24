Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2F62066DE
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779601354; cv=none; b=Qq91HiZ+Ug2qKRbWngoBn+GZtrqJrl3u5395db+45jMFh7evC7vqSnidJc4FWVTAT5mnBimb/oBpb5spml+jZPZ/U0eOPvVv8upMau3LXqfvFkra06ky7RvHvNWcygpYQvVqz/QLkrriAjcPbd96rWAuDnDEmah04doGtc+kqOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779601354; c=relaxed/simple;
	bh=r0uUPiMvRWmxCcd3KBh9Wwq3r3zKYGIsRYda9LQEd1w=;
	h=To:Subject:From:Message-Id:Date; b=Ip7poG82IZo0ARsBn49fbY58KVCycSnZ5Rx5+Nu8uVNZlZgzaSedgDMbJkn/ZZjbzIQHMZLEXBMDBHvE9bUCXZaRkKI1iCqbCCcEyoUoW5CyhoXgyJwmig0s6tsAdzWNWMEA6krA37hUSW6iZj2HT4eoGeE87Wj2a0OjTRvrWHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgergMjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgergMjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4683C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779601353;
	bh=r0uUPiMvRWmxCcd3KBh9Wwq3r3zKYGIsRYda9LQEd1w=;
	h=To:Subject:From:Date:From;
	b=IgergMjZew+ErebOuANHwFWpcc6Jj7btBIf907nhIcTxoPa2abHXFB7Qhs4rRIEwG
	 tfuIuFhXOntrjgQDfjF9t7UxOaGVKnx7nZcZvGhMnvVvMh16aHd9DdQA0ZxMb4PFCM
	 8nLrY+qKhUP+QC/TiWeXId3U6rVPXxKb8jqEP033q9oukOv3D7d9/PetBAQoCuVcML
	 Erj3eyE2DepJqiY7fwojJwczBu6IqxWrUyxo6PfKbBSVht2B1kqK0Y9f3KADjODkOm
	 c2m6CXSHQLz+pz5YeR+73eFZMIa9PQb7tncPNYmGz46WpQ4cjWqoRg3PEx+ZW6Dmk2
	 YrLG8Z80uJ4cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD661CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960135368.21898.16104585813149211409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4290bdd723afa673160142f5072a9bc2f1f6f5109a300ba4e54e9d253e6f6ca5
Date: Sun, 24 May 2026 05:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779601353
