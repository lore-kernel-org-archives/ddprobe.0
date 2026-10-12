Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4174C3EEAE5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791814834; cv=none; b=ivibu9wApDldDFZV9z9kpmY78E4Onzu0Wi2UE/FhZyibOzOyqSU4lQgNe67aFYq+RzxWkqp/gmTioZm6pEy2+e9RcVakVZCMwThKIEc54pq97YBXJtnODyyPPDnKyeXo4OBeB00qflqOGSXfvUsgn4G3BF/Od/pmCuYGbdZx1bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791814834; c=relaxed/simple;
	bh=eQ5yerHr14obL+cBBM+02TPf3iUI6pyZpjykNcoFuV4=;
	h=To:Subject:From:Message-Id:Date; b=qRWB1YkKkwr1PphcTbRVJn2FPVOLZ7WOTEvhrmB1uvtbiVk1YmG86xO38Im1MU08jdqKOzL2V6/PQlnJiIt2LDdI8mY6ImxQN4dUF905vM6JT4rJKZfdyROV2oowCfRuiU4uJphXtLdzLC4XPnmpw82LzYWxQJycwtk9FTx9H84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6lV73ul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6lV73ul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD12BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791814833;
	bh=eQ5yerHr14obL+cBBM+02TPf3iUI6pyZpjykNcoFuV4=;
	h=To:Subject:From:Date:From;
	b=I6lV73ulP0ZrkroBzKIFjanCIgGv2DgJFJiaFv5mqR5OwI78PaTt5YamJOvKgPfmY
	 oPDPUJvakVzmFDglraj91KwejrTZKTohTyaDLCp4WCPHZCu3cACRyVe9F07BKsyLL4
	 QS21tXznJSu32a5/JHGUphkMijJ3BBJuyFZwveYXCjXYmEmZSCIAPemavoWWjFyKr3
	 pUMdmw8FsA/K00ikIdUeu5gaRBRqGXu+rskxLnu1hm53mEs1YwRpXyJrAmISE2Tdiu
	 SVUVpLUG6uvn1RyIgwItnI5VizTniX0uCIDyR6MX9me7F2QVMKZ9Jwxaa6OAaoDzMk
	 1lQlABxCxAJXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA12BCA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181483368.5484.11026125998257727632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3d2260ac600d87759873244f73b8694fad01d6d93b1c34af2de22b5724d4f5
Date: Mon, 12 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791814833
