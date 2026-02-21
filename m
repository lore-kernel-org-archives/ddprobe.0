Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2786E3370EA
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771655094; cv=none; b=CM+BuXcE5hMD6UGzG1a4yk1CcF1g0OZaptx4+8ii8+s8/N+gZ4j1d5Y/qAxlZYBEexpcz2QlPB4BHKnAWGXEPu8WjyYP7a21H5scZvJqCgEBffsBvm7vOLWO4FhcStPFhWsngGfhr1uwNxERV8/IdF2DmyDMnvpGlYg5q9EhrFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771655094; c=relaxed/simple;
	bh=WzOlILrpQ9Vbty8WM/waKywu1DYsGxEs9dfK6CGmCDY=;
	h=To:Subject:From:Message-Id:Date; b=nyYF95DmXCYaSLzW7NiXq+WZ4l8C/1vvoFmJ/gRawU7TDE8gtxlaxs0luPlaMzlsuJH4aya+reDymiRn7R5jKbVdvWgg44Ba91ibmo6TLMHgx6TKUBx0dEw0wsdwasPJ0WWUgIG0XTn6oFEBfZ6cmY9D+W3yQ72OvsDNMjLuFpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJNQLkQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJNQLkQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93A1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771655093;
	bh=WzOlILrpQ9Vbty8WM/waKywu1DYsGxEs9dfK6CGmCDY=;
	h=To:Subject:From:Date:From;
	b=LJNQLkQh08Xynf821VXOANudIR2WK07y1cWs4jrbIZndExXH4JUl85dhx2j9Qoh3Y
	 qMTSLZcYZTSdZEmltARrcNx5WXw2u9WVODDBph0N0+6mpe6mwFRLHQiVBYZi3k7ZzD
	 GP8m0fFVxutQWFTENb8Rj2BLJOPcT16oFmZRleEmhGTsTqtP7d61QBFemxc3sUr/i4
	 Dz2YwrMP5nww1EeOhZ8H7OTu8ncJoNBO4uhSQwpvR30AkCdi5mMUAmS5Ocsy1xwjEf
	 qq4aDhPgNJNlJHRVmA/rjT1Kb6V+wRhz0lnuJDaxQIrHxGm8pc1X40/0T9O2M6yg32
	 L5LdRN/jeqU5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939AFC5DF6B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165509359.7520.132374704821366240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b91175f92100b5cee3c674f52b6a0688ea7ff950eeff7f5745b9ba969a14f2
Date: Sat, 21 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771655093
