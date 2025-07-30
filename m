Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C2517A31D
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753840194; cv=none; b=hZpt/8+oqz/8nJxc6suxJz4ZSxOlFBAZXK4Jkx58EbhEoA+ewvTgkQqBt6eHiU0x6V5N+ZU/O5X6ugQxP64Uzee6puch7t4hSKjVQaX/Vbn8MzN1jqQls6voUsdt7ONyrQBerSrXVd18g3pYg5sVws4oQ9+ci6LyexvlPPVxSnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753840194; c=relaxed/simple;
	bh=Axh71Xw0foBE4egENLeef98N9XRHrj86SDeQyN5wLEY=;
	h=To:Subject:From:Message-Id:Date; b=cJDZ42mSlKRJkoBQF47hFAF3zVamqPxUJjpk1NaWOvdZe2QxLk8jX0cWrXgjcipl4BSKuaJjed+b5lHwDuT+kL8B5UmmGgbsczun+MgqOo58fIViTs8vQ9ANg7gh2Bpt/8yRuHBIU3UQWooFYNAabqAnDhbHtw/N2Cu8z+GSNH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFi8ra3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFi8ra3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4E7C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753840193;
	bh=Axh71Xw0foBE4egENLeef98N9XRHrj86SDeQyN5wLEY=;
	h=To:Subject:From:Date:From;
	b=eFi8ra3znCOpCE5L1UW4PkOHGUtjLryqyztzRf07tphmUM52uYJw4ds6LNKuoTHOb
	 Ab9Q2WHg7Gv9OeC/4ymt8rr/kse4M2CPfQj5FAfcu5OnY6PR+Nhe2p8qr8pj8ejxwi
	 zVFkvkpx4Km1yCm0sltyq3BQaoc9ZnDHWg76jY7MFPUK98zjB334EnGaZhhv1bwp8S
	 +xtzcztlj6asgn8nU1KLVE8f4AX9YiI9eJrT7tC2sHgTtGicOHFTqcg1eoOVzhcpEd
	 DsWpoQ5FgNyMUFkl39edJSNT9TVn0bFd3/FCDVhKEmYi3xtpTOMhQYnjn4teO6Id5R
	 rbIR4C+1sVdqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC51C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384019357.25194.5521003618331812947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2a649adacf322fed042f1e2ef1b495b616d876b172943af0420f7168aa700a
Date: Wed, 30 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753840193
