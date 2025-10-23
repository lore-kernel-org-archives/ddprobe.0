Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BB4305063
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761224394; cv=none; b=GI7dreJmUTaUoB0MiSWqEuFsc++yRB9Yn1JxIPZWO5+kM2qmtymC+Ey0wrPbDtcpgtaJI4Nt7CSpHIT4tg3KAoAvdyGh0LUGV/5D7PKlN+E8JF3xz88+0Jqf2zdeaVEhOpCpDIGC7rN6xOnrGodn2g8DHzlV6DS7f9LuBl+xlAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761224394; c=relaxed/simple;
	bh=d8+FIwqZWEzKkexi9C38peDIy+GeHIc/DE8L5mW9zmQ=;
	h=To:Subject:From:Message-Id:Date; b=GOJDmoNHSSZput93Xj3D4fBAzwCLR83gHcO/ArsgWnLTz8oJO93a23xGL6/Dw2NRxuBvTFwduTAMjxyRLtyHT/8M4QKSYERVoD7oR3nF3tL/oABX+JzJFs9AQKogzHSF/o27WjDDNN0xsbs/PWGNNgcpsDDKSdaGtaXmoXawCsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NftZdsYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NftZdsYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E308C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761224393;
	bh=d8+FIwqZWEzKkexi9C38peDIy+GeHIc/DE8L5mW9zmQ=;
	h=To:Subject:From:Date:From;
	b=NftZdsYgYXnKLtPYQV+s5JCJCIV8ybi0IDgj6114zDUQkto2dMDQ73jdcIxMIQg6Q
	 t/r/MuPcqbbQUXMNVY60W3dbSojR1u99V3kFz9H5sxdIk89iwMYTKZv8BstPZej9e1
	 mzvMjpHJ2DvCIH6BIF+ILyhMtBoIgXx+Of36R+9hJ9wVGtzLuaeck20Rwsq0ektnZi
	 iTSOGShYT1tNmQGl4I1Rqv9NMUKv8V3Tu5mrWYFV/6Uc6mHvgRgQVmCbS5dBRveYWv
	 i+3XaG81zIbT+Qy7hsa9IvuNXw0vaO1wH/hzNoQ6UKJz+rJtLJOPUSVHSVFHG5NnTG
	 6SPwMkjrHMnbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A7CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122439358.7149.12218979734490696987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa0733a4b9f15637f283c99ac516eda137ff52aac80d6de093235d0f32cc658
Date: Thu, 23 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761224393
