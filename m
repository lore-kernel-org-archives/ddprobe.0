Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3711819995E
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752267594; cv=none; b=MERon/WPd7H+EZOmjDkELkw7vUlP6btnVW1ES8HlvUxisAYbgX0l9Ts5fUYK7+Zkz2hpxkDWGzjtNuzo84gxswEv9865uvPRQXjhOoF0XBO6YVBA22mx+hTBaql38IrPOokTyWb0asQYYkrKjN8cXT/V3jIqaeo751HreNmN/BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752267594; c=relaxed/simple;
	bh=aTt35LyMroXoNEk3dvWBWLEQYK26jKKU1nWKL6i4LQ8=;
	h=To:Subject:From:Message-Id:Date; b=ZBGVkpAB5GsfIAN/4C0x1CTCtv4gdmGBCDL/djcG7zs9PeoOBbj8iTgtuBy/B7PWngAufvxpGYhv3JJmZE99sVpn5RGf1jAcmLkyoKF8YjYomFaHQisfXTsbJt+fYzd6D33CYx5MEMtWPB5OhKB7NGbJ92Qil0vKsbxh5fd4DTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtlyKS3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtlyKS3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54FCC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752267593;
	bh=aTt35LyMroXoNEk3dvWBWLEQYK26jKKU1nWKL6i4LQ8=;
	h=To:Subject:From:Date:From;
	b=NtlyKS3p5oCY3debJGTvsNHk1mJsCqOEZRmlq187gkxA5SzhvTx25jMvMH4yLwQFl
	 fbu85qGiCJ7BYur/DjGqrYl0BH30guki6Yvi0VXT2CNWM4V7A+/7VS5ZPuatjFxt3v
	 t5hX8vjrDfrmx4yDFaQOVEsaCmS9JLsfNejpWlqgml5tK5qRgz9tSGBRVUMNKQvQqF
	 1EFVmsvfAylmjqc298qr/V3z7gnD0KlTB+OypQVuVj9D/lmwyKV6ypYXlhvk+v7yIZ
	 YkCK5EW6JrPmvVeE78GOGU0wpnsm6g8MtI1AIqZfXvQ0RNMjH1cgw5x9dyyK2Tz7Pt
	 wcUERh6A1oLKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FEDC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226759358.17971.4251990501726355985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357fe1655853991891b56acd5e96d9dbfe98ec817c7e62cbd595553613eb050c
Date: Fri, 11 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752267593
