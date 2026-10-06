Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4F322425B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791265234; cv=none; b=JpA7wUfHKBIr6dZ9Q9ZS58hBdwfz5z4u8eJ4joxCO8pERdl31U4YZiwdLIJEedQWPKbdkT7bmQ+bfqUpVA1Swkj4Pp9q3Fy+NkPJrQAdV96SmShCgP1r5a0vrjW+7RsFBz/0jFShW1NHu+IoHAxLNFUZ0hzAeT5OKA3UT2hDiRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791265234; c=relaxed/simple;
	bh=ZrTWhLlIdM5jkoaOcJZ9X3A38bwHNZ+ZCew5RipfC6Y=;
	h=To:Subject:From:Message-Id:Date; b=X2rs8szHLgmAICUSM+DrrfbmUfDjuu1+znKkiF+ZF20kokczUFODOdWqig+FGas36vcj/kgT44Bk0K1OG8eJkUhbcvHo68bP8MqENdT6xkC8M9W0SCYVtFBgHSbtA6dvzEdClKw0ukKOVPgt/5GPaVwhk0FVpTzrEkxY3M38ceM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRUDNUjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRUDNUjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAADC4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791265233;
	bh=ZrTWhLlIdM5jkoaOcJZ9X3A38bwHNZ+ZCew5RipfC6Y=;
	h=To:Subject:From:Date:From;
	b=bRUDNUjGuzVSPlw8RBZcTXR0TOVeR3dCNGSQ6mjDLbrDQO2ygrVNMK9azOOzYxxyw
	 TkrdxJxggPdbOedFuqEOPowqyNzvbKM+r9slz+75uKRKOw/wi0qIORlbisKJGgnp08
	 gPZAtOj05amOhhF+xi9b6tsvT1WWKiSIFe9e6+77nNGWnYXzK8no5aOjDl2PEiTEv/
	 O2hhfWMhHFK/z7DeUbExngATxP1AEALkKLSUZhtWoQ6ut9LZThCM8lkhjkIQuit5+9
	 KJ6qOMggOP9lb25U8Sx14TyVjXe6sjRLMR+JLo6GFKauiM8fH+mYTrLo1N9V8cj4a5
	 CxF/aqKTp6zgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA77CA5FFE
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126523368.12070.4543788828016379765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126eb70931ecbdd7d912ea1acf4a596f500f10eb5a0069c62a674615226f40e0
Date: Tue, 06 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791265233
