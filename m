Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29377332EBD
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780245874; cv=none; b=sDa9NEvBd+rvTUDna18T2YJ4nambUks5G+XRKJIa4BcA7Mv/PEOP9wFbqDZRIQl4pGmM1b2z5mN62wVoQmdLYZVNvbllpxkj55iT7t9BxDD8amm+NM3M+67FoLu33SYH7diukhYo3KLAWOdXfs77jou7M881+8sYNiJqmJ6JvLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780245874; c=relaxed/simple;
	bh=WlCb0U4vTjpL8m7FnOmE0pQ5pYKRHNOy6pJyvjZsxDY=;
	h=To:Subject:From:Message-Id:Date; b=cU6WLvkm5LrjQm4WUl5vLEKUU8AMM6BH2kdCekkCrGlCGFlaGELU3JNv5Lh+8iDTcwr5OMe9t5ubnRocH9RUl5aU0wYoKRW2gCbVFjhdFMIT+BDpHahor6Z1f3YDbjaBxB6Avum/ckGZotuiByXfw8oeBeWnleZWhvRB8y4eVao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBRkerSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBRkerSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1644C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780245873;
	bh=WlCb0U4vTjpL8m7FnOmE0pQ5pYKRHNOy6pJyvjZsxDY=;
	h=To:Subject:From:Date:From;
	b=TBRkerSPnJZmeIK5c8ll2rIcYFP3qcXFKkYOPTaWYIqvMxAN3sRPSDImC84H6yWEi
	 jdVF1Cd4gZMTm0SKwMvhQiOAjmp1gjoCH3kQPqZPNY6hv91MIAFVyP0zj1MEnD7Mr0
	 hU8zWL55qZyC4ybIAN4svMFc4diH6sf7uWueU9KH8woy1DkNRhP3Hq80NKHo3GJ9P1
	 EqIfPCSiLBA2AxSGx5xcL9GpJPRSWQABDbE5baWvMkF08pvEPQvQqthN2PN3TU8/41
	 cBwNTF+om6lg0AOkFUhVdWcE13U1p9VjGCYZHIq7+1eHoLi6xza53uDoKTNmaHfT1X
	 C4z55RdJB5MeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF576CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024587368.1840.6508251731317574194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41271b4a87d7b315efbea40105d09026cee3d28c6c07201499f73971ac8d7ca5
Date: Sun, 31 May 2026 16:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780245873
