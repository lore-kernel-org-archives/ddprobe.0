Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F03623775
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719554063; cv=none; b=iTT+2oTx8zqMdNEP6mGhx03BbYw33FukKO7cPWtSDS9KlLvoAtOxBofMcfO7km1gxpgE3Bt2sSjt3Ax4FigCV51y6/ERLiZu46K4OX/wl2ZuT40jZ+dqjT4V/B+BH3kJp2mQqpu90FWdiDv7GyBsiGQZTqL2cLvUaPQLsrUChHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719554063; c=relaxed/simple;
	bh=5aNsEQc71O30X3I6L08Ji7WX9P7ygNP+g16u0L5jhwc=;
	h=To:Subject:From:Message-Id:Date; b=fgh2nDjn9mAEQ3tuzrOCVZZwvv3J4ozzh0p25gMmOEbZtzmy63VjCIwhzml7unaP/cFBWDxaEvfPkWVwC/1tFrvqdObLCjYMd7yUz3BISAnZFFeetPkivJcE3eoe9Dd7ASAHbKgBhPQUYt2alWL17VRWguRKz5tU7BILJH1n9t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EE8q/+kz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EE8q/+kz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5641C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719554062;
	bh=5aNsEQc71O30X3I6L08Ji7WX9P7ygNP+g16u0L5jhwc=;
	h=To:Subject:From:Date:From;
	b=EE8q/+kzVYNKTbSjWIyVlP2qDvHDbnVEQRfxYYq5TCBLoTtx4wSEoA/HVLHClA5us
	 DoY0J4AfHhZt4qZrXGnTvg/d/DWtP94SRbfFTCUYuTwCtaopvAOeaQkZw837+kRkH0
	 G/ZhH7r/TkopBtTgJ0hWJG9587+UntsoAPs+ePggTY0qqOWoRWtWfoLSPCQE79Qt24
	 ZWk9dyJoMwbcCAbPpxgJQFQxzkj/VGAv93TpPTS6sh1wvkQjodpbPOhVRnXt9aOrvP
	 5lGxo2bopz+0m7gGOr/qY99fCQLtJgw9uMfJ89BPP0q6sYvrnRBRgOz8fCM/EzNvmR
	 YqEsOKAxZv8Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48DDC2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955406279.10487.15265255681628374922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85fee8d1882ad58c29f3315b6f0bfd5ab5cff459dc25be9eb69c90d6683d45ef
Date: Fri, 28 Jun 2024 05:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719554062
