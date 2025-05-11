Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463EC266B77
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746992394; cv=none; b=OQccINPFq8fQaoMnT+kzpUOM3GfVKK3DG6YMMu+NPwWmW847aUNmUUt/dmlt7RuEDs23kRzat+cX3+J6CU1xY6nXwEtzvgN33DN+sQqHyE6zALdpjjv0MAY1+b7YKid6AHU3xxWHny1PyNlYurOkvm2XUIDplYhjjh4uS9jmC4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746992394; c=relaxed/simple;
	bh=R8OpY9jLKjlZj3lOk4UOY/x+VpQP4qD8LMVy2qsL2K0=;
	h=To:Subject:From:Message-Id:Date; b=PS9DD0N+asutuEo6NKLDIchz7ezdlZ7H12k2c14LgCxdWA3tNnUg+WD907/jfOe+VoYhQA3Eh98D6BAfm6qA6SB/hOozPudgKJ6ccZqvD529tSr59+rWDpF86UWcaOLTKxJka6nMT9TBlRpLu93SIT0AyZMIvt1rCFg1heTEOPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebhEoPqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebhEoPqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746992393;
	bh=R8OpY9jLKjlZj3lOk4UOY/x+VpQP4qD8LMVy2qsL2K0=;
	h=To:Subject:From:Date:From;
	b=ebhEoPqMdApm6pocV0M+eXj22xcYcnLOw8DbI45a6neccjLNTcEyN1I/CLQQTZSpO
	 UDGM/VygAwfTh01TRv/QrpHuy2O93IJQtQwyeZ1HsEuT+7/sVuPSPGcfC5AX5LBetE
	 enY/NI2u0LjWs5IgQQ/JFk8/g6z/NEIxrJonwriW+iqLUvYu2nlEhLl+EzAtECa9Bc
	 93iUcI/BaN+z87rh4YcKXhplB3fhZNtfekzVapRiTydcEjyAAXiOJNwBq61PSgZxlN
	 W+rHzI4UEyKYYuWbYvEnFf9vHti5bfIllQ0wyImnVfJLK/+saX6ygEIINsOfCeQsR/
	 nykmWry2UnZDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD6C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699239358.4437.13901501904766634344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21df74b720ceafda18a9b792110bfa983c18d84fc9dcc205fa37da4cd4e86e8d
Date: Sun, 11 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746992393
