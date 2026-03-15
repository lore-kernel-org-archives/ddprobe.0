Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D9840DFD6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773559494; cv=none; b=sRYXiwJSykQ1ecQNVxs90fUAnhTvkXRXty0x8WqNJrwy0iBDAljlxOKlDx3fOhQagTlLUsK0LIArmTXCmKjJ4NWKkF/Kp2Pz9KQfiIQqduiOYLF67E15TVJP2T40iTxyVUhaOzm1jtYx/FfLZALhiLoI596i2NfbSY+EiDynSIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773559494; c=relaxed/simple;
	bh=6r0mYJ6moTyH3rgA5XKS/LF4wwiU+/BrN7A+rSew1XA=;
	h=To:Subject:From:Message-Id:Date; b=MGqpy3B226EP31eySuYgaPmKlni3HnXtXY34bybHlKVhv8z9XjgiUEEObsSwpIWuWNCPsTTD9QJDZn76puJGdOCOCbSltCGDwnWVq6AteU/2N/kNaQ8NglIF1FF+CLYyeH+bD0s9MNjbWeRH437i/FmXvDGjN/5VuwzVXRwxnnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlLUDycH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlLUDycH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E99C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773559493;
	bh=6r0mYJ6moTyH3rgA5XKS/LF4wwiU+/BrN7A+rSew1XA=;
	h=To:Subject:From:Date:From;
	b=WlLUDycHeXoNsyGU0r97AvY3nc087uYdw1S2rUjjJtF/MaaOwU9CE/h9Aca3T6A0b
	 s/eAXpxdHLE4shMSEC1n7gdEaklkjc+m7rDqXyfIbyTmerfmKw5BZSDe42SqEAzsOq
	 UiM8E8wdcvqWdd6bQatGfz8gDJr4vuZ4fSt3+hbiDWnuDxdsSEpfcx6Gxptc//hywr
	 Z6Dn/bDmGNgm3/ej2OA4qlYRMUkn+TSCIC8ewAps94/t/jiZksH3SP6PiIq0Uuxa4E
	 72hEk7MeUC2lHq+Mh57sF+feWXfz8zUuuvBSbqZgPFdsBt2boVf75LovUC9Fh0xQSw
	 JEbNmXRLL5WPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97706D58B0F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355949358.6350.8440857534061605971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1728fa0fc64fde1ec66cdf9c86f0033469ba9ed92b75ab62515bc3436148c96
Date: Sun, 15 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773559493
