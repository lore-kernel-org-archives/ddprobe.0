Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C675F1E32CF
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745992195; cv=none; b=Rrqwj6Lpg+SPntd66QIxSA7GkOTUnD+QrPflUroLnAU8i54RHW61olWUOE9qoO7j/9su5SRotNQp6CfNhVJToO+ZhAjfVPOZQbVKwMCNGWuHH3EsHjbYW9mBuErm81npwKUFkorsbY2GhpNKmVBJ/w1GGNgl0MAEHsy5Rlmwtm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745992195; c=relaxed/simple;
	bh=xlniksJKRIoRnjnhZGoQzmyYkuIGfmHetRK2XG92PFY=;
	h=To:Subject:From:Message-Id:Date; b=JyEPqWv5Aim0S2/iq/+UwfijyTYlZ3vn82PfWnK8cK/+lTGc+Qso1Y9/4bpkFLmQg8r9heCwGKJvLfnUudb7rK2Uc8nlzyd8VqD2JyuwiFvbp3NOasFN5Rkokl7oGhVEF3VMdirfIe8+wCSU9C+tG2akQuMsVhT/mIq5Hio0c+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhp367Ep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhp367Ep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1132C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745992193;
	bh=xlniksJKRIoRnjnhZGoQzmyYkuIGfmHetRK2XG92PFY=;
	h=To:Subject:From:Date:From;
	b=dhp367EpWdKNDQpsoh0GbnO/YRH5E4HnZWfQRRLa+k3KOFCWynTQyOY00Ms+XOvRt
	 TnZDmzafIJTNYTTQ8vyfv9Nzsp3T60JsXsdxZxnec4EF7ENpl6dO8kgjnCBgzhNZpl
	 hSdx8eh4sgnZi1flmJmiRmUrr+m/wddkV4tkhjXFJ9kddnYGIev9LTpDedOKpTd+qC
	 pZ+ClvUHcInJqIDOPj1fCgQSuhY+OjlbV/uAEse4CNtdMj099G/jOzHd2cc9k2v88D
	 f3XgkyrwfG8SP3gD4jHMPbJS4zscW6CAkYV9lREBI3ZNccmlr/AecFHU6plqSFiEO7
	 klcWgkI/W7E8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6EC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599219357.22277.9281958434296557989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775fc58e55a9e93face1b769b1ad11af464b511fdf0254fae96e6f8a42a58c6b
Date: Wed, 30 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745992193
