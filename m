Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6072F259C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743412794; cv=none; b=UsS0NneqXpesaLshcDgUmN9aoePQm1Ut2h0syyApHY1DWofaaFc+Nfw537oFn+FgQSpr/6ZrCLNAxp+3WtyTs8s37lW6as3UivmNWuSJeNchex9xnVXibygvHfWknSdUCESKzlrLB9c74D3xpqN4LPcLsEwde1rwDAhK558pRMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743412794; c=relaxed/simple;
	bh=lBmlqg2bG3wploOy0EmrbvuFmmBn4W8DVibstr5fTLU=;
	h=To:Subject:From:Message-Id:Date; b=MQJoKJkrFJm1Nro/m+IlPW5XnsaG5QtwwsiaoMn33tIrMeTMWr1Uel7B4MBZyQTmct1uHG/qZ2vMO5A4jdnw/Q9k7Y/uvaesbifHYCWmjmhBdTeUtgp2ffNGvMvmm+h3+7ccyazwkay2v212WbSBn7JdFPXXhtdYy9ByCu02vGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIzWkmMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIzWkmMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD19EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743412793;
	bh=lBmlqg2bG3wploOy0EmrbvuFmmBn4W8DVibstr5fTLU=;
	h=To:Subject:From:Date:From;
	b=SIzWkmMf1FzsW4u2Q9vcmEjVRYhz6kHZXpQHfVISIYqF29z9onM5fMNM9Zgm3Ro2B
	 DbT2jMZKtDC10AIQdtrHsap2JGvkJe+c3pJadHHmEf/YzkUfEmx5kAEclA8LfAOwqz
	 5dwlHKeAn82DPp3MN8z62K8oJoj+K7jE4sImIbMtgA1i2uKPpe7AqRTMwF5znAlAhb
	 IGWNOkP1ZB9F9yYyLzSucSmW5Rzku7YztCOaCPJIZec0ZO/1rpn0I+ICQrzcRQ+SAa
	 qjieV8gAdFS5qdK+FWZB3zPOOymwuelGeC5jeYAlUvuIwtd1q0ueEQi8NPO7o6puxU
	 yPo7b98/2T8mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F3C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341279366.30258.16922871754577004285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d867038f94f4f9f59c8da4b5b4ace92061279402735c2268e2b8004f3dd73a7
Date: Mon, 31 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743412793
