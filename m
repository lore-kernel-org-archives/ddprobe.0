Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AFE370D5F
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776428854; cv=none; b=imJcLr3O5Gh671q4kPnO9OpyORQjvryLbfnfvAle0slJL60Sdhwe83QmwzN7W65HwhBa6l1mbAwa3S7NGaG48N7KphlWOdbpjLxPjYZKOsShF9ayscZa2dd3OUNb9RyicgymE0e7T8Fy+SIvgEFzzHOjdX4uesSBlYSRrlz6Gyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776428854; c=relaxed/simple;
	bh=RgLRmnx1l5F46SzXC5i8htfWv7D3gokcbZ8yuTHvXik=;
	h=To:Subject:From:Message-Id:Date; b=iwFIIX1C3LJuTdCQNjdKpa3MjEHS04BWa9nsjKLpCkMsL/sB0kWTzhgplR2s4HNQVgSxEsBlV0e6Fc3HG5sATR5rGIcXXUxBqbicP9kZZ1ne8+X/eiBaeP2M4qBrea83VXR/lmvSCKPlu2Pq7Rb2PzZZdvoYZb3oAFynvgpnhWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAXHvKPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAXHvKPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F9FC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776428853;
	bh=RgLRmnx1l5F46SzXC5i8htfWv7D3gokcbZ8yuTHvXik=;
	h=To:Subject:From:Date:From;
	b=HAXHvKPtus24wIoG5wfe3MHfzJdaxbHeQGxRfwqWDc9H60Co/Z1pu54rZDcCwNECL
	 x9EHev5vpF5xmpRJJw9KsdbjAPCOeBuQv/TQF+YgSsvP8NBqKlzilz3Askq65doCqU
	 Vg4VGcjTopw2M50CmHESvBxoG36SWPXgCVX60fqLoA9QY1hg8TBPhq7M0auAn/2vQm
	 I0p2+lasVD6d4E3JbGDSgDJ3VAa8ktMI9OpU0Rhouemy4dRQWHY3aqR5LNUpg3dKgO
	 cxT/ps3w973kYx8dcQNmuVQoaWyVAvhll3Vinwv8A5yCu+RWi0kZHaG+/3YUOv3UW1
	 SvEH87DCpA9qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D2DF43697
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642885368.13479.3041730867255726724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e070ad16815fce0adda3e9e5919e282824b4a0dc35f72a6e0d81d924229f1b
Date: Fri, 17 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776428853
