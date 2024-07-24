Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E563149C62
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721864754; cv=none; b=Ww/41eoAkoDoA1bk4WsGfpixFXoghCf8fORR3jJvSDWYsBwKvO6ZT/2uwwYlbh9UA4e92dQsv2sCaJzyStQuvXuYyYMnNM874EMf0jTB+VkTvxJogTjVKnKuVpYs0HrJaBkfzSIOWw1OTe5P0WDbQR8LQ2GgWPDpzMEKeCFXEjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721864754; c=relaxed/simple;
	bh=d2l+dmIln5zlhJ+f2KOp1ChcpspS+Ma6LtbWGBUQJ10=;
	h=To:Subject:From:Message-Id:Date; b=nTGD0H0SsVguYuCQqSPcyu+lTvHU+OdPJ65Zb7uhGdfdJXz8hfY4ov+WnuISVJBB/hS8kOakwezTwT1/vO0+/OtVr6cgPxkTjS7ZKHuMq5VsYeERVJuNazHGGUql0sOrlTgZyedIw92miguKvVNjMrYNQqtsEMuvI18ldWCfhvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV64qCvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jV64qCvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDC3C4AF0E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721864753;
	bh=d2l+dmIln5zlhJ+f2KOp1ChcpspS+Ma6LtbWGBUQJ10=;
	h=To:Subject:From:Date:From;
	b=jV64qCvEe0udhVAKiLhZonvc6I/KEucTmPV7/8nf45zoXiUlsk9HW91fzDxjbsoVv
	 b/qvNLk07n7Ag/tcW3p1ozCNpMreWAUcfRBkB2auO4OYI+Os5efDqD+NmEHDWDRb28
	 CzfT+aM1cT2iwlL6jNEIE+xRZ/n87AddaJl4B1g1svJP19o2M8VBC4aU2HadUazTfM
	 rpNJ0h2RBjbdecphqhAWqnHZxr4I5HCG4vztuh1sTBMIpbu+zzZAMg2ueEgJubzP3n
	 HAI4znbcfpWBY+6L6xzO/j9aAXs2Dpp2aEueGKZjTX2itBINomHM4tz/6/xvpb5GTt
	 U/m5t32jFWtJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96368C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172186475360.18534.12409496402763756789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bf6eb797a8eafce974baa52466f8d00d764985b73535bed26982a6a8c7592c
Date: Wed, 24 Jul 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721864753
