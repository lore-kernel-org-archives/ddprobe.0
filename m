Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369A9AD51
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733204754; cv=none; b=UZkY/Oy0pG57z/xjbzQarhHPSFBXNDWLAubEjokaiyg4MwdI2BQ2zr+CJ9/6svTZR7Oy2kdfEYRlYZ/caNBNU5biXaxyKJHB94fjDO54Xm7qZ95OvFuoLQMTEIs0gGKF2ncW4e4miThVmP+wVOPmgfAEqLhP8nx3mvt4dRn0KXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733204754; c=relaxed/simple;
	bh=ro3JyZLJ0eRso4NctG1pdovPtDCbtQ23emUjtYZscfM=;
	h=To:Subject:From:Message-Id:Date; b=DRzoa7a5gzICWaW78fZ7tMdt7OXGliL80UM9Tn3+0WS3vwFECN8EDXUS2ph3t6PXs9FiQJ9/Bw8dxOy4Iko1POvAGKixTyr5SfT5uREfUEwtiKbppXWfPBH5a9fRY3Fi+5nMSpoQrlVuIw0TupFEOZcILFgTXaCQHgR/zSnY2mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rC1RmH7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rC1RmH7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FE5C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733204753;
	bh=ro3JyZLJ0eRso4NctG1pdovPtDCbtQ23emUjtYZscfM=;
	h=To:Subject:From:Date:From;
	b=rC1RmH7qDarmlOTjvR2Ta/rCUhGtjzoxLCdtjRNipk3JeUNjse2AGcvatZ6MukaZb
	 Vh2FVt4np0FlhJqVINEn/t4Jb6YiOO2B6wcqYuAAIubIrFWOvj8rTRk2tlADgpukta
	 Eeig3LEdk0A8OV9UUrEdxZmZt6lQc3BjjgckiYiV4xQP4gP+yCgzmRlr6gv2LlzjnS
	 I4h54hCTuJNQh+4yFPRMtBswQ6Vr5sujsA9Tg2iPsis4RMdNhvFrOMj51x/yCXLd0R
	 OeNomB4mrGfUGqZQ375Z2kqJe2WQPFrnWQ+tjdROqTd0c/f1nhVdBbJwGdZ4TQAUyB
	 gdQ5DinFtt5GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F099E6C608
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173320475362.20660.6048293693406109485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ec4abe5e32fd0939d65ae93c6b79e892fbedf987e525741381f3ab1f937810
Date: Tue, 03 Dec 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733204753
