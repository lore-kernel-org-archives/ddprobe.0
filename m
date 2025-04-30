Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383D42580DE
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746011394; cv=none; b=XHSSyl9QwK93PsMofKlzP3xcmufb71L7PnvjzYWg8moM2NvdB6fQLaGVQws+aJnoOYjQAYRaDao5uypJ9Snl+jwFQTLoye2cnzKPr5F2nCDzPxZpQfJowNrwr90s49zNmhcBb/cv2X+C4os2lR2ZVYgchP6KWMUuBZNdgmmWbfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746011394; c=relaxed/simple;
	bh=JudB9zVFcB9PS+Ll3MG+rn50XOL0tPLAmSfD0wy+/aM=;
	h=To:Subject:From:Message-Id:Date; b=jtlLDPnLpJFvq0ejZY/HDMi/e5gljZWN9bSBPHnNWharjnzeJsYhMZ/YXjPMhjxMNSd48z4L0w05dogiLcAvih8jz2gC7gseBkKgzkrvQjJgcZsBtLgH9co4asN4NG3xKktuufhNFLRuVCh6zB9Wk1Pc9rEexSSkGvqXgWyDQso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ox3RUbhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ox3RUbhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A6CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746011393;
	bh=JudB9zVFcB9PS+Ll3MG+rn50XOL0tPLAmSfD0wy+/aM=;
	h=To:Subject:From:Date:From;
	b=ox3RUbhyFetY0EfC/+1/9F/zD/fPLwwSHcbqw4nQgU9pOI3wTbu7UJqONyoeJ5eT8
	 CoO/MzML44K6r30FHUxg3H10kdWHx1STT5EHZQzQ/atg4DnBcb3NkEhIOQNEs0N/Kd
	 /ijEDpzLuAhV2hOPKwB+7yIUqf4VUgtNFDQPy+BrcNzGa/QQyXeiPdBbojwFNhZ/vq
	 VgwzNMRDqRb3fDze+4MK0hVbwFRISzP+fKBiEf/Zyk7r/ld/0ZMWwbN62x6oCK0qwQ
	 wuwbit6ss7TpCJac8amiEqvp59RxHZUL+fpuPJ5SY+ZWHf5ubAQksF6t6+DPboM9jv
	 QmVmuyNbylZrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC04C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601139357.28792.3413101282032857362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0426d051d761de726d3c7a5aaa77edce4f6cbef0322f87cb43ccad0fa2e23d0a
Date: Wed, 30 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746011393
