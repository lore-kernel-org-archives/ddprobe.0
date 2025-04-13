Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51299E571
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744509594; cv=none; b=A4tyySJlGVKPCnxe23RNotEVk1itm7QqN0OSZiHNnlJ5VDxGsnMpnIk4LOcH0Lz0YkbAA+iF+XMEi1I3HCnsBdUAskRMpjHtzDsxKMc/EvvP/y6tMh9NAPJprjvgkwtsj0rBDYxaVk5mK7tkfvoz0nVH6uc5vD19cvirJwLM34g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744509594; c=relaxed/simple;
	bh=6ocSGkF45aXz/6nOVvXBjM26LuTUmL5X1ChEn3AXJEs=;
	h=To:Subject:From:Message-Id:Date; b=Z27Qtv4lsC8ao2x7fBXBzM8Jmiiamb/hwWD13PYQHXD5r/6/mfvTFwMh5xfinRmGXXxozOKMhYoIzrj+igEePd4nlUWeAiA+Dr26GcNHvZqoczzyjrJSEep2pz/eKv3ojpxUZB2uk0ilEQMbqJs2QT33CwDFp5RLiXqPz+gh1ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc8bRlYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc8bRlYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E1AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744509593;
	bh=6ocSGkF45aXz/6nOVvXBjM26LuTUmL5X1ChEn3AXJEs=;
	h=To:Subject:From:Date:From;
	b=jc8bRlYp2RcFS1SIaQ9OGMO30QmJeYDKWFkJeH8z+uc54gOJ9MwcKyDN5teM0PNJ4
	 ddZf06FRXj90SQhjTqVSa3ELrVqFaInfGr4kzDApNOkvW3NQtmtwWgh31ZE3e+NQa8
	 1WnNgRsuMom4mKUgyDWtuFRh348T1ItMP2WkaeIV5LnAV/eNyjcpmM7A8XHhiLlQBx
	 mbYVqzzM6zDneex/6oMUWm64NAplj04sEfZgBbnvDeg9PeEB7mtV6y8SZdS7Yzkz4d
	 ss8I/+Eum8uji6B09WqGWOC3cyOizmoidkvEL+5R8yuRM4wQqjzY8IAW23JVkANNqm
	 ICYqu1MCzMMIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3D8C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450959360.18324.16898120476638332357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40769f376728d65e227c3e4ac94670120dcbf52b8ce9ef21b5ba6481d9c0d6f9
Date: Sun, 13 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744509593
