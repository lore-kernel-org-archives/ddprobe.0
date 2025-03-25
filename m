Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC90266B43
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742934593; cv=none; b=NcYy43Pv6+vdryX4NN7ezkvlGYnVM+95xmG6C+WtVUaMrnAGjoItDXkp+Wc34gl33jSSd+a1AyPevrhYCHGAFUB1f+Kyt9fzlg3SYpHjoJReni5WSeQcqdpGVCEfBlpiA3WiqNecPupgkb47+mRLbdHcT2/nLNAhoPV9pLoqzvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742934593; c=relaxed/simple;
	bh=de9fGJe93+hzfLEK5rY0IMWLTAa7+RQOME9mZlK3EN8=;
	h=To:Subject:From:Message-Id:Date; b=c7DSQJ0P3ix+hDYhCE2txDA1Z54p2USYOxKr1+rp9yxGg5jedd06ZgbRTjGW/haf4x3fOy0LDjoUw0+Ms9QwpgkKxUc5AlMdhvY/kj3G6T/uwFrm5d9V5H9OmQtHIem36iydRgSgpucZOJa9EqQzm3pzclj6wX0iornQiuCsJ8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGUX2eth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGUX2eth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD9EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742934593;
	bh=de9fGJe93+hzfLEK5rY0IMWLTAa7+RQOME9mZlK3EN8=;
	h=To:Subject:From:Date:From;
	b=OGUX2ethljpNS7bqnAPgAbk6fi4yN0ClRNArEGxkJksGpTAJ61KQCSbxbeA6Lstqh
	 oO9ebTOZ1T0T/7AVdNcnppQC4tog4fh3EPp0P+OfNzBc/enYWgG8zHR8N4Yvimlgtj
	 02NFOAJb9FbJrNgGyR9tdQCWQdrnCbYn0JOnfQVtOBZdfWKMEgwH4n9OmAKsJmZwSQ
	 cmSb2F0le2MlBXo3ZFv6sIfaxy4vkeM4F+F39tb/W2os+3N90haYJe20wJOdiQwSpE
	 h6ffSmNXGbBmMusmWzGYkfX6CVJ0TGcOyJzQA06oHKnAWdPQSa8RGErXseA9SkgJ5d
	 AOJS9Ohb5qrNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB3CC36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293459362.27138.12760795558812326545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b357f38339aa448ce6ef32483957bf68846dfebbeb0ca80b3762210c964e15c
Date: Tue, 25 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742934593
