Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E822B9AA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745027994; cv=none; b=E5kWoIY7oX0jmz5jf1afumY6FCtsQClHMMAbcP5Y22BCSElwecT9EW8zi4V7hjUxKbJU/B05wN/s2i8cfB1bKITUyknKqqUdrVobaeJIAqAQzLkKBEf66LKmOpN9+WcLh45XhJlpRE7+OlQyh8jYF6JflUCHUtbOfDhJQoFm1QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745027994; c=relaxed/simple;
	bh=oRLQQXxgzkNg9X4eKSvnNYFzk+mGkPkHV2qh0K1ZTGU=;
	h=To:Subject:From:Message-Id:Date; b=PwBM8USJQbAGWzzvEj5OhzHyPy0TYtrq8xYftkEuDMONTK5voGKX99C/DkkPwZXRFeDRtaQFjSDYG9+uj0QuJeun8YgfBtY4z71c9419OrE38ieqeRjZb3ATMLVVtSTRy+/ZZu3OmTMY7aRgCyP97hEJURhGljQAQVp5/SYCEyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLcJPnNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLcJPnNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5486C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745027993;
	bh=oRLQQXxgzkNg9X4eKSvnNYFzk+mGkPkHV2qh0K1ZTGU=;
	h=To:Subject:From:Date:From;
	b=QLcJPnNMlzcd62QN9a+gUviKO1+QHjVNu3nLZ8yewkZB0dqroFh7ho39LzBdI3Slf
	 CvD1t9+r0VNSFM/m2MxelT0ppaY3cpfxMEUW0UomnE1dEx+HMiRQX7i0IKpPYr/PEs
	 cSLDGyKvEPsX5Pa1glVIsCkGmgg3ceCPIWVVrXpjYKag55dlUlxLI999pEMoGdXe6z
	 l0NXNoKIM0sfCpf5xA8/buYLrMDTUmbta6Bqnyia45UeSXanZGHXawtSwV9KfpiSgs
	 lJydO8c69GIfQjrRl+1EUmJx0yxLa1w77Y2KbJTgJS0aIqZgska7z291qha+GSu6zd
	 ieYVwn6SIXo6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A5C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502799357.30786.3373104099444816306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f598bdf1af913401c87369fbb44280ca17c116bd73602fce6828152f0c4f6f8
Date: Sat, 19 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745027993
