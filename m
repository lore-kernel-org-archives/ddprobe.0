Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182AE3C342A
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782978514; cv=none; b=Iov+2gjGjTgVssiOQf5QyQJX0iJTUYVXcvnTvgBKd2QFfdt0h0hZ0ftMyMPfyxOmQxv/Y1ZBVjXuxGlXORzGK/G3IQ3dj1WuboQz1F0pidiXfGtPQ8hO6F3xP0hmHdo5cUAZsrpPoCQFTJKhESJajdvfv5g5+kEV99eg5ZaS14g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782978514; c=relaxed/simple;
	bh=hogf87GOeD9VXBQ8CThKGHIi3QHdHzSfXFAYfQ2/zCM=;
	h=To:Subject:From:Message-Id:Date; b=dmg7Xcxprd2uSJzWcSFo2GQdZr2xFBRTuwuMEusipWoqHm8GfEdYfQraD+HPVclDv3j4bNoH6lBvFns3lDmNorSZ8a2NRG20hEAr0bIVykVXL1z20IDpqBevloEM5YkyfkqVjaAC0YAWNDzoeXnYgQA/CnOg3jWqPCoNuartsEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fy7da+w3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fy7da+w3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB507C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782978513;
	bh=hogf87GOeD9VXBQ8CThKGHIi3QHdHzSfXFAYfQ2/zCM=;
	h=To:Subject:From:Date:From;
	b=fy7da+w3gXaHGQK57OSDdB80SKw8SXiKLUbFlpfwBW1GObLplBcRYzDSYw4vlxYrh
	 tUzAG807oyku2GrZwBdOmfOOHJnkjjKvAyXMhXr/Pbp3Y9rjXyMW+AhH0mSqYqRi7i
	 XR9XJCc+16tzkjlN9SIo+KGZ9ZDiKH03zuNLbG0sug7kUWMTXxZQ4qPCkY+GDNu9yq
	 1Fxcy+DVDxgnFQFVntPP/ll2S6LjrrJwVQaNSKFSE2CUaQqd8r2UJq8wqN3DaoPM/g
	 M4FNGZ3hEfRrSsv+zgbb7nQkBaiL0P8SGo4RTcZhn599moE8LOdBPVEY/n+5kBOAMt
	 DOHugekK6bJPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B1C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297851368.4662.16076537458812020166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9133f7fb297c0e2061e9fb1ce3bc114d309c016cb2df44edc2358d195066386
Date: Thu, 02 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782978513
