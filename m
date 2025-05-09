Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACD323A6
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746802194; cv=none; b=MN0omueDzsgTPk0l3pj438GyMhza8mVn+Olnbjv5wkESiGbPBNlNzNDEP0EWg6E4S3GHTfPtFVCTteZEoUoBnR5SRoy1jQJRfGdx/lbgy/x/ES9K2mUh9QCN2rQetm00CCBlhNkY7G29K5ku7rhl2Nuw/ARCTDgC2/MqbnmGikQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746802194; c=relaxed/simple;
	bh=stuW7alBDjXG/5wFxhzr2eTqxsovilefneIEF1SfeEo=;
	h=To:Subject:From:Message-Id:Date; b=GhJIkK+M6nzGm1tFNaiMObjJLTsvJKExwfuXPTcPxSmzhntNOWNspmq1NIqtm5LloMPAt4sZ2Re7qSengu485ADYPqKIPo7P2uyr2hPqZCJIrECnFLrhN/uvOn+SrNINtcCEfzuLvtoqyFqtL/FWV3/1HRau05q1x8UYcXoHzhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYBNvXx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYBNvXx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F368C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746802193;
	bh=stuW7alBDjXG/5wFxhzr2eTqxsovilefneIEF1SfeEo=;
	h=To:Subject:From:Date:From;
	b=hYBNvXx4IO739L8IvGpSPzOPVis8tWiDOvNqqLSmKRivexxyQV8Ldpm+3XQIgivEC
	 dhL5jVjkBTAabGX/PSjjldXamA6jyyWkPJUWuFgyFprzkxo8wd89zsDiNCIOZej7zI
	 YNsUODMVcZBlpdX1YyplWorqglGfOPh5CvvqGliNbLiWzDJkLcCR2M63P7oHu29YqN
	 01onhTJNhlDuHMKBPGHDJ4rfWYEgGdKN8Y6E6SYZdkSFXddKkLgTU2SHtTWQLX58IH
	 YbP7ehAHYL6ySZazat6JctYx+MKbA60qam/fAPvqRRvS5hb1oR6Vu/U9SXKy1pVb1H
	 she5HMq+ToFNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902AEC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680219357.3536.11843400557808477648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35227106744ee5405ef22b4f3d9c4a025b04a6973fb02f6029b3ad97d5049b1
Date: Fri, 09 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746802193
