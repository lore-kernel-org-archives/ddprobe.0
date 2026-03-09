Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F4C3C1988
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773075894; cv=none; b=KumYpEOefQy+jriBy3TIFelMnonfElU77wFh9Ch/y8JsJMk/2zFp53rPjeGh3alBAi/YEx6YF1wjQBUtkgCmh/+2dprkyAPFyW92+NDu4p1C8UGwdaPlq4sqHbhCc4zh3GJ1T8BMdXNFPZohFoujfoOeB7l1z/OanGVrxLyUsW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773075894; c=relaxed/simple;
	bh=jcc3MIYdTWFM0yiy26GpHx8FMNu12VOHA2LlKPuPFFc=;
	h=To:Subject:From:Message-Id:Date; b=m/I+4RZ3VOmpM7lT+Ikmv9cSBn/xLXzM/EzIRVZqITciWpHWxL27lv4LxdDiesa+0wv3FlLqH5eVib6xJFGyqjV5rkktjqTe/xn00vh0V5Xm46IDvZ1HZtEgB+6wbLBOv+CEVtS9og7w0IYVcINcQpI8REjVoFGikxialG/DYKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMn7+0VH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMn7+0VH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1493C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773075893;
	bh=jcc3MIYdTWFM0yiy26GpHx8FMNu12VOHA2LlKPuPFFc=;
	h=To:Subject:From:Date:From;
	b=HMn7+0VH7Hv8AHAg4XKp9AK65rz0CosAMJOQ1Qs3KmZRw3mCPlD2wNbVLrhnH3M8S
	 x+kTPjbgifjjNjBiFRYAq+Bmcp9WDZTZ3TyBHaR6/RcUiImJuIP8WbbUGhaT+qQha4
	 4Dzn3kg9fB5mUTI/IhwOBDLFcEt/8ZyM77lnUYj6G3sVCquMWRDi9zJok7FXJQ6zKA
	 am2Vc+XYZB3+zWz60/Ug2ySEJu+/LFfyK9XTFxmOBGh/MxIwceJM9DAnpEDgY5XZKM
	 bSvxKbbVW+fEGjJLniuKzmKhZKqXI/wlfUph3Q8z5CRh0RjiAobwB4Lrw0m3DtTtBx
	 rQNixk2s3rb/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9210BF4181C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307589359.29615.6365588729400994507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c207ddca76b091a08713b7fcff88c7c094b4243fce0c670f6cd893e92fde7ab
Date: Mon, 09 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773075893
