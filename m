Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84CC8632B
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777947454; cv=none; b=ojs8lb5CoyHc+q3z7HhxesP1K2t8DDg6HiPpioo7tmddvrynjifuq5gdbwDrr7ezm9MaF4x5+lABMn+H2E1MNL8riD9HmIKN263Njqm0ckFFvqHfbG0crzI87eZZlUKQoweJE7RaMkvS7yB7INsH181XVIC9MAZv7zqmmKIUhOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777947454; c=relaxed/simple;
	bh=zp9+ok7HCKATAoCDbgL5JoLzgKK6MiBFBMXgxph419I=;
	h=To:Subject:From:Message-Id:Date; b=ZKxjNPpGasu99A1oX7ZBLZxTRvPbo5Kfv9w51zNzxuUL2HEXOdKLw8lbtBZJlhj73PlumVIUJQmO8ykdl6ArhpzU+NPgg5eW5W2FzU3AF1yQzMx3liT1sw41RYmH/AsqvaoNGBtQsHyD5EQswTDPExQ/8eGXZ5kSzinVqjEeRPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkKqq+kY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkKqq+kY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1349C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777947453;
	bh=zp9+ok7HCKATAoCDbgL5JoLzgKK6MiBFBMXgxph419I=;
	h=To:Subject:From:Date:From;
	b=NkKqq+kYF+A8h8fQveG9awnsycAe4YzgNt3k9AYpAJnDfp6oteElHkd7sVg1VpCIe
	 n1h/nuWX0H9k3HBj/Ag37aeRIThHn7H+BkGdch6m6WScS1t4auXEHNhUQI2kCP2hM9
	 dOEb3rJ+GxYDda+0U50rtvOi6AlSGpcV3VB5Ap7xTk2oovVwJYdhJWpo0yxRZCnsoq
	 7oFZiq/YWU93gE2UELsMniJrzgUSUPdVY778PwZJwybZCDYZKw5to5Bclj5py1Qbt9
	 521hBT/i0Eou261cPHbOzTSJjgHCrj1VolAIIta/4Lp3n/YjwTxUR0bhRcrQOkG4Qw
	 4Hz+OhHppO0zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC47CD342C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794745368.6992.4230448627565033583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f04c07fba1d96b8efd1cc938946419919ef20fafff64c0cc2ecdc72862b2fa
Date: Tue, 05 May 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777947453
