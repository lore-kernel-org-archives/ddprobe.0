Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F983A6B79
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776694654; cv=none; b=Q7g0wS45gWYQ8xYD7DZx+RWD8Qg91IVh+jl+cfjCEY69fc3mADjt8f2IqSzgjBRAlifUM7mv8mS2GYgC01jSmZsfxb6pnKNaafKi5BSc07xx3SUKSDjYMwwW9Z4sXBMMfnBEUU45lTszOGdJNIeFHDwNFAfc/mtS17fhU1/DTHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776694654; c=relaxed/simple;
	bh=WYvUDL5OyX+sV66aAEzvisEuxNv0zAthOLmhRlUeTDk=;
	h=To:Subject:From:Message-Id:Date; b=k/Dl/HCe16VO/mVobRFEEVHh0bojaXla2LSvrRKDW0uKp8Q098bSBpGIqr2SXvd4wio8Aoi9DalaQqUhzMUm0fQgMk5NE6yUNdY2zno9h6+KbV9yRm1xc6x1i6ZQrTvfZcDTh7/kUSJBE99qW5tX0uK+A7RFuLr+ob/EdnMSS6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhZoudv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhZoudv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9598C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776694653;
	bh=WYvUDL5OyX+sV66aAEzvisEuxNv0zAthOLmhRlUeTDk=;
	h=To:Subject:From:Date:From;
	b=AhZoudv+Qsf3nD1eyfxkVhHVm9bqYROuHQ/0pHzbI80Z+aC8kpIRMlN0mx5CCyLxE
	 X7bdYBLb4mCJG/+HkKK9X+nZQkHUveDG/OovEhCzjMgHzb2K8vXN9ESg7l368Lafi+
	 DPc90oPjOiKK1mKM0QL/vE/u98QegLYWh64/d2czQ5dKPuFoX1KS6recf9LiPedwfr
	 5/VcjiffaL6MtbLSYxyEiqBb25tgvFHoIeB3MKJVCFz3iPDq8P8ME7w68FJT2QiFkQ
	 TRBRDsBz08a8hc8NfCQeiLFg9ndng+5psE4xApCRrA7MPBeCmw4uyQBy1NU/ma94oT
	 NZOgOJjrFQcOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4CDF588DC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669465368.29664.8449406392804781805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a03ca9f02d9daf65f2b2482eba2984d932f89c827eda657a017d3b1f93fe7b
Date: Mon, 20 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776694653
