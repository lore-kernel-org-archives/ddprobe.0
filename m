Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440293E3C73
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780944274; cv=none; b=VN/+n0BXKzePCb1jAi6e4bUWfqYb+YLJVGhxaT9Pn7k+WVLaOVMjE9Kxzc+qJawXZ6hbopHiegwqPI7pwUldzvhwdCdoodGihu5rR7xRGxHr9InqbKw7A0M+m8MaiGe2pbT+AmCsA96wn9sC+4ppk75Txk13qP1XGD3GGKIS6u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780944274; c=relaxed/simple;
	bh=l4gH90MPMvF4azNNuLliWi2veHmDijw3/x9zbfphtMk=;
	h=To:Subject:From:Message-Id:Date; b=ljp9rfQiUGewPShqvVuLUxqe+/fz+MvZxZPMFZ7qpyB0B6BIejC642afMOVBcmfKqpEHaFqy9Xmz35TDpJf7KCnBOfHsvT2FahW2x0KxvBq0/9ugVJJZfu25a5//X0w8nDJ1d1HX+2ob6gwvPTTdocm3Xu+GXgzgWrY1APCug+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIVhkErZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIVhkErZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB94FC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780944273;
	bh=l4gH90MPMvF4azNNuLliWi2veHmDijw3/x9zbfphtMk=;
	h=To:Subject:From:Date:From;
	b=dIVhkErZ5/6J9NIPRtL4soD/HHDvA3Kub7sSODTxFLq+crZp5/zenUWwOfwkZL2U8
	 XDc4qu20vlAFGkskt4GzkA6w4jl+RQ99QZgFQ20zvmZc++Ku//3NiBepsZgWvl5y/x
	 8OShaT2fLIULeWc8gPL3MYy7oixKhMrqJSZptK7Iz+6KIe4p3O+TLmeFHUAaxhPq4r
	 ZxkLsd3unmnFpwknfLC3WrGD5uu+Xj2IdgwQ68rXkT4CVXeLJh12waXovBSe1RRRZb
	 yAJEf7U6SXuxEwfGFfnHlaj68//d2yyfu6TGdKKFuX0UqNvoZzyNcCtUByzyywqyjZ
	 l3NskP7kCff/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FE5CD8CA4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094427372.13814.16644766319706869359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086396bdb019073657f95b33bc8cb81a7087f52eb9222f7d0f432adec21c8f94
Date: Mon, 08 Jun 2026 18:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780944273
