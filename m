Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5AD2DCF70
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762414194; cv=none; b=dXJUXExitwQ2jQSf2NVouc19COXVjscGFMlyQFAXK7dPlfdt73mniwczEThBIslythAjrZnNpEywaLqtO3K43WaxFCU65d8/IYFoWwzkpFUQ6ZzMTo4UuTnBjQdySbYs86SdG0sjERb6QrePxLVwZnJ67O1FOXFim8voFBzK0Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762414194; c=relaxed/simple;
	bh=M6xzqj6sJpRL0F1SCjcQMO0Kdyzhs1AHb7z3C9vV20o=;
	h=To:Subject:From:Message-Id:Date; b=TciKgArLtsllfZFKJ33i1YInlMcoHdJZRvnsuyRhP8i/pnRM34qFTWdBNi3IEmgYhxa23CsMfuPRbD6KbBpl3z2KD0AaNcIeoGBE+j7lvxFzzwKA3uGw6q/bpXebs2dGtOXqaBzuVWMoYC68Kz6vpIGB9FXfLQtf6dkS4t541+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1qKTxjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1qKTxjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A414BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762414193;
	bh=M6xzqj6sJpRL0F1SCjcQMO0Kdyzhs1AHb7z3C9vV20o=;
	h=To:Subject:From:Date:From;
	b=f1qKTxjQerXQNbeYvswTdJ8pbUsquNxRssCBM4dAiNS5huKNKFGaP5O1HB5g4KDrl
	 /fBz8kfQv3eec1WvEl5hZBRZvtB5cH6j0H7PbTnM4M2VKOj0InDY+1NQDspejkv6ij
	 WcAnG/obGRv+zi3XDYx9xbWX+tP7XVFkj7M/pzercafP743NlGozdFkiOLvdex6FsI
	 H+CkFMMWjpx6pMuGW7hrODk1gG/JyEAmUbOvUliVVK3olLwqaieHIvnE4DfBy/ciTt
	 uy0l+pjLxHn63QIjlJ6bl+MRKfJPqEVLlwK3K93qqMi3d2vEE2a28CC7PmCa1EZ/sa
	 91oPTzbFQduNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92733CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241419359.6422.8962469490796500377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261872b92dbb6391f8a1c8ab82d98c7934822a35f53c421475da4cf94695a3b6
Date: Thu, 06 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762414193
