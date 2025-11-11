Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD392741AC
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762838994; cv=none; b=kUSNfkA34HS5miLj0ztrD63nuAMrE9sBLKhCYjZHRUzLGzzskuN2cYb+RNzIwj/ZHe1bbdCvVYraG6OiaYRnTvEFFWve1khBJ790AyECeoLlgE23hE+qfxdPiwm83bEUKl7ikdNOOtBZloZRNkVGFAi4ULS83vTF66yq3JlF1qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762838994; c=relaxed/simple;
	bh=5C/y2GD+WLAkuBV7wqqrx2YMYvpCuaCERGS1N3mgyY4=;
	h=To:Subject:From:Message-Id:Date; b=DEZCT/pw/RrsNDIJsJbFSTSPAjid6aAIpNqxlb6jNfgj2f67wfgTKkEsjMnIBsePnkEf1BFhV51bFKSuf/GSuGedrRLcX49TOEOcqodf6JwdswlsBxqtK+ocqClqeROGoawZmiS/0qKXVLUbMoP+qrWdPrn1zXSidGLcVta7dv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptzcjNxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptzcjNxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7923C116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762838993;
	bh=5C/y2GD+WLAkuBV7wqqrx2YMYvpCuaCERGS1N3mgyY4=;
	h=To:Subject:From:Date:From;
	b=ptzcjNxTim1dg27az8FKBW75MDSJ/v36mm+TwMGaaFSFtR4Yc8JYlVtjQ6DSn5tar
	 v+Qw7axp/ZDDp6Az1fPzGYOZmu9t/35GDNCPnNOCr4KuU9pXIbYmUpyMu6+cyly7yt
	 BPmuAD7WtxAqe35KkB87q+qlB23VwBXOMwkvFTYQ4+QBCO4/Z0MYuN2R55qHpMVTOt
	 2id0M0+YHoLNPByiXjtRbT9iEJxtTOkH+pG+hr0x0CeF8CQAshaLvSzNJ6gqVjKy3R
	 ZzLBpNlXqKoDSVbyFRwkCaSTbnJgJts9arVtFTc/IMDH1T8p7gR625dlWXO9DRdyMQ
	 8EmsDkl/ieokw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93827CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283899359.14866.7928261709421495708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef753a396dfd7f4b5b9ff8d056c720d36702ef23f54974bb3fdcefd6136d9088
Date: Tue, 11 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762838993
