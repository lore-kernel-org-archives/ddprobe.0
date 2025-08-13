Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1205E1362
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755044394; cv=none; b=tdzaevSgGCKmgAE0a/wqd7BmwFWOVL5jdGkA9vvfSd+5fKNTcc6eklbGK0r2LgF20sddbn463e2qBCwT2RP8Om+/zWDl7UEoKM3NlLmuEyfaKClk/+0Pw0YJsiZuPUbSaEYUtVInczfmSPtcrwxJwqKyI/qstc6OjUOKm8l4/+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755044394; c=relaxed/simple;
	bh=LSZVNrLQ4O9VZx3ipXyQ09iVANraYxkNC/1Ur8KtU/c=;
	h=To:Subject:From:Message-Id:Date; b=BndSX5hUvabV7DuYO3Q0qMdMteQH8U6KLsAFHUy4ivU4RndZfFlzm48Pllq2V9LGa+beHPWUjQl1aA4Oi1DvvZ58rY7k8KnQRn1o/ACnLFrIjcXKPSo/qVOUeFhs+1+b88+CZai0GHlTKUOLugtRPzf72rUrj8Zwcn3fn9WJ/GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MT1CTom1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MT1CTom1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24E3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755044393;
	bh=LSZVNrLQ4O9VZx3ipXyQ09iVANraYxkNC/1Ur8KtU/c=;
	h=To:Subject:From:Date:From;
	b=MT1CTom1w+YOIqNhnaT6eKB+fhjHIkN53acOKu8MSVT4QwtpvthGeMw+jNOu59nkM
	 puqI+wy5ZSZh6ybsRsmJXBP+WC0O7hSC6iNSfYLBq7wKI7kKyBPWge8DCuxoLZThsr
	 OhvprB0aT5+yEXuirsLeOyTA4InY+QVeW0zP6vHJOUw1od6kzSKyFcFDuK3wGXtzFo
	 Lt67EfF4OTK7c83ewm+IIllb6wB/sLWMJyGXM8Gg/ahI+J1PMQ7jXgQVdMC//SP7Zu
	 cFjIXspQR6BSAPr7Y3iJZ+xzqSKyM8mTpM5fwsTXVPB8Pg1L20r6e8Q6uKEI7SdwJa
	 Xxd1a43rUH2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A1CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504439357.6759.444154451623189015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e5ded8b6509afeafd23994f87adbae720e0aebaf3dfbb7c05551bb9a14f7b7
Date: Wed, 13 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755044393
