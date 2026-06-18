Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320783BBFCC
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781787394; cv=none; b=tLiIrHgBMETKMt8hbEdmXyF6XgtkW5DAnbtQTtflsmNMkRwAW5g3xmYUROFPKIJ0Omya2/dfpWUwaYc9h/rw7Abw03VYJ8mgQ4uEdUWkT0gmb66+x9ZhvZVTTHF9meJ7kHZehOBQ3TvrqRG6SkT/OGDsj24UFdm4S7WNHUMbieY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781787394; c=relaxed/simple;
	bh=c26Dvo+GOkzz/rmzmX4FFX0ddjZ0N7nDbrpXEbswF7g=;
	h=To:Subject:From:Message-Id:Date; b=ffc1C7Ddp03FueXW/cBaIjNPPmBPBCJqdxaRt+RtK2Jlm6KkThqwZDZV2eotIjZgMqJ+c5oWgKD4nBKJSQQpeP6SiR12eQXOiUW9ssFRdDBaPG2tMNsLaAxOK/nsggkEMqDe1Opi3p1kVLYY0ze7ra0sT+qXCK1hJ9EfLYbpWcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUyM2HOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUyM2HOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD55CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781787393;
	bh=c26Dvo+GOkzz/rmzmX4FFX0ddjZ0N7nDbrpXEbswF7g=;
	h=To:Subject:From:Date:From;
	b=VUyM2HOo48KKDt4LCcjX2ZqUFEgO12A9B9ZC/UIY0TsCI5WRvJvm+M7eLgrb9eQds
	 PtuUpow8YUx+Bn42ovmGwh9T1STJYOj3GBS9dY9HXvw4oWqfEqdtdzSu4n2EwGdK8f
	 z8kgsxVs5MqOPD+Xjb2gyehbvpGoQeISAYyImwpFx+TKAKLi88kuu8bbTdv2rrWZYy
	 eKReNSOaU/XKBZQQW0e1kC79wweWPLzdrqajyh76HiWhY2bSgIfFR0y9TtdptC4vQD
	 CrdHIOybRJe9Sm2MvEdBEl9UEtQgWRjd/PHfDH6e/bD9l6aeddXrznRQBlG2NVz2CR
	 Fc6DaEA5Fxd0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05BACD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178739371.11710.17389855403244307673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b0ffbef5d8fba1ae875eb0177923d3f0a3bd5e155dbe806096f8e984bebbdd
Date: Thu, 18 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781787393
