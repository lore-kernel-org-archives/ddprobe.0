Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1432D346A1C
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776253054; cv=none; b=VQrg4izijo5Qkyu49Kj6Xeup+oZPLSt/fP+pFrI9soJE+aglSQ3r/R38KzXwcwEjleUddTPlWLJsMTmP94P1NqcxxgYwhSob2Z6yRt/bvJNnA/PjulesvFHdGgUEKPqulgy2+fbQnanTsCl+oo7DfywTnc3TTrU+z8cjEnwjxCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776253054; c=relaxed/simple;
	bh=aQJ3V/CQc9eZ+KwRsyTWCVMhWCqTwufyHZ7LFyUr2vk=;
	h=To:Subject:From:Message-Id:Date; b=ZL8cXNRDLDRKXi67iE3kMmcsq23iPAHaHcjZn9fJAHaMcGyamsBXJvMdaa+CJImubUGmWhm2E/UfDUP3L4eAeQ0F5lb2vgaRZzBpcSW6IJ6fovRzXA4mtYY76wnFjAHzc8qj83YQxDsDqY3+mP1DNB8/+kCrm0/pcvJSDwTIE+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAYpvyj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAYpvyj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84FDC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776253053;
	bh=aQJ3V/CQc9eZ+KwRsyTWCVMhWCqTwufyHZ7LFyUr2vk=;
	h=To:Subject:From:Date:From;
	b=oAYpvyj+5Y9wMuOx5wAFSBEqi+7Xh4u2bGqCJXWl6vaz9L8NEbTu6Wvu3wvufwp6e
	 kirBP7ghvGvrVNkOzfIa4B77Pzc78XQ1+sjqra+eVJY3K5gUHV1mQrmanSszmjkdrs
	 coTpWWlA7q8Ra8O/7e2WZbmX+zcQyIBgQRyjAINnlO+5ZJhqmTTGXb076r9AC0+Rcu
	 C8OOitlPhi3vzBtjUZzlA3KGBlOYxZNNvreeDshiwBIzykk5ua061WEtv4dy+Qbcgp
	 XmkLXHTPH6NBmdZNe/KoveSNDP9Cmd9iXzZ+Us2LSlsCQQlpaN19yACZUh8NS7yoyv
	 gMsCiuL35A6/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA16CF41992
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625305368.17605.17250311805339083436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae00d224e2e3457a9250500b50fb893461e9d9ca30af131f799915fa211ec560
Date: Wed, 15 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776253053
