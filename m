Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220FA29BD95
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776533854; cv=none; b=iv/MXLOMkyGKELZ99cwxazfX/ytsEyEbWSDRXOu7ekg/9Ntwv/NFiM0dSORF8AFbI4U6I4D4ZBHcptN7oYh7yAaq7G03PauaWSnqxpkjt3Z7YD50lacF4o8zj7W5nwxUW4LufxbnxluvTMVIyaOBybMrkEGEHhKFsf2/cH7VUYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776533854; c=relaxed/simple;
	bh=AdPTye+PyoAswVcF/wYPwLyMYjOgE+yFAf2oafbJaVw=;
	h=To:Subject:From:Message-Id:Date; b=pzgD1en+h5FHhi/ov2zeYBT/bjNZ+iQ3gaFxpp2D3jME6HWipoEYb1TkOv0dtv9X0HAUuTeCgVQG6N3x7OrKXx4Hl1tAOxkrvpvcXNJicpGOp9N7Kt19u4OSppWVjSUjt+jrE3XwziN0xQJzcL/6drOzl0Rr8SRs8y9OUPcDOOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCXukkai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCXukkai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15F2C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776533853;
	bh=AdPTye+PyoAswVcF/wYPwLyMYjOgE+yFAf2oafbJaVw=;
	h=To:Subject:From:Date:From;
	b=MCXukkaiPKcxwLCxpWscyYbY2564SM4jfiRZD3uaRpyp+rYEnujTsP87td+uMRuXb
	 6ERVU/OswZRBVFY2CCtDdrtgonGonafBS4YBVcZNl9Kq/AoGw7lW/FtQlu4U3+AeEp
	 pBsaQmYUUICFuGI1U47/sDwvN9M+abVdZT3hNv94X67PexynHAyQKALk9xLIdGP+ji
	 wUbRnAjbIq1rsu/pNsp57saZXNsp69Dhqx3TAx2GyiiMtj6U0zI3XjloqhTg1M7IP1
	 mHSm/XsalaANQr+03QmsllEnepq3NZkgMwEPx9MnusCi1tXf560CNF8tr9OkJxDHXT
	 uXpLWLu1M587A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0C0F99C88
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653385368.24695.13793700202440232350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b761a5a61ea6b3543e2fc3d68dd3c9c2ebd57e238f9416d8659417e6908a94e1
Date: Sat, 18 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776533853
