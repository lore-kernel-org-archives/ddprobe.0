Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6A5286409
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746550194; cv=none; b=b3N/yvlVH4r4O161RWZru3m4N14e+82GIcvesTTiR+QZMKLaNHNUhVGHEktSGRpcUuKzpMLPXNO3VBz1TzDn5VfUNvW8W5tdEzekY5QJKq7bN5x/jbF3IyqMRZB3A2Zw00NHhoewTpvKIrEXkqubE/fEhC/hh3dgkj5anRUG2wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746550194; c=relaxed/simple;
	bh=tz2jyKuxZVcOoivrJ4VLsBx6g5EDyysnrm63cFqSTzk=;
	h=To:Subject:From:Message-Id:Date; b=LwKM7mKpsYUofa8nQevhqTNlTLSE33YOs1Gv5kgMDdIG7PVKrB7hh0aLyFIa0yKptbvVXeyWhEDKGtNVdamquNDcKlinJV1q0pbzlp7o3aSEFbmuWiR6DZ9JPJfkmgfB3DDqOyCgbvqJLx+3yE4U+CS3PdL2nUEbbRInVo9ml74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipc6A8iz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipc6A8iz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F78C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746550193;
	bh=tz2jyKuxZVcOoivrJ4VLsBx6g5EDyysnrm63cFqSTzk=;
	h=To:Subject:From:Date:From;
	b=ipc6A8iz9gcoiGHxATaZWuOaLe3mun7uY54X33MP2hYitziHtYfTHLYStrLriVSPo
	 UWAgTX7F5lNaXNoQ4cBayWPzP9dTMR1+032xyFenlkztMXSgzNvI4G3k0O4VrARgeJ
	 6nCII5if5AFzXmNQN8bk2sNzMZKkJuZ23S/DijVEOsh5kZ1/S6n8s6VPCzh+AZ/DYZ
	 D2D03h6TQnyII1DpMEOuONiHRqfcOESwep7/Qex0Dt5D6pJbRVHGn9IbFYEqGjIShr
	 JIn1f9zlDZis7HYrTjeFjR6e3pmu0LlaJ2/vlrs9jOwFvE7cvy+TNM30vsXrqAO603
	 RP4TdwdaOPLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95943C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655019360.21500.7300274174938471383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0bc4a45b65f7d4816c587aa4c58d0d9e83b432535510ab302d2aafdcb5aa8a
Date: Tue, 06 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746550193
