Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C019DDC5
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760903394; cv=none; b=kzXk6NylP2VSAzCRnhC6VJ3V6vESJwrtzFXpxARh4gVav+Od3puOt4xWzohHcuYGE4/kxZOEZaAWsMclDfoullxKfsnAyb+UNYt3xdN/oXcdMyKznWLBIk3EBdGjtoHOZzEfBROiPUs+/1VMrSYbxGvJwag3ysCisvMItv355cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760903394; c=relaxed/simple;
	bh=EKVNf21U+UHqLm7rTUDdK8O+6x+wz+FdKmV0zkJR2bc=;
	h=To:Subject:From:Message-Id:Date; b=GGX2UyMKpD3T94M7p9khRbdZkIO+AqXkGcM9k8dy40TgAH9OHoxCXeYeYnCEsbw2sIDcrfN9GSzWDOD90Zw2VuWz2wPdDTrYieP55JKdjShDbhNWR2Gfq2WUJum/TkTqmeXdkESJUEEz4POvifWIpkAR3QBATg5Rz5bXM8mNwx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GC0SaQ3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GC0SaQ3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9885C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760903393;
	bh=EKVNf21U+UHqLm7rTUDdK8O+6x+wz+FdKmV0zkJR2bc=;
	h=To:Subject:From:Date:From;
	b=GC0SaQ3cJ1zS3gYYk4IsPfNggbvhYz6ZYY6UZk5Mr0ldEzHoHMdAGN+wdHv0xKo2Z
	 CQppBC1HYUBewHkc9t8Xn5U0TLs6Ou3S6ZKySTMW4gukMnJqF9Vv0oH9iBK47lALsS
	 01ixXSchT+Pw+4SGVQ+Lq088l48wx7hH5rZsfcX8m99J92ZpOG9I+aIivRDOAMI2iL
	 G1recWv5EFwCQ7vp4We4l1SSzHKPSzWIiQodj0uVt9N+ZGnko3yBn9ZceU7QJdLbK7
	 pV0AxzuosNt67lPPz5UZXjByKA9HbizAkBiu6de1gD5ZgOqlRiXN9h28z9bcaDdete
	 8ymnZkyLmXaWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F1CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090339358.16881.15902672233019238217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748c944cb1577094b5d1ff76d0f8c99be8621f56e8a365d4ce066b051d219d9f
Date: Sun, 19 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760903393
