Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF252046B7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736378754; cv=none; b=TW2cFerZsryRE2/cXH8mcrr7cgRKwVA7bAfvrFRqYLm/pwMEvqYHgatWshG2zDTmaj4C7wZSBR3Y8mkKmJSeXgGCoNjH2L3eETIdfnf0Hb/7eEhFjyzSa1/NPPXWsXFWimDjxbPF++ozBbOxrk73gZ3Rmq96TIU5mRmUH6vMguU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736378754; c=relaxed/simple;
	bh=lWNGW8wY50tJnYOjvNOIEcC/k0Ca+yqZSJNa52GUdrM=;
	h=To:Subject:From:Message-Id:Date; b=Ff8M2QVFEeleWRHwH5x4QayrFROUKbedXrbXkd98TwL8aMtYWzbnIZe0YgfNQ4NCOajgaHKnFhtKrqYvTvR0LI+icH3VsrKUgJbQ7VyO3KTwG/DK+S0tMhyrva4HPoz9SPktDJs8fc9lW8fsCuDZB2uDtjajJ2YrwjQVIqnNAUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkFLqZhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkFLqZhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C30C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736378753;
	bh=lWNGW8wY50tJnYOjvNOIEcC/k0Ca+yqZSJNa52GUdrM=;
	h=To:Subject:From:Date:From;
	b=fkFLqZhMGHFzKk832PypbGf3opzBf6XsxZK+D2tcYEboD2Je/dXcdZ3QVYvgn5DAe
	 erowk/covkuCoUX2NV4GPjJDtHeGLZm2lEjH1nI5283+5i4PrSskqSYrgbJ6659FRg
	 kdvE0uilEklOAC9VVAhYQzUA4+Su0SB8aajhXqbOnEpwwslpv0qS2HNsAFZXTxGEOs
	 KtBp5yS1pPPT991FUTg9VqKvWkZJMmI/beB07rJQQSKNf7/L+WQzT94A+sWj+O44Pj
	 0dvd9xMBjz1fdraZjy/Lw6MX5Zhfc1OCvSThfxpwd0DowMAizAF8ojPSMEELdWZgTr
	 JAzpNcMNbCh1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45E8E77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637875362.22017.6854081107856348547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223b57cde8fdbfe878d80abe23c7a1e60aa08e5084592ba585441bb5696f2c92
Date: Wed, 08 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736378753
