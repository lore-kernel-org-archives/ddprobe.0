Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303F236829D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785377434; cv=none; b=VXkkNij4s/itibh2GRqWjOv9MAQ5Vlr/FOAR7KKhGiJ+idjlAADAVuDrg03xTZtPxK84kWmKEHg3hPzlNiOQ9BT+cjMWIZaxMBOlGbiuFLBkLRJZuw/s/3l2Sg9i9KquERuOqJFtELUyu9TLDT3eIuMnTRE4wh5wLveGgfK2edw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785377434; c=relaxed/simple;
	bh=xcu/gPQKqK9/ON7fT6B/xk5L0+rPUpd3SCCzh6A5QXo=;
	h=To:Subject:From:Message-Id:Date; b=C3LQp4PaPHkSuGaQ2VWNV8m5h4lGhSdqZalqvc2n6FBaEcnuOun9wuSUOaJZgjlHUzVwMzdbAZ3+y1+B4nKjjhHjxCb/V48FYhNiiH2RPUyhygj+SvF8dKSUIsx2WASEAqRiemG8YVvgVPxSaJiaA3V9DvL4+sCWm10TXLlaRTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaLJqs+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaLJqs+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB84C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785377433;
	bh=xcu/gPQKqK9/ON7fT6B/xk5L0+rPUpd3SCCzh6A5QXo=;
	h=To:Subject:From:Date:From;
	b=IaLJqs+qTX7Q0aDg8x8KuWLr/fVthdCY2c2VWktom/sIR7qOD825DI6gnGo7o2DXJ
	 GntLVJuK+B0Ue7otSlbdirjUSO7hsnR0NIVei/aZRKFeOWos8+xU+NzEqIGoQBDu43
	 05a1c55JV3zj8aAY3+MKzgjqJTVZjKlNeTC3G4/0+VI24rk7zOcT0DKHeYz2eIgyXX
	 EeUXTWvUOIe/tHiASHE8HXcQcGLXmK7LiVVVFLHBWJeYoewJpZvNhhZ2aLZpb7siaI
	 UCjHJ1WorkrhmfDMaGJR5k5D6HcMUMsVC6Ytl3mXBOCTQ17bktsJVJ4fOlBzWBrXhf
	 8AQfma3GMNyfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E3AC55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537743368.28928.5667690489095478203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05715f5ef1874cd522414b4534cfab4401b68fdcd8e4d7ba3b86853327e7285
Date: Thu, 30 Jul 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785377433
