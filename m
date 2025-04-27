Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34339481A3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745768994; cv=none; b=YyhAV8PKMIcIoXeV8p40yZBjOlmIkHKDN/xppODVWueFFKdmzIQtv5PtU34rU31EFz62WAqisIJZ+b7JnmZjr7nVA9x8fbxHJvTcObOH+rbtChnWaYgwt/hPy/OsNIXz5uXSylt/vEMeYxiTcxRikfFbYz278p5uAhjvMDku2UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745768994; c=relaxed/simple;
	bh=qZGryJQPAFZvGtPcYDOzcGoFm90o1Hdlaraw2mFaCFw=;
	h=To:Subject:From:Message-Id:Date; b=CMG+f6whodrhur/r8crJqUwmPS0ZTsdZTDWPjUtHl1BfBHnzhpAWFWb868neP1DPqYxafTTBzZXOfn1OhYcSWer5FNDV9YSN8PBzekopV/TkuhUTTdHu0Tj7wJzzWTfVRl27YOppQf1R9PbYTBBSXHvtjk5Ey28wdSrpj/YMDYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhBoFgCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhBoFgCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A18C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745768993;
	bh=qZGryJQPAFZvGtPcYDOzcGoFm90o1Hdlaraw2mFaCFw=;
	h=To:Subject:From:Date:From;
	b=QhBoFgCwu8MPqNs93gyr3Kq45ASyfmM8USAv6M0ZO1BdlecUkwKC0/k2uhjPzpjlH
	 URtXAsEOCd/LyeyW8q45Q+bGRFnNrZp9AVfao/Q8fGp6YO8pQkrY4FkQyRqK8YF/2X
	 GXX4gAY4vE4aYjKIN6UD30+9xU+gHRVlOONMwHh5SSRJ5g+fBS/oQ20kwdhwrwTHUu
	 5lcIykDlq7JccjvRJI81iaoYSB1Vnx3QSmGngR7WJzvEvAe/9iRFtfkYTjRJiWIGGC
	 HPupXe/WzXTF60gbLW7lm67OogS+i9xzpnQCxPg17Ung83F8lGU5Q+dQvEF0RAURfm
	 yGN11s1zS8UnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92345C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576899357.4133.18201995348963073257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85f3dac258f4ff781b667b131efe4f52bf9bfa85240528dece2ed465f98380e
Date: Sun, 27 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745768993
