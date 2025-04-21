Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FB9E56A
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745250594; cv=none; b=MxkUSgXKyHs/UmdvIIiTmP+ACtS5IWIC98LkaURBqAmM4x/qqkrMkyxKiAf9yjqf0DTBPPWhC17iaO2fl3dX3iMqzsxgF6v3B20QlYO8mII0UUA71UUalcYpLdoU2+cpp5mKzrWhfyiHslbBDpZrtchx4PcmRnURBl7YYKT1dz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745250594; c=relaxed/simple;
	bh=87SKIzRBUlupLuGrjoOIwNbhkKzik+dbMOrQk4NAYW4=;
	h=To:Subject:From:Message-Id:Date; b=hsKHb9pyzFTv7BC3AQqzVcJe2UrhFCJe2Scz9vTQkIXIohQewaCb6112ICylMa/g9g+e5uegJVptOdXlpEft0PTj7GB4yEG9GYtuKWQBqgn0ABTwQNUxQG4fFUlgiqGii6DBY6cgq7nrn2Wxcb78sqM6NnN9Zix0vW6qFLoeZ9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnujB0EH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnujB0EH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F72C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745250593;
	bh=87SKIzRBUlupLuGrjoOIwNbhkKzik+dbMOrQk4NAYW4=;
	h=To:Subject:From:Date:From;
	b=fnujB0EHO6e2nWVe/zeYP4+eNKhcXNvnQKt2HVNRBO8ABnyM2eYpv4LDX4sSrsec0
	 JrYU1vp2vW97FVRkrffxqRr7yKLXcv53c2BHXLsBCyWY+xUjtUjJv7ba8nqziwzdst
	 eQHdCQxvFOh2dqNGrw3j3RZ9bpa9P4lJCosd5ugiwvj3+3p0o0iCTQK7GtbI408/oI
	 5lCuRW+pn7bLyJw6Pe7M1E/UStbyXyeZcokPFG4qEubx48nakcnE3wis9sLtAcMEDZ
	 wZmM1XCzjv2GZaWjtkp+z6S9vI1qPkp0KgF1obz8qkSKBE0l50doSyeeH0in3E9M4I
	 weh7RUdnG2rLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E1C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525059359.22080.5813571863823149632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193a3dfa4383620ff521d3d5158dfc198297e40f6eb4a2cbf9f9358d5dda0077
Date: Mon, 21 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745250593
