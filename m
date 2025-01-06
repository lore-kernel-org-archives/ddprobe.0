Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C7A1E0492
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736201754; cv=none; b=bJLNhA00ZqMkAkDwYjVqU8JbAod1BDOCRO9iVhCB8aLcBj+LxuR+Q8UL2xVYnKTmRJgJytAWVGwYin3JT8H/tr++T85PorfYGVi8KW2yOA/PabrXyIXxrA0svIRNrRrPy1KcSKk+DzFI7NtmlkhnArae7pZrjL2ooEGsGgmkUCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736201754; c=relaxed/simple;
	bh=Tyamu6H4uLZ/8ORt/MPskoJ/3ajRhEBkk5ddIxTuD9Y=;
	h=To:Subject:From:Message-Id:Date; b=owZ1pNOniWRv2ZMYUVdPuyvYMvCSMXgvC3//y/VSxaX2nrE6NYoZoMKIMrqyQnLkMrI449qslZMh1geYqkHzf/bCo/PQfVz/j6cxi6RMB0DccEAPtQIF79skdAwOF8lLk9viN9gYc8BbU0o/dNTZ90RP0/J87NIh0Yk3Tv8pG/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMptXB1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMptXB1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F58C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736201753;
	bh=Tyamu6H4uLZ/8ORt/MPskoJ/3ajRhEBkk5ddIxTuD9Y=;
	h=To:Subject:From:Date:From;
	b=GMptXB1sRIk8AJZIB00vHZP5DHEKyVObKBZqxwNAcGLKVRkWwRYj1oqN9+zqtWnx2
	 /Hjwa670XMSme84VfNKXQ5vWjsFq9KYBk592rNvdd+EUXPDeeRLMPcVyITxJSmTii8
	 Mb00UWq6SS0yvmRUrknvraUytxf2qEM6zXBhEcO37k0d3gVqocMmccJngWkSApIe6L
	 C3ZnigRyJ1eOr3MKPeB9LqNPXZRYN3a/IwFk3fboVl4E4EFPDeJ9+fV8fo/0AftsXH
	 ++CWPou8Tp2Sz4k9XPSFWkhKW+yV66HXrE2WV310kgjiUU+a4wmmW1am+UC6VMqo2H
	 Fny3Sqda/U+Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94542E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620175359.18488.11343769108373334287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c41f056fec044fd9692c0fc923839dadc34d165daa94c100643d3b764d13da0
Date: Mon, 06 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736201753
