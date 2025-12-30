Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFF624BBFD
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767119034; cv=none; b=aV/cDektWKSmAb6D7ll63p24PS1d/vBgFuY0twX5C8J6metT2QZHPg0Uqgm2IAfCKg87NEqmZrXmchFwl7+4wqBQbNWbJoaC2I7+wXe58yKaPzBpfR7n6DzPKeKiWvZ+6VCCbRh/HfTgd4HoO2e8t7NG8XV9LEa6BXqYtyRO2Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767119034; c=relaxed/simple;
	bh=JfZobP4Yi0kvxg1FAbQ1zLBp+cM29SjW8U5PwLbUroo=;
	h=To:Subject:From:Message-Id:Date; b=htSnjv7xidGqo1j9PaWWjJ2DOIkJTsKl6KpmW2oUbv+nI/14jNboVIS2Mg9gdyNQYZZz3Zvo6TZN7irhhdk0HIroVkm6tUCNjJsvW3Q8YN+C7BIXwPoLcj2nY+V+frCtSKtYWQru2QY9bi+lj5yJdsA44+PhotmzZiA3IWDVugA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErHLHL8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErHLHL8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7197C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767119033;
	bh=JfZobP4Yi0kvxg1FAbQ1zLBp+cM29SjW8U5PwLbUroo=;
	h=To:Subject:From:Date:From;
	b=ErHLHL8hPoXmbMyiXAsgN/aUNu6dky5HuJJfZ8IzAZIoF5NN9qI8xnJWdm2p+hBJY
	 HPAD8x+tLz/UEW5fx4W2ON3B39O2uunM6bu2e6qgUTFYKiRm7ZuHnlJhxUnidcif3G
	 cnw6CU83esgXccXBVCgT65V7g/eXZBvW+VyD7psef1TsZyXGuwmPGiARLbXUvYnzOD
	 pwijjxL4NPtIduQukQgnDR1+FH71ioVwa883lkijjy4/hB4bJ7JaeRBx4EE76Qrq3G
	 gxlgQUU2AUrF07FWZecofaJq1ViQYcQYopwG+wlln9LY9JHuZVYByKNsCrRdUuJcOT
	 iqL0RTCOd6YTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A18AEE4997
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711903362.19486.14235957665754946869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c520f197fb1b5e5f3f6e0092924e0595073854f86f9fd797ef1090a6d47226
Date: Tue, 30 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767119033
