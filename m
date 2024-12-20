Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1235F1A83E1
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734684954; cv=none; b=bSQaLaMfpMD9f05adCx48cy5o4CHsySFCuBHOhbcvMBQEH3UiFXIIXATCttCIBQuPL78WZcXdWLbIuwe70Zpe7jDeNcKJl9CoSaVyeuQRuykajilQ5GW6K7LGyCVxo3mOZErN/cEFoFGgLqiGDJnpMsdAxHYHtzaPiwCojnTwfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734684954; c=relaxed/simple;
	bh=vElIpg4RHA2DBTIeRpSGFWdR/iMdy9I5eEzmZZWizgE=;
	h=To:Subject:From:Message-Id:Date; b=MHEhjHPSCtnXwT7lF+GdhfKMsrqt6BEPoiK6bREOvuK3WptHMEiLZN7L0ELgl0Dh7I5SO8oMVPzN42T0CqFQYRtU6kzxzIx3nvY6UzRDsavuZCSPtMWfjFzTu5uiFFisYbrmkTPJ6Bg4vgqAy4bSPK5C0g4MEeBVGidqqgWUVeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=um0NQfir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="um0NQfir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9BCC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734684953;
	bh=vElIpg4RHA2DBTIeRpSGFWdR/iMdy9I5eEzmZZWizgE=;
	h=To:Subject:From:Date:From;
	b=um0NQfirX2B5yB0e5p7pUtM6nQcjp9Y5q0EQUqgurPnZchk8bmnKtUEWsaPHW/uY8
	 OqSHa7fFFLiACzfbjO6+84odi9QU6X0hGckU3AJxZetoBPeYLJMemQYUA0iMlTVGU2
	 wmfz2bj8aMnQ7XVRZNpUTRALLMsWPFINza3PadJOCr83PfKySUc8Sg7oGsAlRmJ9Uk
	 Iu3f4VE4uk+pmPmWpZ9wpcUEL/Y7g7taJZyf4kttuDQqbJyI/XYJYRfM1AQDaG3VMz
	 GnW/mTuQyrqF8CM4zKYOCzDDNE82TmQATwvnLC1kGriGQ9QKCNLMUYEUa+sHo9z+hj
	 my9i6UyS+wtGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F43E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173468495361.19848.3548744569129929280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6866b1c8e803e0c63469a2e6358e7534c9400c8b7cc7f9a40ebaddfde0f86630
Date: Fri, 20 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734684953
