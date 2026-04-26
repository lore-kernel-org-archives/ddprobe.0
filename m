Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D6F347BDC
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777210054; cv=none; b=Gb4SD4gKSTIEO6lY/4ZMCCXiLrY10CfyesWbLV3cIvf3nLjEzuAcVThON6/Z3NCZAUD+Nzgi8x4o+l47DksrpSoeqkk1+q4C6UQt7V8uJMPwlMPTDtzZy5+YpdRvU/KOauEn5Vajaahbtgxk6g3/tVLKvpjA0c4hIfIyjweq35I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777210054; c=relaxed/simple;
	bh=egrG6CmqzAuHx1bBjeDdfXW/yJ453NPwv76Yb3DJxHQ=;
	h=To:Subject:From:Message-Id:Date; b=hzt9j5chl7ybObuvn2htcHJhPE13e+nLC1MR+T25tpVtqoouVTGRaFuycm1ZijTPCC0sIW9MslneARZcOYH1BvQ67ewEr1wsA/eUja8cvpfo1wWH1Wuus44nPEvALpyoOnD6W7Tga7OAo/VFrC25jO+3sParH1yyKoF7eu+5SZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWvN0Xp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWvN0Xp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1121C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777210053;
	bh=egrG6CmqzAuHx1bBjeDdfXW/yJ453NPwv76Yb3DJxHQ=;
	h=To:Subject:From:Date:From;
	b=mWvN0Xp64XetqciRT0EaBnAtSRGggVl0NCzjI6kLdeY6Y0kd1v5JhlMqqF7zS3TWw
	 wXpMlOxjNe+Vr/pJ16Ct2L8i0ejUNJ3PItPE3kymS5MYK6vUU9dOgPhBiTQkl775Q/
	 60CUQIHS3j0oshWYTACx6MKU6JBINXI4IgzTadacgcCpGmfc3+Z3auH7qHbdgTz1oX
	 kBJ0FZlP0E7K7d0OoTMrlS7cnm2BRWhg0dGL8Gn6HEVdMh5zGSDqIzzIfT8ZMKbG1U
	 DENWXaACyQEL0hCTs/U0VQzp6dz7ZPxDMOyNhDhcZUMhk6pr1pcjT/iHXZLgc7iWvx
	 YYZ8f83p3I5EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB4FFF8863
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721005370.3136.7520134831951045835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827919c8a750f2d70afc32528474456ac02ecf8e4f7ac6fe1c04dbdcf72f6d4f
Date: Sun, 26 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777210053
