Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51239433D1
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742021934; cv=none; b=QXVOJD7HZWyYHj6jDUG9tT2j7/sGqLfmpo8junYVmyC4hp8nVMrb249CAD2oWg2BPmBhfFODLSDx9B/TvXJA71+02pD+nVJD7bjTHFeCP4MX+bn6eRd7EEI7S4CWPJPErG0MgOnEgFpjQYO4lZyi4F4SUUlMac6wYVNqw5n5m7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742021934; c=relaxed/simple;
	bh=x2xh/EJNGnEjunz1mgzsWq+kyVChlQ4sDRgY3rGsniY=;
	h=To:Subject:From:Message-Id:Date; b=srlApo8SsXrn01ICiqox4F+P+oX3rIwbX97e7/6MrEphaNwRRMi7Psbe24YyocyXIcIhu6h1Hd45riMPjqBQCMn115xHUJB3rH0KxDU1sJYZ3BG1BLmyCNRGuEPB4LyfccBvoDY3fJx+TA/OPA0T9kKA07I6UvkhUtdh+2V2lNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4MwW11+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4MwW11+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97E0C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742021933;
	bh=x2xh/EJNGnEjunz1mgzsWq+kyVChlQ4sDRgY3rGsniY=;
	h=To:Subject:From:Date:From;
	b=N4MwW11+i7/8k5ANZQq3DtK5hkuqkdFLqKavC/S51bwv6EVGIvzKmzyL/yp9DBxZu
	 zGANIpeDwAa7LNVJ4WcZhcExFUh3fp9qHRHZTWXbcduRTWjoZv5AZUbV2p8alfjYBI
	 /ifvp/8DONG3CdMk454AXOOszrnS15kqIds+orVwEDS7nZKCX5w+becowweUO5GHKx
	 8JeCwUcv7k4VWFvtaDRBApeuBjTuvSmrABDwlOZrQGXmhIQoexq5o5HEohyjXzsoRE
	 h4BNBhTgjCDy1wSHw3Pk/bZqrGuZLgW+pE1Z4MhSvSQedL5jXb4rezDK0ET1F3sWca
	 QSTp+Qc2Vezsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E4AC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174202193362.23108.4368681738469346936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd96fc7c9ddf778cd04768b484dae4dfc818ce6fdb82f1b6e6823c804412d84
Date: Sat, 15 Mar 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742021933
