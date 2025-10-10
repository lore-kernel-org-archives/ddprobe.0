Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF729302164
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760126993; cv=none; b=IS0Mn00zczD2TVe9VN+Ah+NUaBomS116Z5VQ19Vur2XieKKdmJiG2jyjxafnxmDMC+7+OieChfnYRjdDB4QHJvZTrYA78xRTHaqzPt6Ct2tZjWlf4ZQsGqIHlKuZYYvlQYMIkj7VpCE5/747VaFnCT3ZilwjVNkynhz82zGEahM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760126993; c=relaxed/simple;
	bh=UVP9F25dQPD0JfcjD9VVhfpSkWfa4p9ukqEVYonH3Oo=;
	h=To:Subject:From:Message-Id:Date; b=EDjhaoAbmTUpgpyPy4JEu4FUEtGpOzF2FFlPiTziqrxMs9nPz+nCXvXtKd+U/OK6JEC2BcTrM9zwrFwI13laoQfFfUm2MENsxvbbYMgGduabdRRzzQOeK9vA+gGkO10iH13Ucht/KXp7HFW+PD8OxuB+naJomkrGWpJDKmewgqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mep1AIFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mep1AIFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4EDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760126993;
	bh=UVP9F25dQPD0JfcjD9VVhfpSkWfa4p9ukqEVYonH3Oo=;
	h=To:Subject:From:Date:From;
	b=Mep1AIFoE5zjqnEQBF6/8+MIyzm+WGz6+6XRVdsdrFAkYJVZLOT5MUS7CP3H0ZOnI
	 oCA3fU3f2eJ8SSQAOfj20817LXYPw4Z8K5SL/Z2FkhhezZHsokKmV4EsXcqDFNa/Dr
	 crXt/p8KKC2Vc1agu7bV8F7Rev4eTxtf+0l+GcIRq7VrNEWOyEtv3O26+/Wf8lWzUf
	 gWxVbEiIQiEjfPtlERuKkzTvLRPcHS8fJ+uT+dclG0k4P0T3F8khXK6IzVzOA7ydDv
	 mew8C61aTnW+A2aH9aWn7RFnUdqB+308vpl1ODIMOGUGM+xkSnT+eOSyHKtqQkQFE7
	 hf8LxokMZa0Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F496CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012699357.12587.14203325615720436455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b58b33c151860b28b5e74f5378e30cf927eb60f154f39613beb56b41018929
Date: Fri, 10 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760126993
