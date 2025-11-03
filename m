Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F0B239E9A
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762198794; cv=none; b=IfhTcD87XacLkmJ8GwiEnQrJe1rSB9mBR3bXfzwblLOXvCgY8oojn2X1yQ2m93PsEX52b+fNAjEIh7rIOhWO2QGbfqJGefqTPtKeF+CP9D6F1SFBHQDJjs0dnulQ7XcXH89j2bpL/swvCRmtZzvySdoiJu8smQpMoqojzMg4qlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762198794; c=relaxed/simple;
	bh=cbwKrleL5Y3LLLegIgetsL9FhDaguQyqBmt7GAskCMM=;
	h=To:Subject:From:Message-Id:Date; b=NX8Gm2bZbPeYcU29FaCapHShJT3KOssAGQwbVVkbfnU0j7tXQdyo6xisAlstqu7zr6T3bReMWho3TwGMWUuIZJ67V0VFaZQAs5aCfc1V/+DC3pBOKQU2YEyGs5p6qiuU3asWiscFJEkMr0q6dSsAoad0j00dAT/vk3FOZC+y//M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0jwNL5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0jwNL5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E662C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762198793;
	bh=cbwKrleL5Y3LLLegIgetsL9FhDaguQyqBmt7GAskCMM=;
	h=To:Subject:From:Date:From;
	b=U0jwNL5XEhnAIm93KJ7b/LOQb6Zepd6Dmj/CuI2ckrs6IzNwtieKavNp8icRuI8Vw
	 W7opbUmavwmzX71jB4dU3MNi8sNr0HBuA1jBDD2s8jFGwtrYbICI9cNnqriSnmxHPq
	 /I8J+R2Ytn3Ahy31ChuxvI+NfgKsLm1h5BUzceEoXsKnCuK6znHmL5iFp1d7GWEc+3
	 01ey7qqQneT7uMcJaWI80o8I2Pk4Lbv+p887dUjSu5KEprPviMpSPBFxlBbL+rrb0K
	 JRaKghLNYa6WuLu9XHbS07cPrA41pXdDFVTg5B7lyBe91zF+YRVbFIJtm8msCQaakw
	 /CCgBa/czz3eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FABCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219879357.4057.17608409887340461916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d98e437dd1fc99fecbaa589e8f71e5c84b894ad5012f61a2d0641d0ee2381ce
Date: Mon, 03 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762198793
