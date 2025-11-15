Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1A128314A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763200794; cv=none; b=JKPmyZeS1Y2BtOqtOzRYdhzYq3O+fviIYZNXzixYxIVWSDD154EaGpuZK/7tYpXrh18A9HzcjTZN015PGqfJbfhO44Mu6N4bEoQcWvjj5ORo7rVo7VTD+LnRVPTtE87ctdhG9UsO+H4aGAHbpmGyCho9sjakFcW/txkpVcIcJFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763200794; c=relaxed/simple;
	bh=0+1GVFLMhj95eLRpxNMAQiOGwYOrDvshfRFCClV3BhY=;
	h=To:Subject:From:Message-Id:Date; b=lp/O4eerGIdDgZ+h0SPLYxnM8Omu/6tFnZeS6tOTgXRqETKGzrtoWv/ePiB6EjEMg6LruyZp/RzUywdz0iYaj8Jg5FMpLnztoAy2SxBigTstao/MLyQwQHjGgM8tRNGLbl+iBREpb88suio+/0pucd9FescO8fE+NiFUFNbenYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URG1wF4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URG1wF4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE02C19422
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763200793;
	bh=0+1GVFLMhj95eLRpxNMAQiOGwYOrDvshfRFCClV3BhY=;
	h=To:Subject:From:Date:From;
	b=URG1wF4z0tdSUQ9p+WAwvpl53Q23jaPs1hGtgqDrWykYRdszo2PDChv/8zE4xh3e6
	 pyzwaPaQfLTvAKJJl7oxsN2LqyU2xuyromir3rboVeQGOjrHOnSqRXVQFOFI8LclIl
	 COBrnXy6jrCjeKRdB27EnR+NSduhVWhlyXHTIzb2kelziu2kJfud/sJKVm9zq6pMOx
	 1TygFHUTa8lNG7Rd5f7LhFbjYJ+fI5DUpbO2TqDKlccf55M2zaStc2BolAotTCvzzn
	 glF9FX/crkJIUu0WiXYeGn7dSe+EuR5dB3XRgXN0NYqVo4bXHcdVgE20Co57dAntmY
	 PLwX9C0dO778Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A3CEB2C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320079358.14511.2469136945435669435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cceaf9c2a50ce75fbd87d06678bdb176892696f6006867dfaa6bef127397197c
Date: Sat, 15 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763200793
