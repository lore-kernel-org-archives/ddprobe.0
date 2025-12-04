Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5FF311599
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764887574; cv=none; b=R3vB4NiH4gXOqyeo1dtKyxKppKur97ExVggdE4VtXSPJOx6pxdE+A2uK5F1w2gTfyA1XfV3J+YRoXp1oiBK+3gpkvAI8Y1CpjnuU2SKbmiLfow4XH34MI1vyWWtw65l0XcKFNbkLX7SFAKz776oYHrARJDK+Kti0U+XvHkPaaVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764887574; c=relaxed/simple;
	bh=nXWD/JCmDYcuodAyJ/cTFGmDwkj4rEz5pGZL8K2Ppkc=;
	h=To:Subject:From:Message-Id:Date; b=nK8LLBxXjz3luXb2WrVv2jAEGdZETnHscNihe7zIUFaY4UYXeFjMC6jx3eH/w36Sgc3rpWAYG9gjN7jlZsmo9WyuTnFlr49wHLF0X0/fJbwGPIBbHw4aUdsvN8BWrw883rM2AymOBWB0K8ElMvAXhGJFD5Ieg4l8usEBoeMuzno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PV+tzJjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PV+tzJjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0CDC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764887573;
	bh=nXWD/JCmDYcuodAyJ/cTFGmDwkj4rEz5pGZL8K2Ppkc=;
	h=To:Subject:From:Date:From;
	b=PV+tzJjLXJsD4IAFhuw4LEn3CR7NYjIGxAHIKlAlujo6OKB+hxFZZXecSgQ+RCuXn
	 +qfDpvlMNTmmIHd2ir1F0ovEvqrAcy9gS+1l0weJ7AYDM46jhGx6mjpyf0Oygoov8g
	 B/sHi70t2mUeN2DnLX1Uy6Vr28ueaqzMyS8yVLvz86gL5dZhtGVWRIn4v/OVWRd0uX
	 gp85LLFSEfznW4edUHWb2YxSTWpkRrFj3ddXtEJBnwWubVbMWCaq1Dsm8oWrzZPw3N
	 EetN4XaasqEKxFNbGcAb8CrDkeoUMx4NYna3wcCdRprcdPJR0g9DLNh8Du76dm9wDp
	 zhEjQ6BQRYeSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F291D2A54F
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488757359.3351.15716647248501354203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3925de166563510f017ffa8c476ed328a8f533a59bd2a9927c2dd248e222da0a
Date: Thu, 04 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764887573
