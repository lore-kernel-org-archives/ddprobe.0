Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506B537E5E9
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791561034; cv=none; b=dXgeFMzvDYBrBme7P/rcjosEzCKM1L/PYHL9nn2ERPAmVfodogC27qMKPlH8Y6Ei78OKF7pSoyyp82HQ7DpsSVVL+w5jkdEAVwqFGyoB1DgJkFD4dH9X3hDxXYeXauwpAD5+8C5c/vRVjvGellpzq1FbQkmwcn/JHfAxSv8S5fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791561034; c=relaxed/simple;
	bh=cGPIiRto453XPW7rv7T86O+qrAHciU1jHQKuJdjMkuk=;
	h=To:Subject:From:Message-Id:Date; b=IUWsI4GqVZj/ZYA9iTF9cOJC/DtbqAIgq7EPAY8CHlkdowYADaHO2lF+UK+1ry5xbY8Dv3tg7ZjMDPxyiWsGffYFRBdjPIklsefbzN21g1AYiiT/U0PMSRWoTWHgFBfBQ1CY3gqpB57PeQ3LZ9WVSLeB5z1D5TX5yA74yFKrMyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSQt0Mi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSQt0Mi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1204C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791561033;
	bh=cGPIiRto453XPW7rv7T86O+qrAHciU1jHQKuJdjMkuk=;
	h=To:Subject:From:Date:From;
	b=lSQt0Mi2OFTel7lS9BeBVyQrx7VS1ny/zj1IxXcsLWDEYnBwbFK9yoIZHGS/68XIs
	 Rlv01WtAIMj36ku4ZHsJA9y7QY6Pfd+PBAbyZDvnve2ZaewqpCSYvk4kJu/wOQfs/4
	 UNSnsblnGYozmyKXC/GJBYNb76DiKlvV5df5v51RivDQR2kpohRjPF6kYNfk7/YHQh
	 Yyc+KU3D+VPA057mnGf4xqHwQ3zCtjImwaFJtjMtztt3vwdhn92KRHlmRBfldkk50V
	 e6B5xAj5bhdNomt3KUCkG+Bnr8V/DUTaLBawoF4HLtlyJvyapUgQ0UL98RINpvr76O
	 0UOUi0jgpx+Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA44CA601D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156103369.13089.15994948613284092411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d2f86e6174c324ce9af9f7038366f8226ce76611730c3ae9f8e32d4d4f4888
Date: Fri, 09 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791561033
