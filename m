Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0A733D5
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716093743; cv=none; b=Oz6WF3R9cCQ3/VpafvaCz52dQBIevyE5NzpnJi07ewDzAFWy0VPBvNVhnc+LjwVhFlX/4Fzx3NpJsz+enH8I2Hmvk10QhI3uM71XcPkOm6G+RBGEH2Q9YfdXusy+HrliTg0ba2sFBROXm3KZ36CiaFC/4eNGux1fU1kqmx5E1IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716093743; c=relaxed/simple;
	bh=pK+Fx+NIrav1JFX6BjgqSrcKuwQHTG7ImUrE0vaAA/U=;
	h=To:Subject:From:Message-Id:Date; b=qOL33Rh3RJkuE4QnPxYSfPH7qCNfQEhAoqIFtYWFPeVF9OC5D6Cm49GZc2FwoJrQxNdE1t1Ztl9MLKM7DAIdvrmq+tXkfrDqUXQKASxZXQrmWN1UTDsNYGd0Z2cceBT3SJy0cj7A5832etcHpvEMGW9zYeAZDKYA6f7o420P3gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzpvAfw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzpvAfw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA6EC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716093742;
	bh=pK+Fx+NIrav1JFX6BjgqSrcKuwQHTG7ImUrE0vaAA/U=;
	h=To:Subject:From:Date:From;
	b=pzpvAfw512Wig8NDqbPLcAUWPMTwG+XyWjB1fZoO5KpmrKI7Ikasm1xeCJ/ppEW1M
	 HiFaE5SOu9hZXfU32uRNToFE6OVzavn47ZZ6hcbHZ6YfOndYl5UU/aAFXBCXBpKDT+
	 U4khIBYiGHvSQvxT9hcoEy8EJXLOdo1D6ofhBSHmbxG6hhg+7gqaqRKNAHQvqd/BbZ
	 tfnOdpsNj6gopCGPp4Tt0vwNjPQcBkXKtMSnUvnzWIpk/PMHKB5wJyEZSYIPit54h6
	 ms5OZ3bQ7JLlNpWqB4KKBnBo29RaPaZDN1lg32xOTlJIIAMSg6WOS5cXHND8DfF5pg
	 qi1MKCz6pcKZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD48C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171609374275.30209.7567381048194759206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bad1e79dcfb63459454fa0f052c70c01eb4ba12a22156e89a44567198f337b
Date: Sun, 19 May 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716093742
