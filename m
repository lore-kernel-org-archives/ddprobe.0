Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CE5487B0
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 22:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716329003; cv=none; b=SS8kYafIy7YqbWtGt3MGQ1YH3lQ6SoEPkuR8hSmqnUDwjvFDjMBlbfVYRl7vnZ9bARWPL9zoSRvx5p+uJTZj3RR9mraa9fpuV6JSsLDV1qCh1/tdDv8nJgaYB/EEY8bEnrLcRlgA4ximrLTYEj0lfFGPaxzISW51bMH8laGnnmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716329003; c=relaxed/simple;
	bh=mS4ds30BAub2leF9tAhhEzOdbV7cWFnBMXoO2Y3ayTA=;
	h=To:Subject:From:Message-Id:Date; b=YsBz3RxFPwn8jPNlsF1l6d/CbGQQVVsdT9TNHMAaQ+2oNYiBeQ/bQxIo7DA2uwKCsZCEfpvarux6izvtVOYahmxo+8kaIm/XJgHxvt1ZKagniHGT6VML8a45ZXdnnAVrg8i1K89Zsd89nRToGUYU07CRYgSXLe303BeRPYzEVC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lE1bFiJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE1bFiJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB5FBC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 22:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716329003;
	bh=mS4ds30BAub2leF9tAhhEzOdbV7cWFnBMXoO2Y3ayTA=;
	h=To:Subject:From:Date:From;
	b=lE1bFiJL5ydbGhGj6AEJW2cjCZlxNRckNKTlnZ7qJfXijS7k5wviec0O6RgETO0OQ
	 WzU7YoaIGZ0hny0mU+hQK94Qv1peDCH7UyZXcFHJzDx3HSx6OTNZdKnHUoyQ0jK+X/
	 7336tZtLy7vtcdHUYrnacXEiUzmQPLpB8WamE/Oxq/5l+gNE0J6oBNmSCQbs4ghKOy
	 01EGXmruYsYbt0P0EvNECD/n1buNJD7be5HMFbIkYMGnrZMbwmXrnHRd9JSylSgkwk
	 qwFjFLF1istzLkge9s+ITJ/S4Hx5HKRZU4puewPVSgIshuup9V+9BhTON87V/Rnw9B
	 Rcdd9heAycWdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8B86C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 22:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171632900284.30460.9601826006532263037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903dbaadcbdb1b252989ab57f501988504356391741479c2a169f2e66069e118
Date: Tue, 21 May 2024 22:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716329002
