Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D3D8F6F
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759805394; cv=none; b=u2bcL47s68eZvaO9bUFFQUDFODCz0mVtHvKyn7bYsmlcA4jeHBnnjnbNA07ryxF+aOoA0RFcM2cFgguWeeLavs3SVWstb9Vw6mmhW+cyq+RNOqtjb3T8TFPbqKOhEiEHYfS19EDLHpZqZ2FT5red2nzvmNSfvVB5QAGMKRYMpv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759805394; c=relaxed/simple;
	bh=8QhqdeOTfpc+c/YZJnOhUKt6TOjMAGvYowLIKNkRwkI=;
	h=To:Subject:From:Message-Id:Date; b=YAr/bnPc8fECoqLSERXQrVq6T7Hy1uHSTQVIh2am/9Q9optu0YMWJZt61rg+uIU7sSjVYXuqIxQeA3ROmTY4ujoYevQsHMNv643IswWhcNZ07lYdrkO3luzDXKMa9aPPIzAALfo0nbR18SkoDDUVFh2BcI6ZVwye7xOmqS7T9Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQGIOGLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQGIOGLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07E6C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759805393;
	bh=8QhqdeOTfpc+c/YZJnOhUKt6TOjMAGvYowLIKNkRwkI=;
	h=To:Subject:From:Date:From;
	b=VQGIOGLHWiv77DMta+KbVr+svaIyuovUYFAcbSKnRzyN0XS3JA8Ceo80Sx8F8Ut1f
	 HwaQBlNqmHZgpF372kGr7f5AJ9uajvr8UkUR2/Y2SrNEAT0FuD9jyGoFcBubhz1wTx
	 O90ZQmHpY99oU+JTHuG+aZr7sGh68sRT0cc/CSGn+9ZXlHlWl73YPVdhAieJzPLQfB
	 czTcNuktjYNWos61v/VAeFoKrQqqxGK7tT1mnUmqsVkCXWBX4rDU6hwrodJLBo6qmV
	 JtW5/D0LSPj9UXSqhLlLSP2Rhb87IWVB/63/Wlu1qSlbDD4L+TvhvnpH260qAa90z1
	 QT0NjGoIv34JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F010CAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980539357.31246.195571727816790957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25fe493322c27477b1e6b1254849737ff645c858422fd662440b31d6d795f44f
Date: Tue, 07 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759805393
