Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAB538BF67
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776108454; cv=none; b=AQxlfqy7g3dScjv2vsJNHi7T4P3iHV9/H1broNm0w+VYDA9oH2zaN/+a9UFmYpulZLP+NznBbIoPXn4N3YBan8ksV3JlFysGhJBBDRuyZevmBlbvhbhooa8Rjo8zwwElsdDs+KQ5S36prE9LUMnSG5cdi+IJin7cqQ/ZuoonT2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776108454; c=relaxed/simple;
	bh=uDfhR9jPsRTaAEAk+gXcJvhKI+AvyS5pdmqdZxODNv0=;
	h=To:Subject:From:Message-Id:Date; b=ns8hNdm6JgduggsoxRdiW/e9bw+WUovCStba/jVabObC3wMtmi2DP/x28E83sLXKdn6GZ9Cq7n3DA9q/TLEWo+tVC31R+J4SXf2xwSqSoWsBD3HpsXbaWR9L3JE3HhsBRuWHm+9JDUhOautcAkBh7DXTfVj+y4fBLTCDTvgvQoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jv/WPFyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jv/WPFyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9422C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776108453;
	bh=uDfhR9jPsRTaAEAk+gXcJvhKI+AvyS5pdmqdZxODNv0=;
	h=To:Subject:From:Date:From;
	b=jv/WPFyAnaCl75pT291qgVioo4qaHOK469Xa+Q5EXD17Z2PBiWQO52T/Q8j9dnBJ+
	 MgskY5wwJkEMVGcgCPUdJ2clTdb8W97I8EEQtqjBrt6TB7KbsL66PmLuXQ5KkICGDk
	 aycr6fBRgIS+PQelkyfs1ibAor+gnybwVQRlZ8McZcHruRBqWVmxCPYeiOKuRSXEt8
	 9CXfmry+Ou/msxIulW7ZMKcp+rd4cop9li9a+DjYDS2BQV7AWeN8Z9FQJTzlw9DDG0
	 xj839PeXsQtoyejmYHhXVGEzrGIsHgS1JI7QtkP9cOZTuod4hVipHv/W8ffqlL1TZP
	 QPx2Ckanmbfbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E4F531C3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610845368.11507.6341939916992783237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac20a342b6c2b060ea1a946b4ddbfb8508a0d0107c0756e9644eed0769fd416b
Date: Mon, 13 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776108453
