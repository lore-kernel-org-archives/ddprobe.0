Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F63938DC6C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789147234; cv=none; b=VncHc5iCDBy4oznyP6V0n1EJxast88oyYVJdug/qDpNYt5tlG+1fxqzfRiA0jvUTkj/pKPwpEaNY8mZeOXPK44TfpLEtVe/W6LwNu2CYaRPqhtf9kKV7vjpAfBSjdmyQY4T+ZaeA8kdKKLY8xfcgIUZlnXVXagqxwvFIOPoNAgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789147234; c=relaxed/simple;
	bh=ePr6Z3Qn5rEfxKC8l5Md9sI8rcjedJ0rvT4ZLsL1Q/E=;
	h=To:Subject:From:Message-Id:Date; b=fROvtM1ZGaQmdWxN8pnkHE5BPxqWq2VsNIx0cVsfERMGuSUhkkG5RiIxj2yoir3FUf/2pygP7MUumYOTpnPL+I5PSmx2c0+RjtI+TYvfSjixZdO4J4dxYTATgUl02B06iT3iYkQ/gowI96l3K/f53twFN4+nXW78pgbzWFxdnQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8OLOthC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8OLOthC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACE1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789147233;
	bh=ePr6Z3Qn5rEfxKC8l5Md9sI8rcjedJ0rvT4ZLsL1Q/E=;
	h=To:Subject:From:Date:From;
	b=Z8OLOthCSbkPmrU7iR1ihypQIvs3jewd+uzCJ9RKPMaB4gEEsiJufQnvBlmHTpLqf
	 j37AGYEF0t/PF96eWuq7iYX/ZFIHTDf/APsgBjyyRpN3OAsOvRf9Q5l61WmoDXatVa
	 vKdfcDfTWOGbcfFn0LHGiJmq2H/526oCSSayeQpzGOBLvjb+x3mnzEprFQM8onfuKf
	 lO3bWU31gV4dCbbkrgVBqzesd6dfugwOvd9CRD5B/FNJvszwzjyR0qgqJ69TbI50t+
	 LawHHLNB0/27QNNCaI3Vqqr+ydgUWBAqAjBPhjpougTHD0mls2FD/xtTJBiMW8XZuo
	 WaHDT3aqc2Pew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA117C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914723368.23151.14833623128502308983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e8350ef756dc09a29433bc01880b0c4782fc0b730837c16608ed8fe4811018
Date: Fri, 11 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789147233
