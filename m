Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4011729A0
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732944354; cv=none; b=u5nMWCAlUMWgylF8lsHCG9vkZ6FFRdmU7FLve095d42IYEXdip6jYDXmSg9Q7pXp5UsaxiMYmWHVrYDAFwi9scReXGZt3eSPp7BZWjteAj7RvtuYym5Tjd/DHXLW2+AYkHFebzlKB4TuYdyaCZLZn76xHDNr79zdy5oebeJoOJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732944354; c=relaxed/simple;
	bh=8ZeVywTDsQQAObfiuQwPt21my7teK5VgGSoj7pH3BsU=;
	h=To:Subject:From:Message-Id:Date; b=dfZdeR4DIHidch3Z6cDVFTdUF4v0KOM0IBcKPyppkMwUcUyeeodlgVVOW4WM7OfhpaKGHBlB35Si3TY5k7Vm6l5oQgKoknsI2OWN0SFqj5UnQqturaWjLoxx0rbLjkirxbDm3LqRnE/EQTQyV6lsPTTmNMLcpc584pomMA4KrCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeSGqSv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeSGqSv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC4EC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732944353;
	bh=8ZeVywTDsQQAObfiuQwPt21my7teK5VgGSoj7pH3BsU=;
	h=To:Subject:From:Date:From;
	b=ZeSGqSv87Dnm20z86xmRh78IcS0IB6eZ5uSg8fT3zJa16s7UuKI3XSRpncTMPDLAU
	 iRbutjqp4N+twovyWzu/uWhB7MVW35xO2WBmrl3Hdod3eDS42EkswT4lHAUeKUXRNw
	 hwJpcp23nv9UsZXdR7H6NO2tYAQAPFbT1ESLDlAx6FEO9a4mYitAeNbZSFGIeB7l8K
	 xNmBjLqEpBHJd+fn8xrU2NCYkKo/jhijPTIw4m3USelppTE/mekMT63osvVM70lfsU
	 NRpmSb8izFvrv/bmAsRFq5rsqXmii7cWqrHL6/A27n/B3UMOEO70PiubmnhbC8G/P7
	 OhfoLF5HMblgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96085D735EE
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173294435360.24509.17126242420493344922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aebffc198b244bf65574bdb04ade1a942624483bc9c68a137c8e00bf39c04500
Date: Sat, 30 Nov 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732944353
