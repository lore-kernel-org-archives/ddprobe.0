Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1171126F291
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768516434; cv=none; b=Mjx+EXcnPL3xgyX1X+hRey7scoy/aRcK59Ht/Hh/XxCd5GTn1xBSeSlDFMCwXZS9RHsgPpiWXawBYxUXGb86lkpR80VzJOf8uTVYNu+0z8kDseOIN0uitJ92HbXOgQth7NoVbBDXIjlD+oA1nHFJXlxw7sGHKIKPhyG3Czg+DIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768516434; c=relaxed/simple;
	bh=8z72w56emAxjRevjGykw8r7uS+/0ZxzbamQwH+SCkdM=;
	h=To:Subject:From:Message-Id:Date; b=qNPL57cosLnm/W4PDvDnOYssC5HGUhrRc9fUbIG5eOY1DREnSWDkc+U+yuscECS3Hc4/m2oVQoxRwmk/S9vFDPrS5yX9DdgIpRFIo2kJbyhEuRmAZU4ku3eJPAHBZZBLMP9EjP49lPqpBm37s20e6e5nGxZ+VNKoAu0c0uvg4P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMPpCzIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMPpCzIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03F3C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768516433;
	bh=8z72w56emAxjRevjGykw8r7uS+/0ZxzbamQwH+SCkdM=;
	h=To:Subject:From:Date:From;
	b=kMPpCzIx3W9GuEhWu8/iNPHq0qvkp1lkHtGXhAOi7R6FjsfUZsfDFaOTx8EEMvDbN
	 7qEF5afovMxEJIEIgqoqNQQmmDBdagTp4Hpq9pwg7tZXI8x/nP+FA/V9jgyYeGDKyt
	 CCyeIjc3yROXD0pTmCi5gv4D+5O3GympwFzCBppCc91G6DaUAC8MMxNh1N2q6Av5Vu
	 Oa6JFN0TFzQjes11KyS1dlYY60eDRlEs4iLPcQps4VRqTVvVhCcLxoAJtajgoAeNie
	 8vFpXf0pzZ0kXdl7kFLazWBq9/5zKFXF2w1iyEBkwzbPvh6rwWA5BXGtnIRywEX5JP
	 VMBiGroIvVzKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0BD46627
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851643357.3619.5972477061551088530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f892f590e6e7b6b386a63703f51d7838d75ba4dfdd52d567f321e86409b443
Date: Thu, 15 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768516433
