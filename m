Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1DD21FF29
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791169234; cv=none; b=c4pGszTULwVwrOE5YurnyddKSX4w4MgyxeoTtmF95mtZqj8vMtfEqI4WkjlA5pT2m7RuHojOn1Ry6iRo4p1ULF4DgLYbi+kNoXUuknTOX5ygRbfojgwDLPwsv3KQ9Xcq2xBw09b+W8M9mzPDxrceXjpXlpM9nsIcoyTMEvoJLKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791169234; c=relaxed/simple;
	bh=YP+Hs8uh5v3cTwE58s5j8jLnMpKxWAHAqP5nN50p59c=;
	h=To:Subject:From:Message-Id:Date; b=Xagmwg/70R/VeMLsKGNrhKZ4a8vqAnfKKvB58iPMlG04XaIX1Ek8EjN3ldaongV6IUFrQ9bHQM+Dw9EkD2NRz+6+zYatgtEE1T9PmjAj0sqJu2/EgIIHMPqwEoGV0J8FdpfJJCBOKEZ4GWJ/7C5pGPd2Oc+nqyfwdegDHz/v9Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnXauLdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnXauLdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D96C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791169233;
	bh=YP+Hs8uh5v3cTwE58s5j8jLnMpKxWAHAqP5nN50p59c=;
	h=To:Subject:From:Date:From;
	b=TnXauLdwugUua5Hzyz5GXuF8J6KfVu77kYLWZFBfjnaABsPZPjezcQe9Vlaxo9vPL
	 FPgqNmpIhTCj4Of24UCRwcaM09xzG27YmTxVrJoKBWrf7CMYUtMgZTXZD0JFXXluPo
	 TR3lT/bVlbsNU9geZ4DKcc4Wv93ML+DTrOa0zThLdeNwlx5DwzBNRz2wR0jMFJqyUB
	 N62stVLlujTRD8kiEZph6g80PiMLgyRdV+Icz+t9IHolspsTEYwGDI2IseL8sIUvLy
	 ffgX7fe0XEK69fXmaenx7QKYzcN+gKs3pvFsQywaifKKIncVe+vSksJ6eHOQYdn7XY
	 VLk4V8CunW5Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FA8CA5FF1
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116923371.2904.7098714127396388086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98eb42216a9c01936ff6e8ef25b130d6e1bc64845ff7d834fe237fc36d0a6c85
Date: Mon, 05 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791169233
