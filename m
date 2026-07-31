Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654C030EF8F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785466834; cv=none; b=lfa4RTFunWADpKsnTdsuwWmRAz7uWU2pRIhzXFR1P1QkSHzPPxijZjmoPPhBQtUdDUI+I3gSGOfmH20xsIcM3MEmRjzteQdeONwHNbPM/BeE/zlCAmBd8XSfcGGI22us/yGZIHTTbHbsDLKH2FVfuEDgtBhFIAQ76jerFU//0SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785466834; c=relaxed/simple;
	bh=x9BrLfPmM9eDxxugTdEPdO+JuOUCB52wgeIUtdGUb24=;
	h=To:Subject:From:Message-Id:Date; b=YX6j6SQcIAqt8ho+OZClorzDGmS7s5FZuejKvkd7+4iBg3AuVgsczClj9pDHGByowiT3Ve54nA++9RgGfS7J4QIk+PNkIewjo/gesRwqnVUwDJtIawi5SfBRUvcgaovxPH6MOjDY4IeR6Z0mKZaUn6l3WGzDHoSRpeDB54+njKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMLaYMzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMLaYMzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2251C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785466833;
	bh=x9BrLfPmM9eDxxugTdEPdO+JuOUCB52wgeIUtdGUb24=;
	h=To:Subject:From:Date:From;
	b=KMLaYMzMYC0D0YAZDX4O409dtt2kX2ymJNXUfueQdiqRYMPgTQt9IJkXD6e83xFBw
	 EDuDOr/48eLJyus7AuNZb2ORWjCdPJTjh2jXZhdcRlVj9xiuR81u/AetDaOBV5EIzw
	 mJnPgUafE47OoY1b94yvfSvHFgyuJxYypTEg/PmrutZIZ+Z7Q+61N0FBh+nN03tR42
	 U6c3hPhN2a0Qcd64P9B+puj9L5DcU+aM9LCiVds1aVA4NyYvEj8128+DI4M27CM7t8
	 nMqtPpxd4jTaJIdpJFsq3gWEGSrQduMztYS5H1WCLXdFNK7Iuq+FzPbKN48sOthXGR
	 l/7IdMEMxZsmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB645C55162
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546683368.15634.5412531325900495391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c50a4b8ec07de9b4875098fe20e8c159af40fd2b58ffe52546c9233dc80ee8
Date: Fri, 31 Jul 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785466833
