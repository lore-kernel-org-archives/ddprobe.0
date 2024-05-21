Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549112B9A7
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 18:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716316403; cv=none; b=e8DbvQ52pM10JErQaKYPnRdyWxX1dyPyLt4LusE4SFcFGg2zwr8WMS4u7kpg0OAxPSKnomY05F8fN13YiML1GDWVCC81ahnk9iGWW7H2SNTJlbmS6Orv9gNBmIS/13ED/F5YE1DU9MMIOx2JJ5wTXDKPh/tpVoQY2Za5CgnpglQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716316403; c=relaxed/simple;
	bh=SAqDDhCuc7NQU4dfKJ0rY4B+T/OXC2oeRZmxbFMvlCk=;
	h=To:Subject:From:Message-Id:Date; b=ZAyTtV1d4mTZSD9PdhLiazuOs3vja6ZQPyTQRfXDhiCnm5A2XV57BMKuB72UnZwn5ULsZIDIaYetXONtSeW2ud1ZhJuOBUIJ1+hDc/a3zfjUu+Og/nhAtqRbTnN7qbtstor1zGqykbNufPCQvVlH4RAiZRZlt4GnK1oC/J3KYMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEm8M5Cf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEm8M5Cf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92D7C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 18:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716316402;
	bh=SAqDDhCuc7NQU4dfKJ0rY4B+T/OXC2oeRZmxbFMvlCk=;
	h=To:Subject:From:Date:From;
	b=AEm8M5CfcXkuQqFO3eW98P83xZIla+p8Oqmzoxz/5OxZYIxmtrfF8unucCArjlmdI
	 oDqP7cOYLjnnSxLd+dbZitw0BCeTivQhXyfYYc7DhPo9kNnERHSjlH/fLDVWbsz26L
	 YBeZ1FJtZGBlT0tb9WnpT40mRIiPmqk0Ft8A/uBuX/ptqdcGRjJIAGtmtqeY+iJGiT
	 bp1KaUdfju6Myw0zL8WgFe9fVjTPWau36f0H6E+lSwK69FZHlm5NmPu84qKUB4iiL0
	 yvl8lTjtiyRrxc4A2OvppEnmVuxDLF7GcKYg4wYAmyE0EX+rDyn+lcgaYudnvUtKzf
	 8QlwQ4Zr317lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E51C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 18:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171631640280.13539.8580519013900245057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5187585d1cf759b317c09ca16a7b7f10a500878127300f14a7ab14c48f4f9d
Date: Tue, 21 May 2024 18:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716316402
