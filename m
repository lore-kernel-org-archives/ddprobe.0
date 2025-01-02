Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379C21922E8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735821954; cv=none; b=OZ+Iuv68BpJHArORpFRCe7kahJiEWkvW5yL4RFP5PDrh/c3anATynxnmQHja8yLf/7UXj6PpnvJZJOWtglEy+OodsGczkQvXHZt45nCuZMRggBaRFREnyScPrgySnvR3E1AEuaDkDLEaaio55PFThXjeiFq4tXdUHDKsDt5KKwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735821954; c=relaxed/simple;
	bh=KTIjYqkOb/Btng/UphZK/tXQkBG0+XDVEQsZzc8sNLs=;
	h=To:Subject:From:Message-Id:Date; b=BuFS0RIPHXBNNtUPJfWmrb+aHhezL73o/9Q6Mapi//febsO305xzopaUG6vxoSBrs6KufNmlObNmY+4M6+HMP7s0Khn2A/ZzaBHUxZpjLM1vaFL9LDcjg6P15bj6YorRuwdHmww4i4G/68OL1XucafWL6wcobQdZGXJ3UMqmpD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3vlLGfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3vlLGfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AC9C4CED7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735821953;
	bh=KTIjYqkOb/Btng/UphZK/tXQkBG0+XDVEQsZzc8sNLs=;
	h=To:Subject:From:Date:From;
	b=o3vlLGfD9RjHuYJrLxkEwYBbeONb/VdpyySkjd00PzXKDixHGsAfXSXh5LIEo9/39
	 d7rZLAjb2s8OI4IpoJv4XBoXCaYorXKkVl8OO/btWqJXJrRnE/zH7pQgS+wtbG+13w
	 p9ww58jozwcE4XQjX/DvrsCeNaK635Xg6HP7Atb0XMnxbGCtAW5VePaXNxo+9T86J2
	 YPyeb6l8P0dFXVy2ctGYU7gx2iKuLCDzEe7BNjexLCFErEdXPAd4+sohJ1sPR2e4X4
	 rNaz2oXBrmjQSGREq6LcsYFt36EiTG2el9vJ4K23m1Xe9OKKp35HF1hL53jVU/9vo6
	 7XDpOTqSSl6jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A153EE7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582195365.26796.9743717483211814383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1821b4a50946d3ad2922faeaacde872e20d40db2a89778b1b4527274ea5892d
Date: Thu, 02 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735821953
