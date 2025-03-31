Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DDF189528
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743445794; cv=none; b=AYUYFhYU2yB1V9gWYxBWgMUD8SJJb/iA45ODEU1iwqZHRM5WTylBOKNhPE4w/bzp6KhVWqcmdEtYU0vYo16nOU1l6Q+M2TMyLKe8t+/HAjls1Jvhcj65nQovcHKWp51PERPufOXV/nl/DG1EWdkppOELnuEhAbpcx6rqX7lmQ+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743445794; c=relaxed/simple;
	bh=ikvOR9UAHAXum9/G64gSLQG+NxrA6yCwiYmzwcq5/jE=;
	h=To:Subject:From:Message-Id:Date; b=uM9+3uMH5wadel9k5MARpd0wPpNpydDpnoqqCskVH75yFgXfVp/LxqQH3ImgNy0YLtUo4DbX9Tk5qqCTKVFr93h/QGeK1YK2s0spReCQ5sIRcngbS/OeHQVI08Vqn/mnUZhf4LdUa6IQVykgG6H0YAXH0W0kJyHBZLgPbqw/mAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlqqySUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlqqySUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC67FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743445793;
	bh=ikvOR9UAHAXum9/G64gSLQG+NxrA6yCwiYmzwcq5/jE=;
	h=To:Subject:From:Date:From;
	b=XlqqySUdmBfbZuJpiC7DXlBquOI/Ges58+ZfP4NOOrPj6AFnh7VVy5QCTHRjMOTzZ
	 CI5yZ+nkha6bZr506NNjrTFCv9vHILMNkY2ZxkkL5DakelglRkhhWbk49HIZWleJ/w
	 XTnzckwDAhYL1rkawmMDXXhuiGXAHTs35mDr8JV/ALm7f5YI6cz9IAGGMltrn/ehK0
	 ubYV34mP91eROz7zXfrmyGmyTLKxBUBmlqvttNIPc9RqzbQwdRuI/rdwy1ZgL44oTR
	 I9zfrPjzFj+ABnP9gyOLy2UljZUrUY64nJUA5BCE9umg3qQ1ynMi/C7OY6F8Daefsn
	 EofTpWP8zDmXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB71C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344579367.23224.7468708417403484429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76479192f2375e757698a7a091b1004db98235c634e58f004ecefc5b872816e8
Date: Mon, 31 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743445793
