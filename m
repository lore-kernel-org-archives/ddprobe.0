Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8263BE156
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774518894; cv=none; b=mRahNJskONQmijpSwxfz+QCaqCpl4y79w1VYvVbXG5VHxXJoVDZEDHeJUGFlbORV0WvnS58RHJJpe8MH4KjFoxWPLjo1bqvoYJKFD5r6xA1Qn3e9PEp6sYh8PSkKxDOMPAxEwEbZVRBNpXep9KShoYr52ct73mbb+7rqRJ9QkA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774518894; c=relaxed/simple;
	bh=bG26dZDnZOt39sGK5u9KZw41FDb11XEaQ75Lhb9Ae3I=;
	h=To:Subject:From:Message-Id:Date; b=XaHEoYavz5EjQUtQlg5Hg18XHVrEqVR4xHhLLTOZAIEIyXoiIUCb6mHzY+dQiCCvpw8LlXwIGg7pr3NR/N0Bn0tTcdypoCgFAv/95nT8J2dQK563F2KhktoRB93PVo9W4aAwOfNdfzpZm7Kr8yXcBdp3qsbaW/HUX0NmsRPWxLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2kyg5EC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2kyg5EC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9937C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774518893;
	bh=bG26dZDnZOt39sGK5u9KZw41FDb11XEaQ75Lhb9Ae3I=;
	h=To:Subject:From:Date:From;
	b=n2kyg5EC48YTxKmkaE9miws646A+iM0QUNqtG/QvF1aBzQyUb7QGyoyzZ+Ku+eOdS
	 Ft+DmgU456RLX/G1+Ph4LJR5ShWLF76ubHH6QDuDLHOh5XLzlOwksRLquW1R8MF+Hi
	 TZuyknqH32oq3NRjuFmxJSRqqR7lae9h9jM0j9dumrKv73iZBPa93IQem04gaJeZ/e
	 rQYtV+4bB+AA0rX01R5+l3+Vf77awUNhp0Fywb3EtBZidOsClI0W+gQy/jLBxuZ13g
	 2IyArSLsX1nF2vSBhfiFUa7/+FndsCNCBbAKggxK9++SuFfih7uDDORrGpyQyF8AZU
	 N9/omYw1K6RAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B9B106F315
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451889360.15533.8724641319009792526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0d062bc816ece5bd3e1ae7fec6b6eddcd9530f2d837a3d26cf5da09d9fa1f4
Date: Thu, 26 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774518893
