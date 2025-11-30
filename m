Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4172782899
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764529974; cv=none; b=WN6+CFY/xIHqp7X2wOZq79Wjik/n5lMPlk1m0aMNMG8tuVMSsMxc0jmV/u3XG5UXi5S2mYJ3lVwrG6SmzZdWQ/bp9S5suDWEK9TdUdBQXSBzJaWZrD1NYw0keB5XLzY5CA4qE/ai984Ner4JsDnuMUY0RWp73e6nQVT6edsZgnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764529974; c=relaxed/simple;
	bh=WeNioYLkuu3dL8jR5HQeOpSI/wSjuRHxvm+x4OonBG4=;
	h=To:Subject:From:Message-Id:Date; b=Mgbw8IzZSzdQulMESrV8B2DGUGH71Jea3vvyYT28gkwVLg+nLg1BXIWD9JNTAd8V9ZFMTwOeoZJGVzZ+8TDi0sjsk2maU8qqGVXdfiG8oseUKGhVZ0QiL24qQ+uRWE4LdQToopsr2PS63om9NjS+zTTiT6+Eah6DGScYjjILnKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0MNrDGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0MNrDGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC4BC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764529973;
	bh=WeNioYLkuu3dL8jR5HQeOpSI/wSjuRHxvm+x4OonBG4=;
	h=To:Subject:From:Date:From;
	b=S0MNrDGxLbU2ZIsbZ30Ap+GAR+O2aUTmzcy1f3xNv020yqW8hnuE81Lcvy92FekhT
	 kVfTyZ+bdxl7gPz8A/NjIqFwPH8gRERBvj+xdXE8kkxe2NQUQXZNEHGgDQTa0kJegZ
	 BtQ/nDcxcf5frcoiw0u2pyBVi+WCYiEd0tbPFigz+663m7PPKIhacLvMttN8FrmI9q
	 LSE9Mo8QS063Zkj2ZJfwGutk6vd/6VGRn0piQxg1Ece4MilLc4WylOlxMcPK9oEOqh
	 NpUCC1JWoEViGkyEsXnbb+3TohXQV6nZx2oW/SqBjH6BsI0PfSWpRWv1n+p7EH5qfE
	 WNmxTXZ+h4V4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987E6CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452997358.8003.14175446698425125415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bbd53b2eb11f5113931ca5cbfc52a45ca5fb5cccf4886fe586af4f1e8cca0d1
Date: Sun, 30 Nov 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764529973
