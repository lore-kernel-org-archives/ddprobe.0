Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E81E17E4
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737348354; cv=none; b=dXZupvn1QxIvAMhfIZKUTjRXjs2tYjxLPNX6py7+W654OSr1S3IkRdb0kRFbqDCtwjmvkDd7cu8yAEpEToDlHhMBpEqaK+HkHme5WSLK6szkJlFGdfgo9ZGgjt2PIb3VMZgnC+SdHU3bQnCqreC80XyYD4Q4+8Bc6AA2qEr5PgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737348354; c=relaxed/simple;
	bh=DSJSQjW3CUh0xmcCX+DF4Z+7Ne8aTyzWWvixouaKyFY=;
	h=To:Subject:From:Message-Id:Date; b=jyAvdXm605ZuwLdv7QkRLguhZfKLAPdEeloy6ddYloBDJg0JtoCvAFFDjMwCgIKRlikkyrBkczuQ6BOrILFuEaavdWODYL46AXlmhZctR30NHk8Xot+o0Mbj77PB0Q7okMEG0630LNkdbqFyBSMwW16SGhbeG6WJTZjXMf9t9YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErrTtBKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErrTtBKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEE9C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737348353;
	bh=DSJSQjW3CUh0xmcCX+DF4Z+7Ne8aTyzWWvixouaKyFY=;
	h=To:Subject:From:Date:From;
	b=ErrTtBKu37hrcHsFFWB5wgSJRQtMymVnYphhKoyFidK7WzsCkQNSgI7GtwKPlwpmE
	 BFRwoA/9KgmnSkdErRINg/j5g+1EsBt4xN6OD3r+4Znxsll1wqVvAEQE6uzmdKwwY4
	 VDOFh4yRI9B15nAo0FGJLu4jnrqOdzGk0Xl8x8QC3oYjwb0jUczp7dJpcq5k18N7Tq
	 Bol/fmUkigh5tRC2bDg6f08T1mhWNZI4zodPWOigkrtZGfGU6hXvMYgor8mGJAgyNr
	 /0TAZW/yLcj+8WOSYDZQX1XvRe14Il772OtKFJBGO/sub5sUawsOOkQ/Gh0iSbCPbL
	 VMQfvIrGNOMiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96260C02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173734835358.3226.16346493375362016038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b175acb0f12dfe932e23234dad6f7b93f9c793bfa62151a50c0e1c5ac9b35918
Date: Mon, 20 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737348353
