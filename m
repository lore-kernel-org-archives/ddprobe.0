Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F021A35FF78
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770074634; cv=none; b=n8T03H6814RB7VvxfPwYw2tVqn4ZfAMKM+4dN4OYRNiiBUuJDsy3o8TW4cpkbP55+A6z9Xx5viyrokIZUSFdfbH/JlBhfWaWRydkaPYDBRuBaTVkM7LBr7MLwKjqzWyooM2C0ngbnl2NDpKBda43CZtfRuKueSWdbY8l2mTczuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770074634; c=relaxed/simple;
	bh=4Z+jeTXSuwDMRuDzC8QsvVkD9PJiY6CLi/nf7oOq/wM=;
	h=To:Subject:From:Message-Id:Date; b=nfv+D+dufXnb0U5R2ZbcGdcy4uOJLtnyI3+NKwOqOLJRYCdRnnyXXLzEyVWc/d8sQT/x/YohlvrWMKmniUYzGoqfmlcQvDTV9iRQt/Lg5M3O/TqhL8/UMQ19X7uArL8WyL32+//8SXNFvYAqOfSNADNmAe25UFFGOvH3h8vMUyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTHNQfGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTHNQfGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6349C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770074633;
	bh=4Z+jeTXSuwDMRuDzC8QsvVkD9PJiY6CLi/nf7oOq/wM=;
	h=To:Subject:From:Date:From;
	b=ZTHNQfGj3qAuJwpCq7J5uDXa6xy//LA+csiMvs1C028SmtXQanHaHx51Sf4m3GdCf
	 6q7gqsmJu71zIxEBDrmcXklngBz8ACkR5GGnuKe42LFoh4YfDAptYfa2mI0+D/UGks
	 6fCfmwQTCA0zEV8aADJMoWEMuT4udEtSd3iB5iracZ8/YiPl274bFRtIEjMOVMP2AV
	 cZ8XY0rD/r2iaF+6bx4cQftZ5AEO19l2C2ctZHKrcKH5KJC6zH3Gpirl057MSQ2a5d
	 HGQl+VemZdlEISAV46Ul9w62gIK/AEfBTDMgE3g23x2JdFT2u9+TZqzGcy2UdVkB0r
	 1dsVp/xuzOG3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B70E7FDF3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007463359.32081.16367582336031186105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163639b5996882f448199ae35878ef0e498d6835c88e0ca629d70bbcb35dbc1e
Date: Mon, 02 Feb 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770074633
