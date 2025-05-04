Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A7D2AD2A
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746396595; cv=none; b=kuO0NG+ScI9/6WzzMlJ95FBit5Da8JL906IGBagAMYEpvcOgyuQHZA9HFj6JkUZKaNAqTj6dwisnXuMxpvMk0NS9+UR9CeehyoHh6Q7TfDqkH7CFuErzZnexOc6cSSfmDrKgX7+XKYZr95pVNq8WTK0TBYafbbIQZezL8VVp8A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746396595; c=relaxed/simple;
	bh=L1stxATuwkoTy5Zv9x4zjmNGBEdYc0yQMQVpjkPG5GQ=;
	h=To:Subject:From:Message-Id:Date; b=RDmGFgh62MwBTvxQAczF1/3nmB38j3tI/fIckG22MOdyiM2yH2heqRPceW+MXhRbPObGLUXNypVsChbSKZoyWb6thbndDyyK1MxuDLW+1CJUTcE2DTSycxYWxSPJf1bJ0kZ/+otVX7hi+ACvgR/4uIBj2IAFvGRAu9IIma4DRn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XODD1XGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XODD1XGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DF5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746396593;
	bh=L1stxATuwkoTy5Zv9x4zjmNGBEdYc0yQMQVpjkPG5GQ=;
	h=To:Subject:From:Date:From;
	b=XODD1XGk5ZNhHewmRtKa3xyg0a5geq0By58Smqc/z11SA4Veh5hKMzvmmEpAEMvUk
	 oPU+ZoxfojmoZTAng1Sdk6pIk+FmEcULf5FeXrCaMP8/uEJVSg/TeI2qFDyeeIwdY3
	 f1n89Rm/EikUHdSXWEKf5rmdacANVVMEe8IAFvWO1xW+hmPA+11AVE6JkXXio3U8H8
	 u7hRJCTiIt5IHAX3MAUsC/PHPSb/dSVxIlLX8flCKFP6HR86cKa0gzFXdLOexpqchA
	 vOQQc6YxrXrU6Id7XXEaTJk+P0KvSKnYOMHDcQk2xkMF7yHZfPTvEyK5ouWBSs+xKa
	 18MImADPzGPCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E640C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639659357.8520.12901240786728068067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc983746af69ce919a109a37303b7787423612d7bbc284332c1b4b40a01ca963
Date: Sun, 04 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746396593
