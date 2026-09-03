Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514DA36AB5A
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788393634; cv=none; b=CZo5Mw1zr6p09GnHkfFB8u/3SNE43uj+2XC9WEeOSNAsvM0M+HpKHsgJx+XumUMiTU30OeljX685+Wzs+5SQ7D1uqMHZoDFAdoFa4F/HoU94Dveemm8nD+U3dzYrnwdGePLlS9Yg1TI7RUh8I4Jw4QNEhq8j+EL3ZbuuzewJ8+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788393634; c=relaxed/simple;
	bh=/vJJk3rOc3OF+6ERzMSnAMEIrcSO5bfCL1S46ieVrAo=;
	h=To:Subject:From:Message-Id:Date; b=bG/fmJTfMq6S1qBDOFbvRBQjFKFk9/f+CVADMz/jNszB6hC05r4s+juGB/ZJDuE9PmSG6j5NOvjh/kPFsRB1zr1hMkO6i3sTEU6J4XHokHQStNY+/oCdkFmh1hOoP89zK46hsvzaYqWGdKC10R3dPd6vEC9h+gG7aCtILHHUkVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpU3ciLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpU3ciLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3922C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788393633;
	bh=/vJJk3rOc3OF+6ERzMSnAMEIrcSO5bfCL1S46ieVrAo=;
	h=To:Subject:From:Date:From;
	b=WpU3ciLPMEzJ6fxe53d7FUqDaxR9Ksq7oKa8BOhDZcITsaExkX36ZqVKvjKGQErsh
	 KBZIWTBXARjWN+Kp8Qv/80hbEqwL29TCvFG2yBNkMWh/0uhU3v+fBuTwv0KjyWDoHZ
	 yw9U/AJi5rgGTSOpZO63gEkZocc2JKXB6OtYnOiOER3es7GPxVpFJC6EWrqTUwtSfH
	 QLIjCO9gNx2nb5e8AbS6marI2Rp708qWSITij0SQ9QgQXDi9DBB3417oAq42oiJgyL
	 wGS11iq9Ak9TQUtIlAkRopXfRsp6Chc+nDzeplBg6e96+JFn2WL41PDWt1zIBocZF/
	 G+NMl5LfvNdjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD727C61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839363370.4179.14022093346044345747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a222ba7758d0a55c42fc9520c20a9e0a61f94953d8df2361673f1a87d7b9d72
Date: Thu, 03 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788393633
