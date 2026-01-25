Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0124521CFE0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769359434; cv=none; b=LbbYsQY21/kU8OkyjqyDD7R0DE+e6DUrDwieg+TZNho691rI+nEowPecWdA6XW/F6cqWrFchruNfZtxBVWEIO1wyi8SA+Ufxoxd4MtG4ybMdA0HXSbQ/WfZrpecqvgP5ONNkC2/zQwElXtVfVE0F+sqmhEM5o3VyryN2OkEqlH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769359434; c=relaxed/simple;
	bh=nF/SLZqaWnUgKWRH68DjSs6aZbvBrPfrbRoDYvIZdzQ=;
	h=To:Subject:From:Message-Id:Date; b=faL8qo53EaRgfUkkp01krf+ktcRNocguwh63+NOI39H+RH9qvGMMz/JSa2xAkyyLTHq0N0f+XBdhYM0SDkkiaMuxxliqoQjBP4EsVSn/snsTcluqpfz3gnpJwoCriEz2aLKodff3peNudbsUOZxCCEkL8K7L3N9UJqyed9laGGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6cHGAPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6cHGAPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7F0C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769359433;
	bh=nF/SLZqaWnUgKWRH68DjSs6aZbvBrPfrbRoDYvIZdzQ=;
	h=To:Subject:From:Date:From;
	b=s6cHGAPM2rufgqHNZJVEAE3fBx6UJHFRARPq6WqWdbKGu46iqOmEXpmJHHtWY0EMg
	 wPmA8mmaxbVgtXuEgB5SaO0iB564LLwfmoEiU8DG0LQZl4YOBP/HRy4fU9MtnBa7H+
	 RvNxp/zqiWdwrHYSI845jmRm3SbtmapS/lB9uhtSUSX9MwBVuuSBMpyRwxD2I7m9fl
	 mhdNMqqlU4uCv4A0KBeqj7rxMCNZfgNx7g/B1SZRK7ffQz+09z0eRDG8B4U2aVG5Et
	 +0hHWvMW8pI/4jpR6elDeYz64izWPI3XrACZExrwCVXN0imWSI+FBWrvXINCjrGHfp
	 cVFTcGwAv4M6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E7BE63CAD
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935943357.9361.13740080678092895286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1f2bfe5425710292431f6d6ef6fa66233e05e4d25ed13fef472fd24be51f02
Date: Sun, 25 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769359433
