Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322DB2848B6
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755728994; cv=none; b=RpjlYpwvNICVMSodrMhrUW6nadUPrj6jwi8008EUD3Nni9qvBXXwEa0/3086NX1B79G96NO5Wf3HFtHmE0AfapAEo1vNZz8jB0UtiOgwmVk6d/eWkcuNbP6dOw5vZAzk9go7mQhO92M6MpXOt2vWHX63pPG90L3omDcZlJ9wJjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755728994; c=relaxed/simple;
	bh=TuhaC03+FrJH4wU9uY0ICWPg3K3H4f9LcLFlRzluUBI=;
	h=To:Subject:From:Message-Id:Date; b=MzeJ4GifpXDcPnLVIHJgk4HsNq10I/eFmtR3jMzVhWL+dwBhqv0FOgGPhirFM9F4YfcF7o5T5GKFkYSDnA6/crWJ7dWGtmJ7w0qpx2jDqGz39JAfzCiK4uYIsBzs79XezI3TvYOVdKIm/1mtuydXbcNvACFSBtFj34QvkBR2x+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAs3JhYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAs3JhYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7F3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755728993;
	bh=TuhaC03+FrJH4wU9uY0ICWPg3K3H4f9LcLFlRzluUBI=;
	h=To:Subject:From:Date:From;
	b=FAs3JhYaNc3V8+3Vii3guVOYX8jwltDesqGE/MGx0zbTHvrpmwIkeUcgKC7wML9Bp
	 w1KpOlee2DVNoFVtFcZjHAVDtfhSnyV7jrLSIcg4l/H5Nbkm+5m9F4yhkXTxYdE5jI
	 DUN3oikTFteuP0Ns7F3nPWt/ELLJEYzfgc/Oa/BLDOw87WpjpES35rWiZEAGrmg4z6
	 Q+4YcXWl89bLWY8JbG1H4EPjBngexysFTd9Auo3yhlM848dXU6YzjSK2j31Ems8uhC
	 QrGN6bmNIdF2rPl99du07fMz159Pykr8CJ73KO7C3ufaOhzzAzgie8muDMopTjNzdp
	 JhYsP/k5YH6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E625CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572899357.17786.11976180303542071759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36eed69c0493be41fdd4c66ad6fc6af29110a9b62ebc62c495f209a49070fda1
Date: Wed, 20 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755728993
