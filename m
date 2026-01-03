Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE281F0994
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767461634; cv=none; b=HEdqgwc2/m2nuFpNrT4PiHqFaR2/kmlu6o3adOILWlDsdm2dGJZOQF4z+p8b0acUaD/f5ge/6oeSCzazGeiKmKOJ2NYxXvq0KPQMJIxLQp4vVOThnSZ7mLfhwHFjrqdqngXkEKRXhQQDwcujn8hrmgwlPVKEYHMbNUIMAov08YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767461634; c=relaxed/simple;
	bh=pucanAIhlpUpsGAJEfIoHr/4/X/IyX9uc4zj6tbqEUc=;
	h=To:Subject:From:Message-Id:Date; b=HjASU3Co6YhFdjIU1NkLXXehNPE7PWslnHQIirw0SBbsGqDDZX3SL6mElHGyQQo0+EsmYI+zuj9k5k0uS739YAYb+hFA8fB7eWDgSPmSWVy1G+TULiYJ2PbOIWEWMEeqVAlZpCmR9cjy5fq0x4kps5VexGOVTLqqS/La21Dbpwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFEMFJxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFEMFJxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E23AC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767461633;
	bh=pucanAIhlpUpsGAJEfIoHr/4/X/IyX9uc4zj6tbqEUc=;
	h=To:Subject:From:Date:From;
	b=rFEMFJxyVN+gsyWSDQo5E26PU0RDObjhLoxOMRJ8E+N2c9RJn3JBCka5ntfoiWp1V
	 f0w1tsaMUsxv5KuLSbNL3RcI2pbtaqG9AGMJYRUiYK/11+6InN7aYpqN2v0vPi6gKe
	 uUrsuxrFNYd9lGlbA+64rqpE7Xk+tvd9v9Q+CICxt7JG7I7Aw2X5Odh6SQhMUS87rj
	 nvdCb1qnpYI87T3lpyKdyR9ZUrO9B31WJxNmFF9nbaEo5EPQiUf/6c9KMWOUQvwCXv
	 DjWwVUcYsmC1aNlyXDGvgIO8NIo9QcouLLgJJnX1vlOjQ1l1XwouGd5vgxSb0aQkca
	 XFVzrznOsAb8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBFFC617C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746163357.8154.4774392807819985334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a71993e44bfbe8ced619d61ebf2ce9c2886103f6f7435a8c87d372efc4561ac
Date: Sat, 03 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767461633
