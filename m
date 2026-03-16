Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132BD1DF723
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773644094; cv=none; b=m27aSg749gPjjRbUr3hYwUtR+3jTFTohpn2vw6Q4o7OPuwKLtl+AoaI+lZb3e5yKemejmTyjI63433ZZpmCPzhvfIs7le/otgfPXTlA7jB0U7gluAfRVvqfjuaIcFcahwf6zo50D/esTn+Sg4UMPhRhVVJmMBVurCck5xeeuE1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773644094; c=relaxed/simple;
	bh=9AA+pFtCwr1JQLsPoIGSV/WboiBxeMyIEprCT9Farh4=;
	h=To:Subject:From:Message-Id:Date; b=PCAGDMtWtWJNxikuQQiRXy4bjUHyGuXcg5XjCzW5A61IV6K+MnqsYq3YaHJef3EixJFpY2hDZ735TQxCjNNAB3LBwR7k0trv65WbMsEWMnAxlX1GVGDgGp0bpO8Z/3T60kyccfo9I3sGMSJ4KaXyvAaKjW1KRIwZQi6f8T6PQJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDMhcq8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDMhcq8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F1FC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773644093;
	bh=9AA+pFtCwr1JQLsPoIGSV/WboiBxeMyIEprCT9Farh4=;
	h=To:Subject:From:Date:From;
	b=KDMhcq8MW4cZo5/7cmhA65zcf24zQ7tDE8T5FPdC7JnChmb+8FL0DdQ/QFXBdY09Z
	 a6i1qqBIPajSYglWIN0gb3gptRkcYeM9MWIh942RS9ydocYVNq3DnhaBx9Ffpo/gEi
	 x7dk/8zn8T8ahfzBKkQSsuISsphojdraBCDA2ciHlJVcHYiO9ANIGjjK/ydo00dCh0
	 EJffAm4pgQ4PXQirI1TtAd2EZzUrIEnMRq6lRFmoRQ07ADmvHQg2H8AmO431FY8f9G
	 HRzRkaz3nD9Va4jzWyswZyZtpwdP2BzC2iMs+i+1MHK69ZD9amdwAeX9wOVt2X/7TO
	 E9NArRjn+hb+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95303EFCBB6
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364409358.21945.12013782455667828294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e96c761497d854af8393e51452845549f09658ac73f69a08670b00db08c067
Date: Mon, 16 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773644093
