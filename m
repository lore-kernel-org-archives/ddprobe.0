Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6828C1CD2F
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715675543; cv=none; b=c70xtbcTndP+YGEGasx0cnUIpONH7irTBx5s+3LQJMZQJCXgEMKwTOCGtQbTxI6ni6YxV7KDFctjmHe6t62NEuNKITDtXCaKnKU3Ipx7mNa/tVM9tRR3QSiuVQ6+T/uag9O2Iaphfb0BedGfdaOe6OtdRVaxkbfzDhVAXEhTUKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715675543; c=relaxed/simple;
	bh=cjsX7FHpGRZK56wR8x8NRsmd2TvIddgCL/WnEqKCCzI=;
	h=To:Subject:From:Message-Id:Date; b=o4LgJhrWtFPQW6qjUpJrMkR5Mph6ayuxM6ICh11rXYPoCevnpN9xgJ+fzZf5kemukyvCPL6gKN2MshsXqW3t1DdnAelecFeA+dfqzVK42+nd1KMGbS3i0RuigppKovwe6JAUsY4g5l0cjHCIzcjzEP7+M4qoQIX/v40KewASVqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Am6Cyqwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Am6Cyqwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EB7C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715675542;
	bh=cjsX7FHpGRZK56wR8x8NRsmd2TvIddgCL/WnEqKCCzI=;
	h=To:Subject:From:Date:From;
	b=Am6CyqwcV0OjsnGcFsoeZgkB+/838FuIxQpP24Q4DefKn4t2Vx+vh7/O6/ur9Y/xT
	 XlAVYllFh83/Xy+tlxZFK6g3F13oxaxlQT+TjSJXLyF6x4eDBA8JADRc9RMHYU18uO
	 GT2HqpwFhrV5Gbg5c/m5op7QEOlVk/7VTS/WD562RA13a1hIN27L34PraXTtOtOAAx
	 ifDXU5cVVcNT+gPnQxMRhJb1iWwjJur3bVHlnJLc0HhErt5mSfcGikDi4RfEqmPDb8
	 EC1GFnS3uxOn9NgFbjxA6a5QJKm2mE87l8s+8kaUQaC5kVoE/6I58D60fp6/dl6JFC
	 G3Upgt4ZK3VDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE763C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171567554277.7592.4575330431428358925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7943c189e8310e9eec5fa8ed2c737a32797593045b685fad7674dcf76a79ccef
Date: Tue, 14 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715675542
