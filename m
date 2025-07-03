Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F602D9EEA
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751553594; cv=none; b=geTJbMOUFOcbigkPUHiDUulWhvTPd4Wmrd3PZajOjlwPas+NML9OOjzVtm/lqnGzY4SFJY5EyUNENeEfALwjDRRNhjVVhygFmPm7YdOP5n/GsH7ulk+OjK2NCvlpk+9ZJog2oMFUX9kfqLF1wa/2R/TpqgEMXLdnfFtReL5MtmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751553594; c=relaxed/simple;
	bh=aAKg6j+O0mH9KnuhQtAUFDedw4LcNObhNiBgHmP1t48=;
	h=To:Subject:From:Message-Id:Date; b=TZ4v3zEkTyT7Nx+IQZZzSf+B1iR194KX7p5Q9kcd7Rov1bS2vXrjU8+VaMGcwYBics6EH5cQYyYcX8WOD84DJUzNd9DCXO8QuL8uaxoI+yGkT//cYKMsjW3CZKucDTIHlF62lHZWzM033jpwgjfsD7RmiS3GZpv4YRKhaxVwcxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKWCQHeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKWCQHeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B9C6C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751553593;
	bh=aAKg6j+O0mH9KnuhQtAUFDedw4LcNObhNiBgHmP1t48=;
	h=To:Subject:From:Date:From;
	b=qKWCQHeTmJ/xZs7g4WpQxPj9zlVDpsRDH6nLzi80XoUqcY+1+1KSs8G5X6+kSHq82
	 ghg9zdT832ECLjdU64H+PUdGb/NdVHWGu4ylQ5YwIFxYt4o/3PZI7L81mY+t2zOsuX
	 Z3qciJIeYwy+j36fLZhWqHJxCp4g2eQg6z9I1lLwCcVeW2c2fS4X8J92dpe2+GErmu
	 DNyH5nHRMkQm1ZR2TAae3o7TuloyGO+luw+fOF1B2y/rK44h0EqziA22ZM8AHNKCrG
	 Rwi4pkOpyBDHrI9Mt+L8SMGblvC2gVMvW9rfFYMnPhuby4AGu73LivPnFg2Aueqt8U
	 emvTa53BvCRrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E828C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155359357.29303.13233323174751118855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ed94a54bba1d89fc3edc54eb0372f926df9be621a6223bcdde2880486cd9e7
Date: Thu, 03 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751553593
