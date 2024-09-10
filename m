Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3124612E48
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725950154; cv=none; b=m2bwSMK1AMAcF0vSfMEJzSfXlMZNOxgbckS0NtjJFfh6zeHnRhz8vmDo2fG8IxvIKfHHngftVXE5ahv6TeGYJ6Qk89LHX05HvRq/4/f6Sl8w4VqVZHeWReSofp6cALDMBn9rwv5prtaZKpLecT3hmxQ9sYsb9lP2nBZVSyyhwfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725950154; c=relaxed/simple;
	bh=eKRefh3onnD28ZiSGUwh5eT/ugrZ2oGAkYQq+VYo0Wo=;
	h=To:Subject:From:Message-Id:Date; b=qfs6Zjddf/K8jcqhXaOtLmQiVmVztnPQK3pYVsE68c/GFzkAwNmiiwU28h0jVzAGZfeqHC1ZaQWvttKNrY6WBp0zfWWIpoIMEnqIORjA3XesdeWwDXs031aLXISpMqZrh6T2Ne5XTiQRAfTZXHQK3j+/me0ZJhKHqKiXdNF/3Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HblHnEfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HblHnEfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D07CC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725950153;
	bh=eKRefh3onnD28ZiSGUwh5eT/ugrZ2oGAkYQq+VYo0Wo=;
	h=To:Subject:From:Date:From;
	b=HblHnEfwH+YqB2o0LhChfac9BiA8wAF9fHwOCbsH93O/3wqAN2Rb7LoKY1M3u0PQt
	 QU418hVqNKrbXtXdEWIIOt+aP8Qu9chhxSpSBifO0wPrmM5/018sT6u4fIfvulpgSs
	 7DyK7sAqbWUo3K14DTq8b1BpBOAeb2VY1kCFkT4G/sgwBUKx2zTaWJeki4hHO0mswx
	 zVSDfROxfTlwr66qmuo4y7Lvhc4f3eB45z+QmauRLSosP1sydFTIOSokZqMKXkBTZp
	 L5O08ZXAazd/ERniUvJg49OXz0QfX8y1udylx9ncIXMghOpEQ+QepBMF1P+Q5rBe8D
	 cdwUpnK6oPhpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F3ECE582
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172595015357.29873.755336170493930590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790c64b9a37b5c0b1010c29a18d0c69bf179e6a7a39ac87a1a4691d92c3d19f2
Date: Tue, 10 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725950153
