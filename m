Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19CF1E7675
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730831153; cv=none; b=XWllb7fvZfIP0BAEoNxlmdjnoCmdAREm6yZzdFgD5uBFwJB2u+hhpXUY2EQJxi1oTbk43rOlJXH1EBAkmf/wNACUusxLG/vCIfECk6vE+RV88scllYATZB3vCgu9zF+Ynvo5zp1CgzgaycYjpMK7cLEx2rIhCrWRqPYGqmKs94Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730831153; c=relaxed/simple;
	bh=mNAOeWG4RYo74c/lXtCbjUC5Mfc6AG9Uu+PWAACs5Dw=;
	h=To:Subject:From:Message-Id:Date; b=Du/qfgS5CnFnZTOfcTSq1fsWsmF/TIn1ISVuTy27OuTqBQScHck81JtVYIdAu+JueJoPkBS57+p4QnTUm/ljTg9DuchcJOKo+vLrLnFhdYcQl73Bhtcc2SmMynCK0l0HFytHHYIVuWJrMxgQoLW49TCFiC1hocsPNLTtpKNDJzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/rGlk8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/rGlk8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A741DC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730831153;
	bh=mNAOeWG4RYo74c/lXtCbjUC5Mfc6AG9Uu+PWAACs5Dw=;
	h=To:Subject:From:Date:From;
	b=J/rGlk8nWJOW3LR7N3i6VPVGpZ7DtPMSd4BfaQG0jZ4McouKoyqWzl8GGBPXo+asW
	 U756xVzgnjhYT6MuT1x+HDFfKsl7RwMBaoQotm51PeIwoM2Y9q+DDIWhU6olciCoNG
	 1Z/lFI1YeE/BF4xPIR8cpVesod8VjuYJlRQ20HuMfCRatgjr/csHOEUK5BmuREyab4
	 1BJ3ILWDdud797OMpLIkWle5BuwAllVYRasf6Mpw+Dd4gDy8K1sMGMe/ZkpmEkdTYv
	 In3Oy+OzVE3wGENL4cU0hAzCFZwRq8ODoH7iSZu0c8wWhP9ZvYY3KnApsT0lh282zD
	 ePVFvphTTJ70A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94398D3177F
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173083115359.13664.12174143566394365587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c53fb0cb96b2d683c44d6874a16cdf7f958146375f6f39b0c6d4cf189e45df
Date: Tue, 05 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730831153
