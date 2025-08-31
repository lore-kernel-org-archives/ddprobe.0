Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120D6270572
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756660194; cv=none; b=hju68ST+kQZ90JqxsDLIU5+r3MnZO8olwOTrHnZdVGtX5iBn3yDfPPT1F2GGeMTJLeSjQqUHj4LU+xS7QeIQptE5tj7yde31hNJeeDHS1KJi74Wsipxta2PE4Y7fnJ52trS6TVUHRakN1fUnWOUM95B0jQepHjFSGHv0NKnYqdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756660194; c=relaxed/simple;
	bh=CFrIhVMF+vAcATmm5OoS/zeaKuvR06dBl4PykbGOBIY=;
	h=To:Subject:From:Message-Id:Date; b=MK6yKzRxofHG1TLRb+JM6jTLeRswfXsbyJmq0VHb1Krwst3t035hY+ujIzCqB+OaOE0oGATdagZHjsUZUn5yKu344PiSNjHkW9vh+HsEJGBJS6BzVySt14NWKqbiiqYUlBZ+T7rxZVtaSrcAKtdRAE04+h5PCtQCriWiQ79FfxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmP73Eec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmP73Eec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A709CC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756660193;
	bh=CFrIhVMF+vAcATmm5OoS/zeaKuvR06dBl4PykbGOBIY=;
	h=To:Subject:From:Date:From;
	b=DmP73Eec1+OlBe5hM34KVK4uQjNwNykl+adGpGqsC6YN/V8rn9Oz6pTsL5g/mGW2U
	 hx+6xOZmUjTXcjZCBU9nHBEa8uXw88OCBzkiooIXz9MCacSEW3UDyjzvsvmy8jcZgZ
	 18d0d0ISls9Sd6y53HP8RkaVhgTTDz/4GqWm85ka0tkCFiMKjRlP1Q0VcAOoodEa1+
	 G99gjmL1ats8SiG8O0T2XRcAbJVTTeKn6XJz3hxaDWueuwSEXvjMeJ1PCTiHKz0/RF
	 Zc74GmW2o2HfP3TFOw+5IoBexoOXWdZsqthFkNHVn/V5frxxy6HTpTyn7G6qbEeNnf
	 cIyglZ7coZ3+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA5CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666019357.24388.5287014445416331420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b265983ab32fc02e698bd6dd9f27e75c905ed80b875aeaa7c8bccd28cd53281
Date: Sun, 31 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756660193
