Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023E73FEF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769189034; cv=none; b=TPF0C/gYhfMXIu5GDhCe+FZ0vCnCg1yE3i7BAC+o05BlUrx/jcZGUUf0kdp+7nfNj2JdslI3zE6OtL8M/1vc/6dbPhtkDwP6dflESfBVkaJETbe8jk8JvGYJn3FP4I2VoixzEEWdEfZGZLrWXvHcfhLP+um91OZDG37VrOo+6MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769189034; c=relaxed/simple;
	bh=FHouoUD0SNHEXPSRTl2GNYRmz7hqb155EQjUshjX8dw=;
	h=To:Subject:From:Message-Id:Date; b=b0kO5d2X16HJqBCvASz4jhXyIW+WLoihsck5jWsZgSWHSh8UMt0TqcGVbQgTlc1JOeMRKRktY+dEEJYqR1byfFNBhIEiA1Y4dt3lx97pbUgrHo5UfYBuwc6HGBru8/yb0ASQfm4Dx2P/UyJDSUtkv1o5pScOYKlbmpj0YfNev3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYuAPqXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYuAPqXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A321AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769189033;
	bh=FHouoUD0SNHEXPSRTl2GNYRmz7hqb155EQjUshjX8dw=;
	h=To:Subject:From:Date:From;
	b=pYuAPqXif2dfyfE8cshofzX7b4Z5rFsJw1yY21YMXRivn9nybLxmRgcvBE2VLbyhC
	 mVlbGPDuldJ4hxKzeNQDqy++RErP4TGQ3hpR6oysSjuIDa06kNofe4pa8xAaIjTBhO
	 d4Ag4hV9NoY2n6731yOWgvjsZk3HaH/Z4dh+XAAjKCVphdBbCWQwgxH80BJmoMPUCR
	 0B1osU1/xK93qMZ1NxHKeO9RaHumo/RQlQlsVGTnhg/jBtR1mbtbtY7HICgDM6UYFP
	 fv70VVV6oStuv7zd2Y/7GqffrALqRXeEFptM1tYBVCmw8lQX4H/VuMO4zPVaJsSyDB
	 q+p7IJT3LE3og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90955D77881
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918903358.25732.11319130280769094322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd4d247385a5912db34530d5048880c7dca43ed9e76ef0402b1f26f112c5247
Date: Fri, 23 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769189033
