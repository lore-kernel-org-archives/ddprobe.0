Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220031A0AEA
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728555354; cv=none; b=K4PL2LFTQT9NPb5Ff2k1rU7D300+ZjvcwuZv7wqNazAP33FL7zZFlYML/XpmQXTldwB7mnYzhomUUHEDD6c2o5QQ/OpO7opqH7CXP0BOJ2W4IxoHHFqlDR31dyW7iyr9+OnPPOhSBnY0lwGtMXgDmpRS7hEIa2QZ54+XX0c7+48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728555354; c=relaxed/simple;
	bh=l745ag3aHHGV10fb60Y5LQsv1hjTcVJrrVd7k9TA22o=;
	h=To:Subject:From:Message-Id:Date; b=aswiByeQ7SpI15FxugTdHgN8d+BsYiqHNX6F39TBrfLHAytuTEClQoRBAH5mgyuq4XUe04R37hV02tYifsknGskZhswQemillXdMKa4ZttV908A+OOtBInGh7p6YHoCmtOZFjFVnjvoAL0TecTYsf41FvQDZ2qdiRe3u6OOkfN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrdXPui/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrdXPui/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD89C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728555353;
	bh=l745ag3aHHGV10fb60Y5LQsv1hjTcVJrrVd7k9TA22o=;
	h=To:Subject:From:Date:From;
	b=rrdXPui/5T2Yuz3zz3wsRJ5j/oTsMFvh8g61G/Sk5+8Jj9llRt7MVJtSCmJcjnGc8
	 yC5A4IxSLIjs6sO8bMROutzHlQHZ1xi+rJTStJSXAsfsG2z3Z5JayHBaYNRplod/T9
	 PqGuLT74YeXJx2iUluHCBTnJCiEqw3O+qXL/tKLSTJzM8PUop3d3UvWngUES2kBFJA
	 zjvMjVsFDlbHDaCG5Li28T/XO3gUPZSaPckIQucIxHnsCLwFAZVKtTcJoPG7o3nRAx
	 ByP3F+i7iaSVkug9zHCHSVeG3GpmeZTMZIp/larz4+MO/pu/9hBcA5o+DCDWGgWdvi
	 I3ZQ+0W3SUspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7B6CF11C6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172855535361.26766.6185816130708200645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192f27d7d0f26769261ffd89cc0d37aa7c630d5dc8490e07f5012ef1bf4e2b9c
Date: Thu, 10 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728555353
