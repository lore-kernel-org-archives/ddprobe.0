Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A1D1B7F4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736751954; cv=none; b=kxpy4IaSUSGeZqs0BkAkLL4NIJeSea4iZRPrC/lZl0Te1BgNNlLmzKJvrHlnRD57Fj1Lzt/wU/ig9yRRZGHY1WOGlh63mBpDlJ6vSxn1VUlGTj672/X8C07M2j0Ac07sWe2llbjFrzXg0F0c46rJr6ieMw3IdqNMHloWaK19MMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736751954; c=relaxed/simple;
	bh=Br/rqCE7QOcnT4vBOengaHuc0aRKzUCfWIgOGXPn4tI=;
	h=To:Subject:From:Message-Id:Date; b=t4HjjDGDy29iuL/OqVF9z+dxzVU5u2IDyIPRJ0BzkIR9v5nTRMVc23wpbYUb4D78tWdqs4EyZqudzYOhmF+b4DbDb5vLiBPd+i00S25JpE294bP7IKh/VcFRziZRlKZvfOBPmKuYL29BlX08IRug0sIbgmbf1+8ErrB9dguH4VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XI2P0hLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XI2P0hLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFB5C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736751953;
	bh=Br/rqCE7QOcnT4vBOengaHuc0aRKzUCfWIgOGXPn4tI=;
	h=To:Subject:From:Date:From;
	b=XI2P0hLytjcYeeZAaeQ5IyDkTeWJax97cT4u4Z/WiRWQ0fJR+NDGbgM47yOmwdjhw
	 kOpcdgqlBrsdfF9iCeBgsPW7d9V0elqh3JMyf6IytAYY2hvqJe+qvxrw5TteLGQM4A
	 hf/QGt2hQwpUpM9yIGhUMnwmNmsg/nbs2HS7LkR9sqfe0O0mxkJdiyV11uLVg+nari
	 eWPjJ16ZRyuzO51zHkbSN4rOkOmuOEARTaN1A9g7kPU4ceQdbZoVFhNpb2vf0+5ytE
	 XeAbt5ky6M9Gf/5XrlmGCLidXO+QLjgTEapDrsKw+UyVL0vBquHdn3UG8KlonxmJPT
	 M972GiQrmtMyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F212E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675195357.16122.16543081475125331978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6daf953d31d646340b5eeecc5e9d93453076059795bfca885e6eb7487362fb0
Date: Mon, 13 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736751953
