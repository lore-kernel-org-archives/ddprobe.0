Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451A13B5850
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785840034; cv=none; b=HmTsmwSe0Wric2n7iFkq0+9OniDa98bs2R+VgKdIx8ns0v9kXNq/O3q6tk2bNlBti0suDTMEvPQR9RDdwKp9H4CVMB/t2RZjpIv5HZ8cp2UmyNX36y7TvTWrpAuFv6l3aycj+3q6M60m6EjU8TWARiRvKNlfNItrF/30G4MgI1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785840034; c=relaxed/simple;
	bh=F2ROX5G+oH1sMGpuhwH6Hpmkt61E9vumcGjLqm71oas=;
	h=To:Subject:From:Message-Id:Date; b=d4OfEQN3f62HCeddpNO47oHT5cObfvJs0QtyekzywD4NerE+Ox9WYPqc7mZaRDc1MESZSeQRcVcpKP0nimeEyI5E6C6/IEoYeM0c/w78gJsHG0fUVp+8+GewMu4kvcdTxmaUBi852YjZlETXDGW8CQk3ouik3QRZWmyo3bwR9tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkv/W57d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkv/W57d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D495CC2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785840033;
	bh=F2ROX5G+oH1sMGpuhwH6Hpmkt61E9vumcGjLqm71oas=;
	h=To:Subject:From:Date:From;
	b=nkv/W57dSAo6YwJ/PlDfiwtpj/e4HpaADEMTXr0EuzG/jb/89CX65YwlhpKhA6jsm
	 ET6B+DvaSte3kb8EBppN2oCKFIeOIbFUoRxliKEnaneoIPuw4hYos63hy5hptq6zSK
	 IiJDRz2E7UWduXMKBC6jRhR34lcZJc5Z6K3jx3wI1MFlsdRgCf9spQXLkcmD3XoHnn
	 zATHRRPweRZLPx5n09i6uR6qAGF50DONDIu6PZDazpQ1dIT6E1MZWCEZgF3/yr8VfF
	 ZbecVJzG1SA7HJiptVjtJ/QWguX9PH8Yy76S8D7Brlkv2QPbWf5SKqMBLCbFXHqwxI
	 w6s5mktZzD2qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02E5C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584003370.18605.6220929758357921777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c7f9029a6de9b2539b4be6ea009021093238388644a66551eb18024aa332b2
Date: Tue, 04 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785840033
