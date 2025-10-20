Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D360E1CEAD6
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760947793; cv=none; b=Jlua6oAnPWYFqDRqQuv+FWp7Sv+lRKErUwUAcMHvm4KaHPPQY5k11BCOz5k2tYSJgejwc0739ihOwaEIFJZj9Z4FFw38YbK76CYahLy+/+lmy2J5zhfIcTgv4BGS3eONO4JWq/yWtCI3Y1FFEeK0DvQ74O75PT2LmCWtEh1Kt9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760947793; c=relaxed/simple;
	bh=63Q0dIGQTsdZy90hP8aNn2KtsnXLi0kCsvEmLmo809M=;
	h=To:Subject:From:Message-Id:Date; b=cvTeeUv75D6JQn5bjbhsgkYHkIAlQpBo/4lBxsj50+5i/qeLV82B9pmw/SOX9NjXFYViWIEVcbehPjVFDVOowyjHEEPAzE8UjAB7dw2Esi53WWCuAtNU8h7xz7fF3hYwcRveYP4ve9gv3OcrOmrSg69rfm5ihXVv9aUh7+CeuSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecePs2Q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecePs2Q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F14BC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760947793;
	bh=63Q0dIGQTsdZy90hP8aNn2KtsnXLi0kCsvEmLmo809M=;
	h=To:Subject:From:Date:From;
	b=ecePs2Q+fxPajwbq5t+XWzRFEglsaIdn7WtZ6OFD/d+eBiH1s75ztn4XaPXC2mijO
	 GjYmojBS3Fy5jEG/yJwQdXNWfsP4iGcKzwFeUKM5g1rax4q60coYXTfSV9Kmghu7S0
	 4oOCVmylYUGoLRzhXYCIKjVNxKz5drbML1cnOTMJSbUsdlmHHXwyXR/3H04P2Ct90l
	 PMDQ3QUqlZij1WrzYPeEBKiqnpnkpfWJjRDarpJ4w1x0m4H36WFS+292si1jX0lPlO
	 Q1rwqIequtjBTrL45gLoQCYHC63QR+b8c+CqsEuAgrmLjr99YT7IQFeci5CxQsgCkg
	 VeJ07xDSH5eAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD0CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176094779358.5361.9003671426715245697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f53ea8f87cdecd805e94537d53af9a6932550beca107df119033b79939a3ec9
Date: Mon, 20 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760947793
