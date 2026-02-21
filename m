Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188313659F3
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771704294; cv=none; b=q1doeVn/A9FzdEa8Zjnz+LpjWxldaCx2aG/8O1gviLUqNpH93/TKwetkaQhyax5FUZi0udTJQz688KqdjvcmoW0IqA05m59hY/y+VoMIWB9Y1yEHE/U8ypOgfPH4uvJrCcWZdCNvps3qu8zHAwh8qkNKuUBCh177FjBfmqhKvCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771704294; c=relaxed/simple;
	bh=0TR+he2gYJylRDCPTGe/IQpFs5F4AYiwyLqdatr9+1Y=;
	h=To:Subject:From:Message-Id:Date; b=tquxPMpPUCrkkg7whAgx+/Pla6dcTJ3ucntmSxvqEs5AceCjz8PWdZgZGHhmvG7RLscPBpzsRQWivRzn5y1X+dQkE6BQGXiEiLFbsxRhOZMeetD1vYc1aa85J0oeiFOSYOo1m1AAPXwy/MXpyy4OH80XzQwdL6jITKqGGxrSNEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWo+FgiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWo+FgiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771704293;
	bh=0TR+he2gYJylRDCPTGe/IQpFs5F4AYiwyLqdatr9+1Y=;
	h=To:Subject:From:Date:From;
	b=tWo+FgiOcH5kszB/kryiVW5EFYSNUFrYtGVLgudkP22+Ac9cgqxaGMP99K0gsJkeU
	 Dw6e9wPsLFAGoe7XtMITBpyZ6MOew3UYZN49EP8OJtl4WrPn2kaqDq92xUHxzYRqYQ
	 j7ReJnegJCCt4j/BXWsPjHE3OT2fdOUFX2UYQ7vtXzX9ORXrDK2pD0N2evOMFRF9n4
	 S/tvNQHLbzLEEsdiYOQft6fSJsHkB70o2OA0fJHVY2llDNASYAfx2HH9ZwWyqSnsJi
	 pN5TlXva9/iFtWxDwWL7LrcGueWdEmBmLjislogX6Fht9r9HhlzWJ9QeABKIaqNsIN
	 Lp98sSMZF5Ghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E1C61DEB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170429358.30105.9498419128722443812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa36155e8d05cb7553d373a9080e7c42a8a0225c54f8fabbbc5673350f64a4d3
Date: Sat, 21 Feb 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771704293
