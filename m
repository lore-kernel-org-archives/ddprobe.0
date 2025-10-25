Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3614E1FF1B5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761389394; cv=none; b=qR4pdAGDMChVgsYnjhfSRgYLhHqmaOQ4HDdWmVXMTy41aq8reILarE1G9JzNZltQGq8OsQV9NAZ2DIWYUmWrYXfZ4OJAbosUnz12OKW/+w4Xuez+8DDpnUxub59YLzG5lXLDMAs6QfTvsDF0VtIyUwim+z6ufLS/5GWsr1XzXgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761389394; c=relaxed/simple;
	bh=TRfwn3SJSCFmoN0sRyZI0KVOvvQdddLWrmXSxWvLcUE=;
	h=To:Subject:From:Message-Id:Date; b=Ii0+lW+v5oElbo5GDUtD2agihVpZD2/KNZMkCgVASlJVlxPOMV86JHPKBeyOsAEJXC/l6600WfyAs4nMoIs5mJcL6Xn5dDxfZ/56+1Qdlq7nTtUH/RJwcYcByo7CiYTE4UqB9wIwv5H8xpKYkKzNwVb3n1L4uTuadKSWfA1ycW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I64ziluW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I64ziluW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A387EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761389393;
	bh=TRfwn3SJSCFmoN0sRyZI0KVOvvQdddLWrmXSxWvLcUE=;
	h=To:Subject:From:Date:From;
	b=I64ziluW6gXtUXl5RM6TfAMVPJH0wL2YmJnaTGCmVCsvHtXgWlmKscIkMEcsMDMbw
	 LQoJKu5U5dTHe8koS2V/h9BcC4Z36+IBqhK8Z3y5rsRCYmZF3HJSzKSXHcQekAulpP
	 lSO2i7T03fOPN5YUR8yvKO0CWWWQa+tV8Zmj8/4A0onypKp3gmiWYPEBXTMFpTXkMF
	 sF7TVeIz+lvCy22Z00KekL/KDHbc1TvD1TbosrS/n0QITrrSJTXtNdNuo4VFjHXOoz
	 tExEB17wRIzRm/+8RIAGw/px/lAhI1kO9RMwooncg4WCupFbxUwDce085LloUrOlrw
	 7I4Pil8l55ykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90212CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138939358.3672.6662194076737229503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3819eb0a037b3bfdc2b023c9e6a5fa7e56261c84cc0510a385c0c16d98da971
Date: Sat, 25 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761389393
