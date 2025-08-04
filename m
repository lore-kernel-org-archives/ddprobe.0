Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C403310942
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754346593; cv=none; b=Ie8jPSyBmi9KDIpfw0rEWP948mZe+IZsB85Pmeohufdp1r8IRJG4d6yiwfKNpX69WoDpUzuQHJHJWPgRnmD70Rz/VM5ofddEfJU8nee5CcDREnasTm4C8DEQeAwhH9xWKYQp0zevUZ6n0mrx6ylSZ1R3+oxbI7QO4EzMbxiFuVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754346593; c=relaxed/simple;
	bh=WWMJJXt8QXqsSz+kMOaHvI34ybx7A5bwvmwSnn9kiRk=;
	h=To:Subject:From:Message-Id:Date; b=QMBhuQpvBBGS0Is2bUo8WYu2NMnpA4LTh2/zRrSkTHO8gvjw5EsGe9Hn1zo0YbgiuBfT9eZUpF9PcnZiIr+Yvs2wWkn6WoKMZ4gtO/Ylcsbo0h4Z8fyeDAnrVU5b9h6WjWt3louTK9J0klUYJmqsk7KnHlwy61FRw+qnZTAHjRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTGJkAdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTGJkAdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E16C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754346593;
	bh=WWMJJXt8QXqsSz+kMOaHvI34ybx7A5bwvmwSnn9kiRk=;
	h=To:Subject:From:Date:From;
	b=FTGJkAdHK77atbqB58UXm0Rm2GbfsihedDq1cALfQVLaEqGTvYTMPPs/9bABSsYR+
	 +0YC7HOZHpJY7IBrRbxGW2kfGEZ/IhOCWO6r9AEnQa3U+7/Jfu+SWyS1NjgYe18R7k
	 /8GA3E5U+gIuEwxLitXPMCXngFxLrkYAEa6XQX3ny80UekE99IQRvgptdQm6a4q1bB
	 ljF3Qw1OeLt1VQWgzPnt7hm90jcHox2asJEjeqBXxA2M2MAuhgrKk0Q9hgYEAFZmYp
	 SS0QQMOSEsOVQIdjTHj8vl491ev8dj+g2mVp8+GPBVDJ7V9TIs6Y/zgoUs5ONspdhg
	 pcdM1qexkRZgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92245C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434659359.24840.3945272432823104461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e5af75147bdcf926a433813dc4e1a9634023eb92888ec3fb3fbd8137d9d20d
Date: Mon, 04 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754346593
