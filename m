Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5291539280C
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786628434; cv=none; b=QoLShryFUNVjH7cGKYdQBPeaslnZKkXkPr0dO7bfH20+oWWzGcydSuCKDgRLWMYeta6PSZpF8oG3G0zdzOWNe7jw1khxu0HJoiFXZbPgmOPRCATo77+ZvsA0dUU4lOzWj+fdtelOpMMmINU2pfIw7eMvjPetDke+hoEPmk2gYkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786628434; c=relaxed/simple;
	bh=S0J4ArTzN2CR3UUANT4kNVaOYKac1IDhPalCunKboBo=;
	h=To:Subject:From:Message-Id:Date; b=eZTKDHpCVSgn1ecAuHuDIAkGIZyL+0gAOSBGm+1ag303HTblxBetf246w02rJ8ULPa4149EMs2DLswL5jMt7heZBGkxXkwkWkNDlKeTnyZy7V+ETkwfRD3pi5dfhKGKI7+glPYrxVjrDJm3xNiK4Rg39cbuEGLuLV97xPPxvm0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiKelk7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiKelk7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8C2C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786628433;
	bh=S0J4ArTzN2CR3UUANT4kNVaOYKac1IDhPalCunKboBo=;
	h=To:Subject:From:Date:From;
	b=JiKelk7U3LiGlwAHTYNQx6Un/TXRmXhxm4Y4zE0PLxiXqAMetAVwD5AtNxE3j5L/Q
	 W9ySIbIWN+k1Es04taI/JSnO/yLvFml9AJ4PkkSyp41n/qn3ft47ZclKcsNXKZMIE4
	 uhdg2PWYoASVckFeVdBDYiMGc7Vt66HFlDSsZKPTP9dLPG5GNUqxHLKC/dimOaZGh6
	 8iOL1ZdSiQo0yj5NR++Q9D8Zhukrxx410NH7kIrKiZ1aE1Kg7eguf+9/eJvT5ubkjJ
	 UvdHNjSct8FLD3aggUliU7VHakeGxbqr8b8upzYxopFCo4RpDqtmn//x4uPRrULa5x
	 R0tFoPgKwqOjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89D5C5CFEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662843368.31538.16952658504383587897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c296318913e87278b33179d07a502bce10f9e96edc9a3a6fe3463e1f81aed1f5
Date: Thu, 13 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786628433
