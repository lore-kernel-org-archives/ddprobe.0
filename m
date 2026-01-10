Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1610E336EE3
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768043034; cv=none; b=aZ08NulkEzn7ziRFZG3NvEfRxyvt77XEsxuEQWT/TvCHVI2bIfrS/EtjJSIgZSG/73/Yr7Nh3fsv47MddIKqiEYgEKRv73wOD+zXDrHdhD9A4LYZy+/dYLMRk9QhdrL2kCV4apRznNY33bW3HJshyHstz2S6kyZd7A2QAh/1YCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768043034; c=relaxed/simple;
	bh=2DOoZPNFH8XUKzrE+teu5FSFYkSEjKHQhmnTBokH1Jc=;
	h=To:Subject:From:Message-Id:Date; b=V57ckME3X/MCCXRM68dAn/GYWVd70Up/dYqzagrfaWIIOGY78FoHASkKYskgobn/xhKPta2B2BUFWkPi8+DjSxunnBj0tU4CRuJ+m0z6f8uDRixo27fO3KRIAY4lJk46Q7Hf4WE7WwcVKi3es0E7CjgxO2aMKrETCtLNKmqDNv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UliAt9oT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UliAt9oT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E6FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768043033;
	bh=2DOoZPNFH8XUKzrE+teu5FSFYkSEjKHQhmnTBokH1Jc=;
	h=To:Subject:From:Date:From;
	b=UliAt9oTZAQRK736+RI6YuaPoHkRzuyQzuLcL7BDrgwUmjutj1/E6pQAXg65X/Hpu
	 2wPyEFE+QGz6eh0fjgsmjULQMBYP+1QyQ9aIdlJFuE47NTGB+FtYTl76VcpBx2qcfl
	 AMMWMG0br5LIum5K0kJLFRRnDPUrPj0XPTvDYJgjTbbCFQ3DRHRORlnxb66I4LQKnv
	 oGPiyPQXe7EVfjs0IcmbzXYauWgtk8IjmeP6jCpMPB3HSm5sUVFYqzJYLxPcJOT3g5
	 G1yPVVsLb0qXpzNmLX7nV2fV0eKmOPJCnM7EgAZOAI5nVNKUAA5i1Bieyjul+TFNkH
	 sJgp96EVsQkow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94757D277E1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804303357.9401.1039949364316819428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a2d18b35c77ce10c538e72a73ce56f3e9599134a503b79015ca26d71af9547a
Date: Sat, 10 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768043033
