Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B3E1D5151
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760602194; cv=none; b=umBIq5ziIsiRANT8osSMlvyjhtRGCDL7sErwJ7Zs2zArfgUeCxyzr+XAVkgolSHHdTEYyqf3DwXRFx6/7Z85b1xrfX90JMKHXUh4je+MfutVzQdZ/ff/Htb/jALxOOwR25JcYDHASC6TmoulNJ1sh1q3ocFWlC7E64a35OdQS6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760602194; c=relaxed/simple;
	bh=4sdkStQZaVKMPNzc+n09c3vSZxgRoqJbRnf3h+FgL9k=;
	h=To:Subject:From:Message-Id:Date; b=bRT6h9AOY87MflSSU+RocQ6+/nad33urVBuuBHeRIjhyeO/vlfVfGBrtktAZSUizRUj3gRsjU774uHPuG7RYAUjrqZlIm3OGWrRLnmUwi3mftaj1LUMAQGeVX72Qu/Wa1Knw29p2rsPD57RLrIgs4QfiCsK2QGD43O8lYGyekmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZlGXlu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZlGXlu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F776C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760602193;
	bh=4sdkStQZaVKMPNzc+n09c3vSZxgRoqJbRnf3h+FgL9k=;
	h=To:Subject:From:Date:From;
	b=uZlGXlu+7yq7bdfYBOCLK5JxbjBa4Jo6b/I1zZQnp2csHxsFrhYcBqkcCI4ESWD1/
	 FGvsxVdr53oDWMZIOrTAXCc8h5WHEOCGstN6oFcjVLLK13k3UaaK8bpOkJxeOFWDHO
	 /7zE9hTdvXl4pDUEqlmLgrblYHyRuya4Mjyp0LECPsgn+jT7eO53Dty7KwtP+21WDD
	 7vBjWeVYh3AFN56JcmNfwrBI4KoX9awJ8mldalfICGR7REXnZpuGenjY6sggcGwqVU
	 T2bfaQDKPErsbGr5O50vGIjW4QhEEqepWmlKKLv1TSmURXG+hDuwspeXMDFEnK3YoT
	 9VVwuMi7LTOjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07DCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060219357.2162.13974346537561468319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42bfb8abc43bd65e0eb49b11894b9846f8ad96be3727c8aa264da2a13bfaabb
Date: Thu, 16 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760602193
