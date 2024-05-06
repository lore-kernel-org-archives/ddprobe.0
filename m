Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2112D051
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714967543; cv=none; b=ah9qwOKM3xB0tKzDnfbuHfGWibhEPrFyIrppx1JemhC66wB8EWgHJlWHd9h946fDWLKdivLCjqtPfrq4sZI0KlYxdENuKJVHCH72yPmImVI+X1PXqEb5bbQpzv9emTayB+qnuI/h+KOWzL6RgSYoR58F9KP8AZVaxdUX4bCiUfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714967543; c=relaxed/simple;
	bh=KXlV/eVzWyrOsGvhKVB772lt57UYNOsUfADuiq7PIiY=;
	h=To:Subject:From:Message-Id:Date; b=t2dBGvK0iSFAHbpItKz5GE/3kgtorwpvEyiRRzPNESUGK8t2GV6q227AoNLlrBDGRwfcn6K2fUo1PEY3n3xHq6m34Q/BF53DS0WXfPp27jO1uiy72iV1s6x6JJBuUsYwAJikSDFCVaCdVcI4LgC2fyE/orguKDTBbPobx2BM8cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ur6+yvOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ur6+yvOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78CDC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714967542;
	bh=KXlV/eVzWyrOsGvhKVB772lt57UYNOsUfADuiq7PIiY=;
	h=To:Subject:From:Date:From;
	b=ur6+yvOKgQHhwuJeOphYMK5QUy2Td91HojZ4C0hS+jrNfyogjGBjPbH93BMYXfGa/
	 BwFDsYpm6ZhKx2u/Cv0jnsXYuHc9wXL0vfyXzT6vIrD0HXMaLSclsLBvN6oxLHjaFV
	 IelAiR2PD+b2zJQ5j9nIrj4Kv1oF+4VEbngXVsuxS2RSfgxXjxaqv460xbdeS/jah3
	 uY9ZXFdwa7GKiEJsPXY5bhN89XKHTLota4IltBg8+4nXO+QvssCFzBSBKbCRvvBTLT
	 s2g3DwrDpzUiv0BQIuG67llVh1CJE8hh/ZjyLoCfI3ZB5+bCFwqjob4NQx9xu9hr+l
	 ycxK2ecuCMhEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4817C25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171496754279.4730.4494360828949015127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f47f47f80a246002d4f4ff0d0a5bae9f6c9a192592da4176bec9317a1725c7
Date: Mon, 06 May 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714967542
