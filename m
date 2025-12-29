Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A302224AF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767016434; cv=none; b=b5lZkKW5VMG5HO+JpqnOdQ6mlZ9QQnU+jz/x8YXyiONqrHtYh+WC6ifD1/qxr+VbEv5OTRK/BlGoEhem8WIODHcQc6xmv5zL9IzFxNblSM6Rf0Bpwpvvv1AzCosNNiT2IAD+JGLP//nr3Z1UXjVx3NrZcXUxgKB7Oho2f6/dZVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767016434; c=relaxed/simple;
	bh=f30CalJfEib9z4x6Bts44uNpvf231yQ+f78yOUyHk70=;
	h=To:Subject:From:Message-Id:Date; b=UUXX6WAxrIi0Le8r6z4rXnsIhGhFSooyoAa4DbRU9yEtAiiI9kzP1EdazaPyRYK4EgOqtK0kqN78zon90hSAVE0G7g/TPiJLacm+dE8Vk32waADUV3AB6mlP1X37DyHu89TUJxA5UjapYTkOk7X+k0spaeIz7MAtTwlzRH8frj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3UxluiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3UxluiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9947C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767016433;
	bh=f30CalJfEib9z4x6Bts44uNpvf231yQ+f78yOUyHk70=;
	h=To:Subject:From:Date:From;
	b=i3UxluiI0RdZoC61wYTZEiu40r6l2AIKECh9zP4fAhmYx76pdT+0Gli8pi+R8lAfS
	 fHSQCVC3EVU8et6YhvhQ4H+6O5Xqeym7x0d9lo6PzmNryLh7l3zssB+UT5dGLFhcRm
	 UsvJJBbcdTCCUuiX0FPfaIMVFWDon2OC+ar+dtQQIpIqjTak/ncRT+E0zN+O2fnmMk
	 tJTmq4gclg2QJnRp+6ZOKiUNZpEavxS8cNmdZrQYlAKmapDbq3CbyFov7rxXPeee/B
	 YW8RrsohQp4hMx8kFzHNzswkc4bwQ4+FrxiOVoTrhQePSHrIQbSNqk2dVLVt5QYDmj
	 VUJyXy+csgArg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B01D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701643361.2290.7329267933166221453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a84586ad0e76bed65089b5852c781f79e1b160dc8a12cfa3d692bdd1881356
Date: Mon, 29 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767016433
