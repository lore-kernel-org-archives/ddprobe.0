Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AD63E4C63
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776936454; cv=none; b=dLle9wQPd/lJOgLimkl2TFSeKik+7Gimiu2gmWynLLm5YsdDqE78eC/pWev9okaVMhvNWpXBMj7pICwebvkNERrNWgCkDVxdl1qupEyUX8zty9VtKBil4cWGICypPsxEZWsa2E8+eU2jVA7Z+PlPeHWE5FN7CWNYXISqvsZZYsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776936454; c=relaxed/simple;
	bh=I+k94Ex4cRvaPJSVXReFDOrP81wSzJrBC8HkqRGBYi8=;
	h=To:Subject:From:Message-Id:Date; b=ONVlwJrv4GnNCCIuWSMaa+RbH0oa5x+7rFa7VXWqaLJ80oTdbf/Ts62UKhWinvMkJPFZSBLGNDNbStGyvMq3VNoYL6eMRUtWAG3HZSfMKqPsZllr6IG+hLXpH8YbMh3O6f5p+ZHOZg7+5ONWGSa3R0srW12kfcw9j/kqWU4fP/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scd0d13g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scd0d13g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BAAC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776936453;
	bh=I+k94Ex4cRvaPJSVXReFDOrP81wSzJrBC8HkqRGBYi8=;
	h=To:Subject:From:Date:From;
	b=scd0d13gpXfhk6mUp5s8iVUjtj86fqiWfBcg+xDNLpn5CX+utEgRzwwdI+6+HtFhI
	 VjEJFYzuQb0TnF4tlBdWBnStm37CndiVc+eliqGUjPmHIvyMyANE1X75v93I3o0yA2
	 9/h0OkTv/sUGD7sU5GUzGiV2Sj6L3Kish64FoiJFjFEhTr9dtACvm9tKsMVdR1X3So
	 tGfYWjfpbaQQEt5+MQjljIiPI9WrbttWxmVbECaIjyps3xam8TLKKDYSNcFVbKsYZ7
	 D69vtiGhvSiwVLYtmjAmOtiqj3xdKtKMQdNfpSrnRSaQb9sEvQD4cNaSHzk/hb6VYl
	 CHNBbSDZcgnJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA536F9935C
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693645368.23727.8197927083812833202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3850520f5c85a8a16b71f8b4c98caafee6056c796ab7e129ba361cc5b01fd71e
Date: Thu, 23 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776936453
