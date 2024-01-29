Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1222C266D4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706564897; cv=none; b=rMVMHFpU2YnkK8TMmKRh7ov7UF/JsDUzbMxU/qe7V61cgRExQcTFDMMjdOWOphbgMm3n9aYjSBaPsar/Vp67+pfCo/EMdef9K71CzpRWd3I7G3b2+r0R0ER0VcjtIfvJ6IBZvPbf7+NWgJSLN3hrCB6vTuK2q5pZGHSljfhV/HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706564897; c=relaxed/simple;
	bh=YajDMEs4M67SoMWieslHowfCxbrBhUor++cnunEl050=;
	h=To:Subject:From:Message-Id:Date; b=YVqBctoSdVkMTHof8AEv4VXh64kMICDC9ieX7eimNM1Q8tSzy4e9sMM03VKpC2KIBPNutbvHdPjOSaIUDq6nGSjpxRqlD33babj1pUYB83vqHuRbnAniZfX2GoViSKRkaen8kXW5mCOxrFHVX2tGIdvYW1v74pKiWOX/dNKUAIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV0hGwns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jV0hGwns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CCD1C433F1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706564896;
	bh=YajDMEs4M67SoMWieslHowfCxbrBhUor++cnunEl050=;
	h=To:Subject:From:Date:From;
	b=jV0hGwnsUXwxzfPt7QOQ2MI2/vlvHfzYN2g3aaEU/JPPwIV9w12eUUURwTYOwEUWm
	 3lx4fNzH+CmDlQaeIbFvKb0g678tTbVm8vsjVHehW7m9/6KD3KhmIDNJH3/6kONIMC
	 DM4c5lqaY8B80vDkFlp9ZDAjcAUeDqjISkEdSoZzhtW9QCZ35KTYhZYamGSlH56g2w
	 sXKNsOSCK6ocme6HvGLxI2bCiebrjT/Pd2KgkQlZmPazkJtlWSU2wb4/dPEqc/1uL2
	 CJBsg8t8+3i55iei62VK1nvlM/LYahhP/JkOIc52jAykDve1OZXeEhAEPDZhFMUMjX
	 /R29BI7KgRziw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DF54C47DB3
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170656489642.14331.8895887433080658556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83dc3508f65d0b21e6ab4b4ec8c4039e6cd4e1f4b23d19462926927a23c30e80
Date: Mon, 29 Jan 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706564896
