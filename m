Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3177512E4A
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733792754; cv=none; b=faCTdo4VmZKODCmOLuCE7HdeZG6+h2sNpnj5rQtFss4B0Mvl9KD9iFkrlTNLIYwRg/C8EECnm3Bou6jGqkZv9sSws6VMAn5n2CaRzOHwrp+rOfSVNK9GzhO0Zi6mtDG4bmxeDDTHSfnR78imbVBJCCQLk9ZkDM+aA88PD3jFWlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733792754; c=relaxed/simple;
	bh=FzAfsWlyfmKAbPXO5nEjyaX4F4r/0QRkP8OCl2alRDY=;
	h=To:Subject:From:Message-Id:Date; b=P0kGlleylZ+St9zuqVi91y3z4d1Pp4z6pmf7CoN0k53mO+sAnvefklC42HiS1ReLxcHh/rM2KWQSE6o0C/kcy0uXUzChg7/eNy0wl1vpVq3DQfo/uJW6NYj0ovlnavtdlMcHCYIJYBn6PR0w+S/Nn3MYsjWIp9yuCmYHG0GjsA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4bG1inr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4bG1inr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E4FC4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733792753;
	bh=FzAfsWlyfmKAbPXO5nEjyaX4F4r/0QRkP8OCl2alRDY=;
	h=To:Subject:From:Date:From;
	b=Z4bG1inrAuPmUW5920F1JzmRugCwJfOfWuUOZyRORbyUF1QX+qjMp9RB5H0YwYp/R
	 88W2Qls6AsmFso/gp1/XBCA2eCFaz5ubm/pEWUAhs0hCGfV6fz+Balh3EujOau7oZX
	 ffXr3NvibGlmuqVWRYQ6A3Gzhwri1FzbKtX1r0AhBGcXYcFZAq2sFtVH7FooNiqF0W
	 wNj92cvpyepYhSGGKvN/nm4noJIXsBxLYIfjXpsF05WhhYhnWHOQCduzSQvOgVBz30
	 DFRzVqwaPVl+Lo/H+a+V64QEyIc+Y043XRME/9IYtiKdDgCXUycBUewlDNbYC0Sj0n
	 FQ3pE94uiAgrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933CCE7717D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173379275359.31772.12708024283242616029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16426d0c6f5b796ecbd9fc32596a3dd9c69a8a5b8dc4204952a4bfb29c64eeb2
Date: Tue, 10 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733792753
