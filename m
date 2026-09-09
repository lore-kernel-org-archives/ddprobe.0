Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C98B4B2CA6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788949234; cv=none; b=KGjg4mpQYrSlvOXe4vGgzhD+yIVEq/9vaW4i0RhFxPKI+I7SRsxLZsgoK+sP/6oPofCtj2dEJEHfMTejL3k9XDG1sKclPINvA3D20nBYcT059y/U9iWt+UP3nMv48tkN8lGJsFZ/F5Z1nM5CWLTyTsRMEV/noL7QqVrWxxe+zL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788949234; c=relaxed/simple;
	bh=muRwBIxvknt41ae1+HWhLDAVKDEvDQXwsCx+Ctc0kKg=;
	h=To:Subject:From:Message-Id:Date; b=iII2IB7l8ZyA4upQaEHIGnFYAcv9VZYVtV++ezUDteOFnD6TVLsJdoIySJpwCpFjm/L0b4OJNlrCWuJvlZw5VH+b6ej20ykieXls5ZJqcHv/ZYiiKjB8OpOx0UlTsj5id3i6sNHxphzYb2AcQv0MYVRKZhlT3hjg2Oic2esXL1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HX2KkQGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HX2KkQGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3869C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788949233;
	bh=muRwBIxvknt41ae1+HWhLDAVKDEvDQXwsCx+Ctc0kKg=;
	h=To:Subject:From:Date:From;
	b=HX2KkQGoKQ0H2t3xIWoafhlDveJubpAe7L9IdXkCMWvT1AcfGQGtjgUW4vMNAEJbX
	 OCbVBpmLUON1fxBMnofQ0Kt1cNAt9B+eQ/lnWoF8XxrFy4A0UL9rJNRcVOw7a2Jbj1
	 aQxAG1C1wEc2APJ3oQK575a4u76IE+b9d6VQY5F37TxfJnIpoPG69To8ffUvcb9y/k
	 8fP/5hEg5g4Rp7rhj+LI37gvSsaiR0o0GGnU0oLWOHrZVjmX2cKb+Xq+dhuc2r+tnV
	 YaBcXIQVwOXWvC5EVWaw8HacwEZs0N5IUY2plpp8B4yZhkxpJ6FF5PtPsibFlFkv1h
	 H8bEbDUxIGfdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED14C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894923369.24307.5350653518065101427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c6e1d9656e8fe92bb2404a447e4ff428604d86d401c8a59776d04a859240e9
Date: Wed, 09 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788949233
