Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3861A716
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712421497; cv=none; b=VrTqyMDkbn1xjMAgVYDWjKhZoa1LdoYi1UbKmJl8BSxzi2hGV3ATB5aozuOJVsGy6ijKvgXW56E52qsmbKuB9ZHasafEHU5XYxsrgrHSMwxQF/DIairBad4jmpfXAkEJivSYsjL9QHns7ssEA6r5y0f2DY72MHhKmZGjQeTd4vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712421497; c=relaxed/simple;
	bh=21JdiiP1sHlOtcnaVu2sAFvjrhdiqhWO03k1EqXq+mQ=;
	h=To:Subject:From:Message-Id:Date; b=qphn9i4dycbaIIEoFsSBHIQ2SwNHupr+Wrf8w4lHqRfN3db0GuSAukudSeuW7PTEDAANLNVfscTHLITK5QrsjtfcqhRMvYnpHbrIFlXd4tYfB8b5MPzDYIXI+en3mTnU8GFDx4C1DvoEqRYsSpv5lIf9q7d6OOANzhYoTeaWCsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5UXK38G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5UXK38G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B3C7C43390
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712421496;
	bh=21JdiiP1sHlOtcnaVu2sAFvjrhdiqhWO03k1EqXq+mQ=;
	h=To:Subject:From:Date:From;
	b=f5UXK38Gy3a8oTxRmajdngaLes36LoEFd/8jHTJbwtQHomnvOvtakAvwGjr5+qUXu
	 tcenQvkfX+4s4A3wXGbuAEzrrC10wtW4bnPXokqS4qGFCwVqkKKdDtVhZqc2npbgFx
	 ly9HX9YVVnmBzyklJE8RhOxHq4sX/+Soo8invsofItaUzJI/I4z8AVphtJuIDQja6E
	 B6UPYSnzxQY++TIqdxlXKyOkk8wYD9vb4qzxQHPPSbyj51wTaGICPbOcfwgnF2MdMt
	 J64xniOhV0JAjrQSr+mEIQ9VyfWllKCAhEglALrr5+7/oXty+xkNb1nM7TkOr2ipdS
	 1MM3PTJvknsWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66443C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171242149639.5234.4860458604816009527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6dff5e452a433aaf4c1e1e133f42e03fef22bf4d4f36b30ac9896acffeaa51
Date: Sat, 06 Apr 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712421496
