Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA7F1A9F90
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766733834; cv=none; b=h7vYquHwk+TzZEWSyy8sjSXYkoEsIt4gqrGhkoUIbnEuhzCJ+bwPd4wTWHOabbhi5ExxIcEw4jZquaUnt6r3cgfr0eV1Yk1DIEKBzUwnLH2tTanNGJJH7TIhngS8GVSZ+JMdLNTCx3Ie5n7eH2v2+CfPM5OjRyVUvT+MQLrjWTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766733834; c=relaxed/simple;
	bh=ejH9xJWCfoaVNeh9mg0w0gYgbeCJp/j0OplESqGeAgw=;
	h=To:Subject:From:Message-Id:Date; b=UJKENFplxN2cC514UpMW+PIP498soLrf7mnrBh5WGbS8kGrPmz3kW3PgbGlGgaqwxNQSRnF+h8pKLwe41DD+GDvQkJHfVpbC1XLY0+9sI+jRt+c3z7FIHB77muDNRfwUrdbGb08K0XmaBWhyqH6/1NOXFnVZtCtnGX+iUZpcczA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iwe7dvie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iwe7dvie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9404C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766733833;
	bh=ejH9xJWCfoaVNeh9mg0w0gYgbeCJp/j0OplESqGeAgw=;
	h=To:Subject:From:Date:From;
	b=Iwe7dvieQ1/BqoHxBdQsgyCcQ5frOUyGDIvtiadoDhTaygyLDHrfUj9Y+q+3RsB3J
	 +lr074oYT+0qvNv1l2rjMUxXURPstThe5m9/F9dnr46yiUdodgxUx7fv7+TM5f4Oor
	 ocKRpAacwQjLU0XRNSXa0/Q0fdGPEeyVebJYvI2K38DeDlKSM0xIOhwkD8/ZHfCfgk
	 8xU8qw7RT2Z6zht2QBsUteJzcHkOlyjm4glRF2KmXztcIwg268MydMtq4Zis8108Fn
	 Y8K2oAM9Tftjp/aNdRTrLfnPB/yvwEuIo4lAdQpqvaxfC0CH3rwvysTxGeCW465tQD
	 VZEKIBHzQPxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A06E8FDA1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673383359.18585.13318206403616461497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6687d186f19843782187364944d8c82c0c6202fe5c49490d044de6bffc0fb7
Date: Fri, 26 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766733833
