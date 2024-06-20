Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CD1639
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718855363; cv=none; b=EiwgPQiCsrUb9gghCrdyndB+xdM6hrLn5eNKiGfnh87HT09xHA6VVkkIKXnCWM11zkHhG8EXZMIURcyYmyhSYBgPggh8k0NjJvIBv29B6fugV7IyoCzIBSjrUEkfGkIHNcmL+L4FwNkXFhQ1mkWiShjYtozVhBhSQqiO/RobATI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718855363; c=relaxed/simple;
	bh=ECDY7zIucDsvtBtckYSXxkEfDKGRy2zvEqF9uBt9jg8=;
	h=To:Subject:From:Message-Id:Date; b=QttRxJeAotKdDMyzMSIs3Vke52Nk62UUqqyZK/kWFkH3A8g6f3IlSZvxr9SRv/jv7/5gmfEIL7urzRcTILas0laiF+qJWe09ZM27tX3FalNEz9AGI/tPSmm5n2KEyl8SACDqiRFswUZ3QSq2VOGaUAIkanjLsOMSyU7zeJ3qBeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzRy6Hlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzRy6Hlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D338DC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718855362;
	bh=ECDY7zIucDsvtBtckYSXxkEfDKGRy2zvEqF9uBt9jg8=;
	h=To:Subject:From:Date:From;
	b=XzRy6Hlzv6JR8LLQ14kqWLC2oHs34JbrT55IP3Z4DSuTIImQ9c7Jo8kDy/Ihswlvf
	 3iEVgnWW06vfXytog9oJcc8pWZlgnqUsGTkfUGVmbVnX0vsfHLl1CJPHKirTWeGP9+
	 HztMDbWEoHYjSc+KlJCNRJ02DZcQ6ZXl0GbS0CplY1vtDc/3Weh7qR3Xy9kY4TdMpp
	 j+qFwJPfH01ZxW7vbqEMQPcC5jig5bJ+7x+Tg9DwD1K08snm9mrkUMVEzvfP6/VdEy
	 /YgMjX2w5xsFR2BHI29wHFt7v2e4IHrV73JUcDgTvVKaeCLWWhYZxoNEMAwZayqkpO
	 fKZ62Au3u7HRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECB5C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 03:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171885536277.27606.11217893336284502484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306aa22d071ef0e1ed277539a57885cd6c942b5d2b6d2f671da80a2bf522e65a
Date: Thu, 20 Jun 2024 03:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718855362
