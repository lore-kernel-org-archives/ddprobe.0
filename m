Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0C3274B2B
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777197454; cv=none; b=eRi+0F+78ujSF8iPr8ELXvZxKlSnQVxND4pKTzKNF3E6sb05C9ml27IF/u1zIUDLxJVpnnv8bkjIf7gedAQTyaTiS7ReuWMgKUQQ9XiLn4vE5AT15sZ+DN4+CvLpyeSAkJmM9R+XL+zG3/HuOuv1X+xeKZ5KHg75sHajBvf3HIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777197454; c=relaxed/simple;
	bh=tiyOjSuiQr08SaB3jqItqW7rRiyzRS/hgGReeY9xNpU=;
	h=To:Subject:From:Message-Id:Date; b=lgVGp686KYFxODNlUqzkLh2U6JJD53Aq+E7D71jQ0VBox2UrSrZrqgfQYy+lLw+afgR63x/szuHXmoDoPphLn3aWee2e96VwFluegiZ9bmm3dC6eRB9LUluWK6cv81dAnGmWGmWniERhALwIEhdy3fvukxDrI2AZnucPXxfL/SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=li+Iztju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="li+Iztju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C153EC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777197453;
	bh=tiyOjSuiQr08SaB3jqItqW7rRiyzRS/hgGReeY9xNpU=;
	h=To:Subject:From:Date:From;
	b=li+IztjuzpvqnIPdYXyZsKquecnsjt0m8tN74IEPkS2JDJS9lUbVQCezxfr7SPreW
	 yGpQLDBLgIPlT7TYDK9sXch0zqAf+YNZpIkLX15oSr9uvumIBAs0HNPnmAdUUAhbUb
	 14DcVmfDWa9nQZd8IuGh1EcdCRD6nnOhR1zUeNeCEco9RCnIgjzg0aOIjEZmxKg3Gm
	 OJhUH5Ht5r7L3ILzv67vv8EyL6ThOMCCZdJ1YcFCpRspduKIYQdhN/gpPCdSJRyHLk
	 kDqdS4v8WLMgTgL1f5H5AXA/xsCBF6YZocR4Cj4/eYXJUdXk2rUudn/KrUoU2iV05o
	 SXpdvQWABP1og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9CDFF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719745368.13940.7652529844242714948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25bfec36f7462b6fcb477b023c4990e93faf3e279f291f597a8d6d8b8e67c809
Date: Sun, 26 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777197453
