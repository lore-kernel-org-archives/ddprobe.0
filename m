Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE582236E9
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767000834; cv=none; b=tZICiJOtPptjkwn6iUKZl1CEO2GspFkktPiQWqUvAeuNXImV9hv/Npz20uUktYZkO/pKFJMyED0m72qZ1D7EM48ZEHj8W1T+wwOso6fyZ2pHqrnNIvMH6hprnojwzgR0Qfm6WxAvxMkAFkoowxUUpFcEscp0apuWsLdF+Qh0IUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767000834; c=relaxed/simple;
	bh=S+PCNWDpCAK61Oe7KeESammVPtXgQrWk9LxJlqg3ed8=;
	h=To:Subject:From:Message-Id:Date; b=gcAVf+JHgR10g1Bq0ONYF6TixGVrIC5de8B+tfu3k/a9WczQCMuToC5mGzrmR7pl+uAxnV1i5q8vCiPAoReCCK1yRkE7wiTjB3DUM3t5o8nhr/KKJ4TEcFuOaeV1bjfiSi6qOURVsNa1gQq9+UKvYPwZMvkuzmtnT1h0wIt+3qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbAfYUAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbAfYUAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31B2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767000833;
	bh=S+PCNWDpCAK61Oe7KeESammVPtXgQrWk9LxJlqg3ed8=;
	h=To:Subject:From:Date:From;
	b=tbAfYUAprvjx79BLPjwRcAatiflHYYZKXJMnY7bGnU7Oo2axRaP+4fmfDqRIieuJe
	 BP4sYdVMoeokRCsNnUfYOTaekuwNt/WBIKoEdJdcSC/PhjdhlPlozXcIP4qGZDqdWd
	 BDBMPs1sASejV7FnbsOasWS5JOcqyh7IeCT+9J5vkz0jbRia60mD1+yB9BuOjZd1iR
	 6VaY5mr0OWzvF2qV0jako3hkUuQJDm41iQB+AS3iBlV9MsLBMIZPl0PlbOwtgT3izM
	 cJIo3poYvQqQWe9GC+W06Tm/CkQkmALvVCBf5f/4zjLzGUnuiI6ixCh02zQ2nNu2mH
	 VL5XhCNbMvz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C74DE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700083362.13754.6766573980568272059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92498e25c87178c2287e9ba395c003f840fbc5dacbc62b8933dccba324d85ce5
Date: Mon, 29 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767000833
