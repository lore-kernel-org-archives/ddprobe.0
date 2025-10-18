Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2658424293C
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760813994; cv=none; b=JPaQIDhzYySBjSckgADxPIgYzbfkhkBtnxSRZh6XOE1QHE3OEqnKGSiaJg7P8c2PyrsU5YHsndi1DVzVtN0eg4MOdiQqdGPFtJm3H4n1AwGLuvwl12fNBD4r1EeRs7r1ol3GFij7Er8jEfi4KSzsQdxGmVRdPNNnjoQ78BE56jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760813994; c=relaxed/simple;
	bh=QTGEGdhMVnOX4DpHpy6UPgpQMYEbSQIamdGkOSXeWNc=;
	h=To:Subject:From:Message-Id:Date; b=brprYpGSN1k9OLuw2C1Zmd6OyzCLzmkjvBlLpax4Lisn8Gev/s5K54cAYCqlACwkI9ZflJfvrh/8ZJwZ0DMnv0r+XRHXTDcJQdPIB+X/WYVVL8t1Wytei6/6PqiZ2ZCL6bzCK+ZLrIZjmjpfZBKeGGPpmyyaEdjIOH8oPMwnn/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeJbXelu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeJbXelu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8400C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760813993;
	bh=QTGEGdhMVnOX4DpHpy6UPgpQMYEbSQIamdGkOSXeWNc=;
	h=To:Subject:From:Date:From;
	b=TeJbXelu8ZPOIh16tQufRIR8d02rkRN/sMV/31BPsBl/YoXErqDxeD6oPi09nYC7n
	 Q/3eFv0qoOd4dKQV/05p5xgc44MuFFFBdUCF+IZftgrjuEqXng5Q5qNtuM5B1kATcr
	 stUGRyhGHXDARe+BcMxDKs6YSuh+EPPBg0MMAwKVVGC61JdXwagMyhfhDD2FrsdZtz
	 8lmjc7ANCmXc4VioEQvRRFDs0LJEjDqGY8IvW5nAFkBqHXiILd5BwFP09Q1Xat4zth
	 hfLbPp+0lo8wAcqsT6uIkBaXOf9wCR6UYDre/06n/2qNG8Wyzbm1Ri7YaKxtrcnRY9
	 zCX25VAyhpt4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F8CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081399357.27805.2815611892447463879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffdf55f1752efce752670e2d26e70292959d8a8186aa30e4ee4a4902f44f278e
Date: Sat, 18 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760813993
