Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DF01D89F4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781493394; cv=none; b=dOSz3+nb170W99F7xBx3eh+gIhUVBk5oLE3thHJdEtiUUcRVFlI2GyRp+EDcE75oL73DeLFV6xVHrIWShvYo8Je5kPwqdf7I8unT5Iy2XHoe1gF18kkBsTeTZ70d9CtFmEzlS8inI3GShJbPB/FYmf8YcXwmRU4HnWSphhxJAVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781493394; c=relaxed/simple;
	bh=/GcjLu+sDcQp0Cl0cAdRay+eURI4HTaou+VblBPc25Y=;
	h=To:Subject:From:Message-Id:Date; b=IH7CmgSzwl9qD95+gS1B51DAMcHEPXBMYA6W/mBzx+cuLhdMNACWbVh9Ju4qXPm9iaeyX8bh+Ri8PLHxJrXLQjPQQz8ccT6foq08UbOKwC2/UP/Pd2wMwI/cjpb6/z1WoZzZFQB9ZpoC/7i31LTFyFYc23GkmEM2qDk/QhIkp9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BooCJui4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BooCJui4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BC1C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781493393;
	bh=/GcjLu+sDcQp0Cl0cAdRay+eURI4HTaou+VblBPc25Y=;
	h=To:Subject:From:Date:From;
	b=BooCJui4d2TUJAiTuXKsMr7/x75eSOOho5/ZkR0CCYoQySZosSaMnMTxoCTwU7r23
	 4LPJO6bpY7UxeGb+fBiNJ1Ifa1elGauQlMDx9am7R1p3eKNbLrl3UNmrUdXGi/S1M0
	 hZwyM1YdcNIytgwOcjlJtKzk+6ZS/d1It7oT7yeUiblshsFOdmbasgNFF2emHby7Q+
	 P44rtTym5uGZDn6VZs7Ejn9NV9Frv56fvLLnv5aShklgGnADryfCnWGAJCFozzEWxG
	 t503Dy1Wcuve4J5UUKSgyOlR8Te29GBX3aWtHXDBc9ZpH+5vYhgo6fOUi96eIZVra4
	 twX67tVi7/dPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A94CD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149339371.12050.5295962393303250657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dead33742fc8d7115023d169aad35fbcebc1efc0b103aae32219b5b1bf2fecdb
Date: Mon, 15 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781493393
