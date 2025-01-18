Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532D2B67F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737164154; cv=none; b=oyVBjhRlc30Ko7T/ajuNGbqlu/TlzTMObrfKhy5BX7DfxQRGYgI0hoQAfz/J3N57dY2j2xRE+VEoaw2s3axFPDSxRAyyeooz9gXTVGiQ1n43tU6ZtYyopr348NcXSJH3OQcUTwDFIYVqXzXixCgz2048OS9QDdpv4JGvnCuodYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737164154; c=relaxed/simple;
	bh=p3GVUawxVEakIr5sHwJD9sySbIVrhMJ6dw/+okHAt/U=;
	h=To:Subject:From:Message-Id:Date; b=iLeuHGfgWfxgSmsdEGjc7MdIif3KvBHfRMx1VDp1Ro0ZSN1m30QplWQ/KdAYSPJHwa/D74zJukm8fWoYG4Gu0BHFsZet+HYrI5BLQw8fT/rARSTyZklGm9kktDpyCkumWM169nKWrVFF+TwwShs82SkXy03wS8UOVhpxcfzqSJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiSAhEZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiSAhEZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F2AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737164153;
	bh=p3GVUawxVEakIr5sHwJD9sySbIVrhMJ6dw/+okHAt/U=;
	h=To:Subject:From:Date:From;
	b=FiSAhEZ/KTx/8zCh91DxOQQ1UBYe7EZvM93zIQVwwNPyRqxbfhfBuwhjbWFryrSQh
	 X2mja4bUtFpzcHnddXbCixCxqw0+EgDPRASFnrGehzhe+QXh3e3IfbBmS2ESGf1PkY
	 uINrvRiFDqPfsRTvt+b/+i4fJWIj+zAjbevduT1HRYejG33lwopnjxlQN/zuSbQOBS
	 cnQN6meqhGLnxCdvD8aWoUx45gjCE0BN4cKL/uY5gfA8/2n+/wEwS4hWFQWydqoPqc
	 WGdUXFGs9K1NXQllMB90KQ3l6G90vBn9XpU+ZatWDQVE3/kaT/RTgH0+w4gggbSBMh
	 8NzVwuI6dk8Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D794C02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173716415361.6892.4516695465502434121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7740157e8e134e4e829f8e303d46b6b8c4885885bf73610fc53d4a857de67187
Date: Sat, 18 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737164153
