Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCE636683D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781028334; cv=none; b=TPJQk9Z/nANi3zgL/clUiCLpiVWwtNWOrC7RW51kZVMqWPLLrovR7gL8POTNTSZBPuDZiI8eriTUOkgNO0u7APKFr2cK8OQAGdQOMrpzb71Hi/GXX/eSW7UUk0SQFEHt/2ZmZaHX9mhfIc3IDA3jhi6Ym6FyTo6ARzYRIQsyi/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781028334; c=relaxed/simple;
	bh=F7fjv5geQ9aFwlFGP071gmb85zaxVbTnlpqk3N67HXA=;
	h=To:Subject:From:Message-Id:Date; b=SIngozF8Rq/+X3UVJPnfi0YuIeR/9PSxfrMpKv7g9A8JoAn+sYOwGsiaSLoPO11B1nDrhsWW0xkQkftfcHPNKCqXDSI00XhX50LCtjPpUk10ZpJnab39PMr0HUE8d3HxFGh9cadXJ6RwQXeFruTrFvLpVHfwI+OlX01QCqdsoTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3jznkJ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3jznkJ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5DBFC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781028333;
	bh=F7fjv5geQ9aFwlFGP071gmb85zaxVbTnlpqk3N67HXA=;
	h=To:Subject:From:Date:From;
	b=V3jznkJ26zd7grnrsCPkShLPdzpy66NZUHMAqb7XCFdI9P10IMYHd2UsMsvhGIX8r
	 6nCmBJYL9HWB2HfGhNiAuaB33dr3J8E9EoRIHp8tXSU1wko5l/Ur7AkMNaWVytC9bn
	 IIchJ5naBzIIE4oUce7rjW+EFAItMfu5a6ZhUtBOfWIkTLgzdsRRbHTHVwBq/RKLxP
	 PQvB6N9LggnR2KEOcFc1uckE7Ce0L6qPL2RDauQezLt6k0XLVR+yPGh+iqKyeJr9+W
	 qXS74yU4WF5uC6zASI+Bv+cUGsjvPkBR18O/V+3GpuKAHfC0/Pzxrk9PiM/ecbW60i
	 kkFIilRKu2vSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0382CD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102833375.26848.13105431695148955453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f3c078516df09168b91c24a3fa8e7667ba07e9c13a03c6a9730277b3cedf3d
Date: Tue, 09 Jun 2026 18:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781028333
