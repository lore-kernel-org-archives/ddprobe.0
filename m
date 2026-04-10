Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B007223323
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775828254; cv=none; b=MEFOSNxdK6mzvfw/rrFA1T+jQ3Veb2aAVDDkNLK6OK9DyUuKk2FJOLnEcERUC6rpNQeO2PPu1COVUgZaHvkOreEe5eUDoqTM1cnd04bXCUsFU1BqARdS+501GpvJGw+XOm6kAp0hZEta6sRpH3ovr22XHjuZH1+2H+nfAY0vslE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775828254; c=relaxed/simple;
	bh=k6LK4tRokl8RKOdQZHDXwb4Cs0+KvX7kN0yzsbrLmTo=;
	h=To:Subject:From:Message-Id:Date; b=Q46nhoi5/asuFnRgK/foFFYbs0tvvvGK5iSxbqGjPLAHQ9UYJ0ujU1kOE50p6/hN69KqweqNv21GDoYIpzfDT8M3bVqU0Kfk5w2QZ9CAj+43uQawWGsatHS64v8h66V9AkHTvkTr9PwvnHe6gsRiA03OkDij0Jt93w07qU8QQIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3MsI2WE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3MsI2WE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F7FC19425
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775828253;
	bh=k6LK4tRokl8RKOdQZHDXwb4Cs0+KvX7kN0yzsbrLmTo=;
	h=To:Subject:From:Date:From;
	b=W3MsI2WEk6FEIaRd3I/AtXCfTwNBQ/GuVlyS+Okns7R1H/8Guo6gDsqKWPe4Z6FLl
	 vF35uGfH6ZQIQX0D+s3s4WXk13llP6eKBtNCOulT/1OV7nR+UgnB9e5B5IaXpdg+Sk
	 pbg2xSk3/W+rXUU9QioZmvH5NCtEQNOECaoPAbTnfUh5mbUKZ8flGoJaM7yS+eb8x8
	 R2Zm41tZcZEriUgnJs4l0E+4ZRG3UzfmSHxep4VicjxVqKLQSx+XsvtpnmsV6gVZ6K
	 rMgYziR5ogK/IWjdyGSryB0jq4bD+hpTHxCjTTU2NQWTqY4NFjZFhPfFHKsZsAV0kD
	 Exn01iTlxgwjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE78CF4485A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177582825369.24451.13845220337798824568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8353133c5a74c4be40cbd19be8dbdfac97b4d142cbf470c7808afbece2ef4e62
Date: Fri, 10 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775828253
