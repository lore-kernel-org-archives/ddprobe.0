Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD66150997
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770863693; cv=none; b=RMIggkATDOhX3fFUO1lgvWUdPUpPCJefYKA3vr5I4H+WOsQTDegxDS00uUKX8PL1o73iw32sfdCU7+hD9yHCE3mAsykfWgjTIN9c7qfqQvAzlzbfKLkBSwqb6Vn08HH6OMM9FBNpgNZundpnrUjUx2p3nzO7ThwpX37N0Xi69pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770863693; c=relaxed/simple;
	bh=R+Z24qDIxiGgYuvvTmnoyS8X8UylbnLtQukiyQeCp+Y=;
	h=To:Subject:From:Message-Id:Date; b=XJVtfuVexO2cXzBxaGOateudizTy9WnTMAfxk3rbBU1XQqfKjVhxXAw0eQIDn40w/8wkp6yvfEvWQrKDyQyu9ahZJGKaM2qidrvlX/F4/8RT7tfZwWudJBRlgwl4T51NTQwTUqMc+sQCvlLR+JK7gSqxKZgIYqUqRGKHmw/Gemk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlNod/Wv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlNod/Wv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDA7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770863693;
	bh=R+Z24qDIxiGgYuvvTmnoyS8X8UylbnLtQukiyQeCp+Y=;
	h=To:Subject:From:Date:From;
	b=WlNod/WvV+qNUavPwEc2zGK4zq/peQMPx0LMTjmxJyXf4m9TheL0oSXl/xUC5EdzY
	 XHFVTtUlvmGi9HcXbKqIdqE66CX16GjBLg/BxktXIgDZiWYZEbf9bCAnxIj/DeTYxH
	 AJ3NAw79hsjhG+xwoUNeH9pulX9y6vfYRFEAuxy8+GJ0qOwPkdd/VngBERQ6o8SWKm
	 PMsHHHpL2+V1VsFgWrnAazfTAQCzhkS8BeIyrKF/IY8wrzPGX0+eosUYONLna/ok16
	 x3LlLKwxfNDNgkPp/n2gHHLOV4b2zESxn2RBwbJageOB7XvXng3Er8uAO+iYSFdQwM
	 HgkDK2rSgmvog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A062EDF022
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086369362.21513.16504232631441077969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ee2b10f7ad674e383e64673a9974ce576c9a376e559d5b9e1d0810b1dd81f9
Date: Thu, 12 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770863693
