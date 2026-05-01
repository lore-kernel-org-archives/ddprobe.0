Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7EE3BAD8D
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777646254; cv=none; b=R6ji7rqDzlKtuUa6MyICzL8DZipGrlW0jWtNElV1JXH0ZUv93JXMP2w4j0T4DBc+iLgd5cwP2UeiaRtcL6323+RI0FPbc612bR0ZXAdaM/rlqiSW7TPOR1O8cp9+FCPLc/aaH3G+jGdVVQ4v3f9qZNkrr/9sr9RWMOPImsWOXDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777646254; c=relaxed/simple;
	bh=QUVdY+RFUoACIehosTIAlOHt93HZ88/HC633hboCd6c=;
	h=To:Subject:From:Message-Id:Date; b=ELBKlZBH+gdDLf5lis6emSBZ4/ODuPrv7m1mm22QczmYU5xaw0HkbwCxwMRRRLIq88YubKHG0EjZuPTrBcp3ui5DguKU9tU5bdwygOoqJJO+/1XtPGFU0xkHEQS4qY7EubCAn7qBL1FAoT6W4YHR2LXrIhdkq+3C4vft3zTWxBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIaa5N12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIaa5N12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C4AC2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777646253;
	bh=QUVdY+RFUoACIehosTIAlOHt93HZ88/HC633hboCd6c=;
	h=To:Subject:From:Date:From;
	b=sIaa5N124qCJV8OUayD0ILA8BQG2O9il4TbSsnxcjWdhEmNMHcQWdF+nVB5pH3ooF
	 PkcFmpf2eqvxJ/nJMpZ+ePQyc7cw/HyxZL3WoF/U4mE+n3Iu33le+1BQtKupL2m8nh
	 e3jgVqlMNLbk7sLOTSV1n2m2VuYPRA0gHNz/XRAFLv8sTwWWRforYjrUs+j2GGbxAc
	 cmN44wNQ0oo0xC1jGk2gfEgW+houZ37tNmorMeB5VlVnlfghc+42US0q4iC8Xxfcri
	 31+AYm8/vvpYCcHrRlYug6pM3WtIBnzyLgtxzpEce4tCFRbOxe4LUx7UJBscCUIUxR
	 y1SiwQZqBSBaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE1BCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764625368.5232.5707211619176515371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb667a01863e3994b09c4d1cfa3555bc3739e32f570af5d3f40a889299127980
Date: Fri, 01 May 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777646253
