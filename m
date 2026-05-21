Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7BA2DB7AE
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779355834; cv=none; b=eHk5dDW1OyBM5IM7b0kZ2n8NO9OB+rB9BczcQZrJ+n9DassIOTGOB/P9ZzlegiaQmeyTYxnbJ3bt8H5tExOtJIL4GOm5DxqH49EFf308rqRzNcbYFZRB6T/3ejhxC1giyMYWFf5a3PqNUpkoz7i9FZH5288ClP7Wd0923qoX+vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779355834; c=relaxed/simple;
	bh=OLTRhZrIO1rzJv0weVCpZg/uBrG4JU/zfBeuvjfYcAY=;
	h=To:Subject:From:Message-Id:Date; b=R2CdPdfAo+ea86aSGJcLZc1vAA38Q1Xxxby4gQJ/6LnRfRtUdCulwZajRIzJp08vZp3jCbKRKgGXE6gKqElffods3cPTRMyfHky/aEkdkvFHzRfVLrgyxKLK+8lsskZtLbxSBrqNaab/zCaOuGO+YZiQU5ba/I5x3dXRII8849E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTUPJl28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTUPJl28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4938C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779355833;
	bh=OLTRhZrIO1rzJv0weVCpZg/uBrG4JU/zfBeuvjfYcAY=;
	h=To:Subject:From:Date:From;
	b=PTUPJl28X1dIqjmT/H1X8Jy3FMxjRlgGfGWmlmhaMcp8iF77NMugm/gMX6rp2bfZV
	 x+qGpyqBvlJQGTl32iTpILikdLPH2CzHRbVBaaIjEHrUMQhNZmLtzRFmd+Lfw/hCn0
	 QTiYdqdgunqyqzhPsnlq06RmAR23wpVm6QZ4ZvLOnR53lmRNS34jjnko2FVrmOhiEn
	 HxHxRq78skHOFecjnULaFxmbFJPHEDF1/b9VOKo+ooZ1lghUnrD3OVI1ia8F8klstw
	 4eepjrGN4XWhCpQwnbCKUeTAcC7wTzoCn9+xW+kzWTE60MUsjM2H/aVJLgGwb69WbQ
	 gGLGDPNinImKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC0ACD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935583369.7847.6906495677580824733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48249de5125a2deab3e876320d38c5e7ff5f7af0a76e34cb5592b0e4c547fffe
Date: Thu, 21 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779355833
