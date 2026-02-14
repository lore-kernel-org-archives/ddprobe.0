Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACF3314B82
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771107894; cv=none; b=nBS0/ROyFgJNK2YsSmEn6TfYHbJJxNi8K+YVcJPu812oeyayf9Oi/7FFrG8HYavtdZ3iouN7UrVJCW98oH1TL1weTNjhsKAJKf6VniEYaCqTZtoHATb2yij/X1LsUF/N0ozqJ94kXnvgQFHgNYZ85cdgLcn02MbCEVdW4AUNxtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771107894; c=relaxed/simple;
	bh=dsn4FE6fzlrxqq/ESGjF1bOLZrzHj/3fU/TqF95J3zQ=;
	h=To:Subject:From:Message-Id:Date; b=SykJNbSn6adULFP8I8vtelHj6PIVgvsghvpDEJRuhLwBUPp8UMeebEGsGpzHjH299fM5t/OF5n7v/aZ7GkwmW5PJX/SJPBgGnsDIZ3EClgbSvJX/sE55i6SA2KWGzxqG6g/hyvyPsgXFk1xSByE0KA7C1nWXauV848oLH+MkmXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SF1zP60y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SF1zP60y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA1EC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771107893;
	bh=dsn4FE6fzlrxqq/ESGjF1bOLZrzHj/3fU/TqF95J3zQ=;
	h=To:Subject:From:Date:From;
	b=SF1zP60yo5O6ODXv0jJ+m0KlC+JK2yir3hxwKNOEaIsslgGteXxp6Xg8Drhi5A1mF
	 8w0jFOaGqjwPKGHC5RMPMH7uDRHQWFEYYH9iasnQhlpYnsQE/kYKSpQzXz1DqKfmOH
	 lwhEqGNAi6GkaEUo0kUgM2RmA/qrfOBAzknlcF4ukIwutwMhfZcZx1DOFfMB4Aq42t
	 oOR2t8gOL9E/FsU7Lp5GsmHZCMKlyOxkP2Tq/vwtduudzA3f5I+vf28z77wwBcyfBg
	 qn73mgiRozgdeKoI35zi2pjgxq3CiEvhHudzUq94TrPr/XGI59VxkYYwInmvWK6Hij
	 X48jqRDHtCs3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99870EF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110789359.26700.11976066622237079603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c468cd92435313011ddd7ec2ab246c10bb8b1e1b9b8427705ced7faff388948b
Date: Sat, 14 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771107893
