Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE810227EB9
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774318494; cv=none; b=fW1MCK7+iiqaKS+DaipURcEuegnASdNL0430p2WxOlRUUxovLUqJAvL6d0LwNFjLQntdTSmLENuCNy39X16f7PpznwIK9ZynXW+dnQdHnDqryC9Zu2mrkK5Dpm5DU7gKtkOHkT8nznpAQpBsRPIfRgMSUUzrlFuolomh4A6+adc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774318494; c=relaxed/simple;
	bh=Z6h1s4jU2qWs4GqxK5Upd7xuxs5Dp90V9ZFGuKgwRXo=;
	h=To:Subject:From:Message-Id:Date; b=te1u0CId4JrcqWEFHeqRUBD015NEOO+9XGO0CP3OVtJ2FTKYnLYxA0lhNVV/Dlvo+kLENVrIfmzeGu/wv/67CBpBhEI+SuYib6BjYjJJyuSHCeR7ADNGALpoLU95CnKWsmWH+ILKpN7wC73FFalDHQ3zvtO+IXeim0yG2LN84EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8kWn12o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8kWn12o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A1AC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774318493;
	bh=Z6h1s4jU2qWs4GqxK5Upd7xuxs5Dp90V9ZFGuKgwRXo=;
	h=To:Subject:From:Date:From;
	b=V8kWn12ofNR4Ruv/lm99m0hZdQ+uUW3VMH/GMCHGinue5hCwuLr/AQfiAcOHZjSSv
	 ou1nhcT7UkN+Lpst0c7R5Q0OpKzm9Qf1hDds49lXEHf06EI5wqVi/ZED30EUioeVME
	 EKMQc+pzb4OEnxkBf24WHroCZuFh7j1Eo0fyjW2IWlVA+e08OdJcbghesymXYCrkI9
	 o7W6LxM/lsJ1u/d5QMRGQPW5ECwveHOIhLgUI0dAMexR3DVFzfN8tvJBu5tDQ6ujof
	 ZbYSkdQxxzehEFFa1+C+m2rgbDnojA1LL0LrGjg3QYwkov7qpGaRCaOd+jtT6dG6+W
	 zwxtjSlZa1+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9115EF532C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431849358.29575.6518926546124059419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89db9a073984af439870b3b0b0d1db62cfe5ed8884e695b0c88923195be876f2
Date: Tue, 24 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774318493
