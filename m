Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69956145355
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781112994; cv=none; b=FacMwGV6CKmFIt4i7kRVq1KGxM78KhwzxDa1d81arv7q03zoqI8NyZmptkFJgmHI9x6YPOnhkFR636Fl7NZCBqoraL+XgUMidxc3ZWPAQKbPbXaO8W6gB0Y//1nFH8/jXH9ocoESlKHisaJpZisgKZDMERu2TQY/m8NVVOp5C5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781112994; c=relaxed/simple;
	bh=uUJW72zWv6/x2BLFsCqVsVxpne0rb2gk2htyLAxBZy8=;
	h=To:Subject:From:Message-Id:Date; b=ceCVqsXjRVYgRjLvQfqMU+jUR/koWoq3/xLW/fFkholIHCX/elYF6uvmQm56uCFN8L56aMpBI2avrs4tg84mmwxjwpXSuaCYMt0guYAVf2Frka353wYb+Go+liEfLXlCKe6sbAq87BOdVpqORDFSKBzTm04EV85LMqpdJOaltlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRcsrrry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRcsrrry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36C9C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781112993;
	bh=uUJW72zWv6/x2BLFsCqVsVxpne0rb2gk2htyLAxBZy8=;
	h=To:Subject:From:Date:From;
	b=XRcsrrryYI9ikyGqGR73oADq8gZlqg6coJ7dXl9Gw+hZq7e8azv3kKlknQfjaTkrB
	 o381yG29ZZIh0im3M7T8we9tDMY6lWvb6gWJdgBIXB18Ug2MsCFjhfkgHWj0EPp95X
	 taWtSkQzm0Dzj9VuqVmXy+SriHkDihuBP9uIbhYq/vQl4SqJkujVQoPWivw/IAsrnj
	 HFjuM8vAV1SscGldbjdKjBcRRRSdkZZo5oX47uhoPDgSgmwx6+w9suw2bJkwxNuCdG
	 M5bpcPwqfA20K/MyA79G14PAkSpwxk3ElfyGd5hcVpei4HQoqdZdHvLzbQ5KApJXke
	 s91ueK2tsNAxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7ACACD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111299374.16404.17798122890687410930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431cfa1568bf1f5d9ebe9c317174a52eef066e1bbebff7cfd5446d78bf576409
Date: Wed, 10 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781112993
