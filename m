Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F291D86F1
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730816754; cv=none; b=TxlOcJiclmdtw62JrzViMpJHoKLDKKi87TRvapjxqqxDh/Sy3rWVd7ODy0Dw+BoU4lSI72FYSd4by4iFxGt+zHF5XZQffixPxHm0hX6acIDbrecuXaBg0R7yF7Ul9+fTLPSRqju/YA11fMIIAEYJhafSDkAjrAcWsgj3iHm3RlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730816754; c=relaxed/simple;
	bh=5jmIBsdgiLKfe3l2eW9mKt9TLH5QjWoarIKdDoGjVzk=;
	h=To:Subject:From:Message-Id:Date; b=pf+ooPRBg0xWyZ0rthAgCQERQcu03dvpBUXMmgaAEkwj+dVlg0dclVyNq5jxZ1ePbJ6Wi0qEVjj/WePw3PrDr78LxVspgYPiccyfLFNbeMBw/0ta4fG7vGRRcK9ZYiQRdm32dL3+hHh8HA0u3mY1o6O6dAqkfYi+EC37Ue3T5C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSn4OZso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSn4OZso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A1DC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730816753;
	bh=5jmIBsdgiLKfe3l2eW9mKt9TLH5QjWoarIKdDoGjVzk=;
	h=To:Subject:From:Date:From;
	b=uSn4OZsovJVtkC+NQNX43v78f8CbjcZpmchEX8VfzW1q+wzTVykTlKSV5vjRqjuT1
	 VsfFH3dynw49pctJ+icH3WBp3AkQJ+f6CtTLl+O+8cc4oLLC0opNzq5Gv6yteIQ+na
	 uVG0s9N5G3Z12vd8OHi0ipQ1MsuU54TvrLr2WLlDkuQuVkxsLvRE/0i+OsJMv78+Np
	 iqvRed9CChplDuwxXrSS+Y/H22rOF1biXHl4Ow6jrLPoQ5LXIpnBjbxg/WBGqwo1sf
	 HigK/M0UvQLGYOyewa6JAQroolM8g+Hn2aE+pBljagXiILSAI9sc3zB9iyma8Kywy9
	 QE/MC1wAAOzhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D30AD2B931
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173081675363.8194.3472864815436054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436b16c19b67cc66ea160d250cc5d5a4f9a3b24f8be8d325c19db770e66f4daf
Date: Tue, 05 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730816753
