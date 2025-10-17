Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EA5354AF8
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760741994; cv=none; b=c7/MBUxWUCxBYEKx3g4KWVrNIdTW7gcGWiQk+IHFPMuUScRLmzsmUOtiZfxSoRgnr6iqd3/ON2lEjaWcbEA//fzblb27zUvyIfdXt0zcppnMtNh+UNrk/oPAokN8DLxDhgJUoDl2RiJSXPF1Q3mEgmc8CGgaQhcd2DERxc/gK/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760741994; c=relaxed/simple;
	bh=G4Oy07zbaOJm6HBQC+CFa0KlAEeI0ngVOSP8TY3BTQk=;
	h=To:Subject:From:Message-Id:Date; b=hLlBGT2p3lXVmvSCRC7/iALOBiLQrzsTXhHZhx7s5zKfRvA+RY0e7hYdeArP7Vm8pnzNSdZKSSeh7cFrs+E2v4We7SVmB1HBBl1vpTLHWIeapOsXCov8Bhm2c6Ygwgzwbn/fbIO83PSJrEkJjezaqTDHTdnpytpJNJfnZ1CYojU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBJv7Pm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBJv7Pm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6509C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760741993;
	bh=G4Oy07zbaOJm6HBQC+CFa0KlAEeI0ngVOSP8TY3BTQk=;
	h=To:Subject:From:Date:From;
	b=cBJv7Pm2Gr5OUdWpsfvaPkD3YR1y0U/wdoY9YUvWs9Gz/FeTXXf/j01xz2RJg+n8W
	 kzjqCkhQYl9DNfzTJS+ycPYnw/DuwQsOO5ZmbDRdVwpDcWbPOvDwb6btHBIHuDc7FH
	 dOdMOKxRNLIVUkCgFbEmHEvbjyCdPd5AeMtpA5noj2Wr7qD2C9kAcxr71yx7Lg8Bh4
	 ct28cd4s/5wsJh8h8hZ6G5Zy6Ffi1HjslvhnySy9PKahUKuKbdjdS69KeOh8hRJ3ye
	 CX052bz+sza5d76H3VWL0KlutEMH0scSeiwRLn+IpW9fdxfKlmIhelWVwiq3/n9dBs
	 ZWlSigxRRqrHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F33CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074199359.25586.15970640152655875552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c4a99e16fe7338ff830a5d22c22b0d0eb0724c4b7dd1371134431130455b91
Date: Fri, 17 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760741993
