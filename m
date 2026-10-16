Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DA63264C4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792113634; cv=none; b=NyThaKpWERjivMHLS0uJZKKwpuMwOfyUiVyikEf40Xn/zp8ZrNrAtpaTlx5NCBMILbzhL/GknkCn5fSN34r/gN6/ogpQxL1or1E8R9W7hyrqpLbE9+Vgb/S5/8tbwcROTeLMqh6O2P41Kc75KigA14LUFxTjummlmgz6nXRXOUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792113634; c=relaxed/simple;
	bh=3hGMQrXj9O+i1qlO6ZODwYLS1SYjiy9tbxOGZybkm2A=;
	h=To:Subject:From:Message-Id:Date; b=pfFqRaOtsMRNN7gPAlWdGz9iuS28vLeNzH6o+NNbdXvD9v/m3ZNd3JMd36efAifFKRPWEew0F66n1vnNx7K2peJiRBGHxiUajbKy7tyf0mv9gUAVpNtRPLUEOYy+z1vV8REFmDOZQRoEVE/BRAUMuIcOOjMq+EIPEv557ZOJ4ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXTK8fi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXTK8fi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2FAC2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792113633;
	bh=3hGMQrXj9O+i1qlO6ZODwYLS1SYjiy9tbxOGZybkm2A=;
	h=To:Subject:From:Date:From;
	b=bXTK8fi2/9TQZT2iUPXvq87sor3DnU7PO6BmkymO9AczbShX28FPsCnlEuzduqWnL
	 SAy09cdgJ879s4xnCDah5l3JIJZEChibI5HbYQFX2YsLnWCc4n8yn6v1v7LQpRU4oe
	 lJ5Fqi9j4LyT6MKDxkRndFINzP09msUu9VUrhGnHTHtYchBR9V9plDiiDFZHJI0LUF
	 LpZQmSyktrvf0MvqEZsWhdvK3wBc7ccsqZT5rRB/fi9cF/nFjj7wA9IdOANjT3s19p
	 P6R+R0b+LoCrLmt/dR/MT/T2CGfonaeqfzfCuwhFlpu5/cdZCJk/3e6iqrWrpozmo/
	 vpxl8sf/PMAfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7D6CCA463
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211363368.15558.4263059738645768233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1c819d1453f3633de83aab69fdc0ed55788fdf16f1d18db1af106f7b031ac1
Date: Fri, 16 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792113633
