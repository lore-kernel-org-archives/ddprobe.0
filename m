Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328E83BFE4F
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767879234; cv=none; b=kiz0PCyh3PmeMz2lK85RKLha3ujcuu5VtUymS2LWci4x0na5yHJojrDDnFD08s60QGxP4/BlnaTSFd/KGndJhwLhy5KIKZHXQ4014WIjg8+bKYnYf9c19PtDtpIRqKEUmCg5J9nGoxSlffpIBROX8jmNQTjkpAs+PjA2I+YeA58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767879234; c=relaxed/simple;
	bh=9FEnXgszbZsFema6Xwge8E7od8HwlF7aIIlaOBfpdHs=;
	h=To:Subject:From:Message-Id:Date; b=h58JWzBnV5c095pboggN2BOYMhqe4VGqKQmxAYvall22rpP1CFbCX28WVUNRdUc1RdvmaHxQI9EIFspEcj5z0njhCLcIbknbXHLHwiTPehwr+uhKIj1tq4wA9teRWLggRX81wpmHDZENqGVd/sZZBFqCr7sGpK5yLCGtVj9onqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vrgb7Pvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vrgb7Pvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBF4C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767879233;
	bh=9FEnXgszbZsFema6Xwge8E7od8HwlF7aIIlaOBfpdHs=;
	h=To:Subject:From:Date:From;
	b=Vrgb7PvccYbXSBFiQhp/fp4Nwy6u+tQ4+v1gSBqffkq6w+5Za892go0s5p2O3q6vL
	 29pqfUqvS1hUL7XnNKgI8h/0/qpm/uUd4sVnDwt4q4MpSTZ+V71v1aqio65PmKJReL
	 F8mOzpNhalWylIyG0YNuD8kUXPSXxEnnNB75pWiCi3eH40lE9xblKCib1wGLdLASMk
	 dZTt2I8kt52Pf5hMOctgPFeCeOqxYyZK0OQvYi2q9368sico1Y57SG9ltlO4MWyCD/
	 KNPHGBxmM8ZlhVfXkaObk2dHeKod2vXe1exThdbSYSXND/a/g014U0wiyEcVutul+8
	 N1E8vgbF1/TMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC03D185F8
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787923357.30591.6226786354434478061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd405568294bc0ac4b9b05feaa57255df4d88b5b74be82fdb90a709612045938
Date: Thu, 08 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767879233
