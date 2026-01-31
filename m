Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCE420CCDC
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769898233; cv=none; b=K0QMoleZDqyg855wxkwnbOiwa1Xw2vZKEi6Q7x0XyarEq/B6nJjvveo1OsnYmfduJ40vVGMsy9NHZOiwdRnWwvnCs4v4hVz+2i/oCZ1hsBwUZcwPRzqNt4kFg9x1qs3NN8iaowpyqK9oOyBsAzcL0IDidDytt9Z9eaAz7B/w/w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769898233; c=relaxed/simple;
	bh=7h8bngbq55VD/WhBd80IxQXUBFKlouU09cKCX7X2zpA=;
	h=To:Subject:From:Message-Id:Date; b=oa2v1TUq1GRc8/m/209WGuMEuYz4pFgEeRVJdNOpQJDFmFJqDvokAtqNjs/0qCGfJTzy/FfyahR+zpsE8BUyj85pR9N15f4r2ZRHc2kll3ka5MmJ1q+BRpKw+k3F8RnIoP29JZS++3nn2kVmmtG03a0bhLcsvUXEnHrQ+inlGp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drRrEjvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drRrEjvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA4C116D0
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769898233;
	bh=7h8bngbq55VD/WhBd80IxQXUBFKlouU09cKCX7X2zpA=;
	h=To:Subject:From:Date:From;
	b=drRrEjvsSOlWtATvCO0nacZTtkcSNHfmqdcREukArHtQa+zR/vaQI5YzQ+1ohNHyM
	 M+m8zak8iuAr/v6DL87ylySV7SVK3mV/Lui5ENt2VQBN2VNTzpLYX3v32TXeYdSK9R
	 O5keGSvLw7T59VoYJtDKLp27uk84blbfStoV3m/7Wo/xM5EQc/4eVyxPREQMBlGcGI
	 XG3zmNQxcfat/c2POB4xf/Awy35//emFGb2gbUCl0HhMWhClGuIOx22Gzi/H7CvDDv
	 r5x9/Kk6hJLjCNXReaBEt+Gxmrq5UjFgHOBwn5tln3zEgIdPfEUIOFiYBJrcf1migs
	 5Ko2Vet5HfPzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915A3E7C6F8
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989823357.17473.14335874464410470720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8135cbdc047adc9baaa06639caca451f26021646549ccad239b1c60aa7ce8723
Date: Sat, 31 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769898233
