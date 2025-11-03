Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367EE3596D
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762130394; cv=none; b=scX+xIejZgPq4PuM6bS36pc9skrxQqe9Z4KnmApuKMwLg0vdV9qC1V8T7yuuBWvKz+yuL2Vut4vhl8f8cRyqrfhkAYE7UgEEHHmeaTQDkMkFnZLOMSIXHrsMnFff9sapzj9dTViWdwm62G468CNNvspnOJc0q0qERCnCmtbCSoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762130394; c=relaxed/simple;
	bh=BbTu4zReA+kNWflX3hFm5mQ6bMIgwcMotsJ7L3kH0dQ=;
	h=To:Subject:From:Message-Id:Date; b=ZNcI3reJASydWTF8eqB1Hcb/gbTTWSR97ZRg/XrCn7s9pjmvfd4KrMAnCA6qT68DJIIDvR6PSUFoSRRWpgbb0/nd53MQx5TV1+dbtFIALzs73dKqDu0fJMQ+4IuP6Q0bTEfrqH1pD5wiLnBKWHPXACe7Ja7B70D7lUW1lavSKKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsBOn7M+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsBOn7M+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28FBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762130393;
	bh=BbTu4zReA+kNWflX3hFm5mQ6bMIgwcMotsJ7L3kH0dQ=;
	h=To:Subject:From:Date:From;
	b=jsBOn7M+3MqiMXnJdKOJrmqVE0bPep2oH4WN9dtYJsj3t5QioNURrLWkO6VoBOwcj
	 DS7qd37Ex2wAMTjgk6hO3pK9lZl24eyWrpR0HjZvbozq6idq7JAXyMgxroGK6sBu9o
	 WtlC6ier1kLduA1LyA87IOGy8pmavzFAJfJP8U4/rifrv/I4Gvk3/7O6pahE4B6Pgs
	 WUBDaLJDyaCKMWqnF2Yv7aDEjuIw8WEvXs2qc/IMor1amGv1Sq4VB5/n94MfjisbeC
	 JWWQCdU0LpeGjezQFp14p4//Voyh1QVA5K/XeIgInItVygWUWzlvU0T9ZfYHFGoJeS
	 mjS9ODohBEVZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC16CCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213039361.2604.9239631092715716870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cae614d3a189cdaae9d387d42720eb12de344a7a639da53ad08e680967aa8ae
Date: Mon, 03 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762130393
