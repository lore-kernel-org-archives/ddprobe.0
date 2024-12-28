Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8683D69
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735373754; cv=none; b=mk22R+dQeo7aZMelbJIX+Y/8HoK6JUwCgKsyvhpNVi3cLn4QYHKt5bnZnwt/7A192wpfdKkmpQHZGks6sEUABdlIltfkPaTCAjs/p6wGTrTZGlibfnPTXrhG0nslEF4ci4frihwNUpNIP2la2QaE109N9L9+Eyq0qyOknIwFt9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735373754; c=relaxed/simple;
	bh=q4veEdhav4LwSNIpHbwEMLkGrT/IBDZiAN14W1cHwE0=;
	h=To:Subject:From:Message-Id:Date; b=kSE3+QAZnGiLsxwdShfcev/4HFE8enQYx8upBC/VGHjSrF9Ns+vl0I8vm0fwQbob9bciPsndvXf69TrtjxsRuXLRJni7y/6oKa+qHNUOWWU80sdTRkDbDu8O8X2VWV2J0gyiB+5FiSww2ATv0DM6NbIxnTMDq5d4AgcSGWI8deg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWzpZ9t9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWzpZ9t9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B4FC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735373753;
	bh=q4veEdhav4LwSNIpHbwEMLkGrT/IBDZiAN14W1cHwE0=;
	h=To:Subject:From:Date:From;
	b=HWzpZ9t94gG53MUHycX3ap+GL3+Qez0ReUcdvxPn8OTciC9uB+vb9cxKOo8lx4e7r
	 begRJ48Bfq9g+HwFmJOEB8b3PMCdOr3KCagkFWq/afNIByN7wiRHJFswfQ4j4+tQpa
	 QtDmsIMx6vQq0DDCtJ29HzJ3eMMklbE/9+Iw9LhXIszjPgP9uGABeNydFuy+U/avUA
	 9OGUvLzhcnTqKgVHOHKEXj/SjHr6bHMnRoYSXp2fqUctQLGd0FNysHI20mddam73oD
	 eqIJoDsPmNDk4yovQIYx01ZVDSS5gOSNO6IRsrz5xy4/HpFZzJD1XegOa/tx8+AN40
	 LT/ZtuKYW4Uxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D06E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537375357.21521.14032710622402710832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de34ac114776bbc2cb526a8ae97e474a97b20c4f73dc82dadbaf88a612c7b51f
Date: Sat, 28 Dec 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735373753
