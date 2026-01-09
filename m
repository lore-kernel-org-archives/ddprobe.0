Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067C620E025
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767998634; cv=none; b=OpyoGyd/TQrRbCpHrcppgaUA3YJb8NgZYV4cLTNLmwamSu2oPK0vLy8WdG61Rn8Rvr7LhQbDXh041ITnWpBDcELsWPI3e3ICunxyrat5risY/XwNJM9OSc1H3XfB2pp2x4NLkcgiJQQRutobUTcXz9AGrbxbqd4/jQCZ9ZaiHjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767998634; c=relaxed/simple;
	bh=0Z1R1sbQnxHlfkQ0K1cz1wi+q/1lugLW4xJN0ZMdhV8=;
	h=To:Subject:From:Message-Id:Date; b=odsHOo8TGcpmt6o/9E00JhbrEY8i1CikZFae0EuAGOJumoe3veLDc1uTCC3CEvapnJGF7lpqLicuAD9lBozRiJXOqmfndwQq8mHdQTQKV0B2/xD4b0FWMG247QD1H0wtryRLBU52gVRJ0Z2iHb4QsvwbBBAQxnQk+JZ9CXaapG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVuJnyA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVuJnyA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF7AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767998633;
	bh=0Z1R1sbQnxHlfkQ0K1cz1wi+q/1lugLW4xJN0ZMdhV8=;
	h=To:Subject:From:Date:From;
	b=LVuJnyA326dHhUyTVIVkqABnoWeNblCQOEENb8vI0cXChk5EViQZAgRKW9eXFbi4F
	 OLPEkjw4WRpicEmE7JXWQq/aK3nmDQ3K3IUDgOuMmMuxTJ2XyoKECKhChOBhGa08nb
	 PWS9fkv2OV/HSlXqD8H4FBJRAZ54W9OkYqmPnrGd7y0z/86RuccUHXJwHYB1zcJ7Ih
	 aI/6p1snUIacCxgzid/MDKrchEhg5wIfDQw424AwqYhgltPaTh06W1O547OZLtf4AZ
	 7oziu7hLs/xQEmkocC2CQ09BSDCkzzaHO+LIirtw7W2A4+JyvlDRTRe3lf5cDyacA8
	 lYLob34XjIj8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD60D277C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799863358.16411.14650363518556201328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ca2d254db56469d676423d1e8c5aa06e8ca366929730883be5a65fe12a5fef
Date: Fri, 09 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767998633
