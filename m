Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA5F1388
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728351354; cv=none; b=m5AJ5XKx9jdL24dxA0V9yKmdOLP17tiwAbWNF/J9rtVJmuZ/vMNBhe+eHpkrTVwlbmy60xXcUPlJR0ggIRlqZ8KKRL0LQIROILgLq0H4q6yV8U5tm8AqyjAit7aqOHvq1ZDq021snSNKiBpa2zXc4+hczToqturlcLihjLKP68E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728351354; c=relaxed/simple;
	bh=eA2aNUDh0Y/MXsjzdb02sYXgtIGoLgE6odBhUZ+GYmk=;
	h=To:Subject:From:Message-Id:Date; b=fQcvj50BzUtQ37ACBfmVkcI/SBWv2XSfRpo8qjTNaWzDYyraUNc28QJgaaYV7QzST2uatnfEqz+5o8UOexuX/CdYWk6RUWes01FjLsZc09RUCvMvViL0PMzh3w8NRHFgjgYGND/ibKWQ9tTtp8Bj46DQ8x5LfesbOWPcRWQ35t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MA4p1y51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MA4p1y51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A88C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728351353;
	bh=eA2aNUDh0Y/MXsjzdb02sYXgtIGoLgE6odBhUZ+GYmk=;
	h=To:Subject:From:Date:From;
	b=MA4p1y51ZpRqnk1uExwDBELP/0Y6Oow/GBup4Ihenq3rTLayAWxtW7rxWc0wes7KJ
	 x3cCpeEoaJsxHKZZgwS3ad1myEn73SJR957JiKTIANedFfWAEMxSqmk9X12QvGbHtx
	 zjhilo4N1d0hNZdpA1+2G+c/L2OaCSUClhupPE5SbpddrcPXwhZyluU2Bqv0g3dfC6
	 XOnvf1+Pb4VR6NRNsT3ZpYFPtYJdnk03QcYsbCo6vGUQ68PKBypHADnfaJNkQM7cM+
	 A9fG+diQZJZP4yMomhYhm8afPugANNdP71JVDD03SFWdoxAx7gQdEFErN//ATTtjl3
	 FRC22SvPkwh/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD9CED24D
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172835135359.24243.6717256852695468783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fef961f56305dc1ac4ad1f2af5676d33b3b640de56f58752be54d77ad1fbda7
Date: Tue, 08 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728351353
