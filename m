Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0904F1879
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710628697; cv=none; b=dcXMYZU2cM4dAwfrxc/M4SBvssKsIG3IRLny37lkYZ8fZkueGDG/CdiqawAdYVF2RXEJRmeMRFMLsDkOcGekhv1YLaqjAOj9/PaNq5b2oFIscvTGGR/yB9RluttgQAYBU9Jv/Y/WinyTLIKdhUcJ8nJkIsfmdzUtnsuZUrLH+2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710628697; c=relaxed/simple;
	bh=WHnYpbubsbTZcAS4FKNJbTSTLy51Qpv8ZWyTg4wFOxk=;
	h=To:Subject:From:Message-Id:Date; b=WGfZcBIzZLjiHV7lNhhnckXBKJipDASBtvfSKHcBdh7J++R927zJVPBV4L9saqYeFVqG0fyo56/X2h7uCkyX8o4tFtwnTIToBm+t21ds31RBFapybfiPRyc2JligUc/SQaJ8fphpk+Ja0HMs48jTCBCuvxxJfhjAiLq6DeXsZ24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzzYVEVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzzYVEVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74552C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710628696;
	bh=WHnYpbubsbTZcAS4FKNJbTSTLy51Qpv8ZWyTg4wFOxk=;
	h=To:Subject:From:Date:From;
	b=lzzYVEVM4I2CAA4OTL0Q4GvwKGkOVN19eRCvu+6SVjAZTNMN3R5/hDCmXGernRRU0
	 AQx42gi4twr6cQgORo9yMaFfOxkckuoKI5onzKn8/fL7xjeODTxYOrXZ8FPr07iYt/
	 ry6t0h1f8gy/z/NWMChk53RDxt8xxrGW6RmXHFbOWZDOCtybGp5vIVCqhl9P2DOfU7
	 /cGLewquz7zP2QT3vtsuGvoPkBC2KxpyP+0E7l+6pNPILCSSO2aQW3Y+eoIWQCV/2h
	 AXLSsef1dJejwGGFQusqSOKF//dtEnzdOEL7QLQnnVBDEIVUNESZw+3F0V0Xu2IFip
	 7/Sw17LOlyIkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD85C54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171062869637.21726.12063627660575815517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831e09c2fa2634b350cbd96d0f5099f41de183bfef5cb7bebc4c7b33a21b9a2b
Date: Sat, 16 Mar 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710628696
