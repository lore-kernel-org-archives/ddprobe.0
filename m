Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FC541760
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745014794; cv=none; b=UKRoC0LJ8kB33ajJtvEZy+eM2rtjXJfda+Yf8oQ70ZMMciCP5eB9/VVM8AikJhPxHzkFz1oDWLO4koGnZfuVmyed7kGI6cpJI8eTvbb99Un/+5xCfVPcmqwvo/b6TyvKIoPAkHZszlUDrQC2C2NOPwf+R4VJG1IQfu+AoeQ8UJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745014794; c=relaxed/simple;
	bh=kb4GAmEtBHt3Rp+Aw+M/0Bt0bYxGUDefALlV9GmZIiE=;
	h=To:Subject:From:Message-Id:Date; b=FLATn3hGTO5qX3u3dXwk9PkXt6hVr+QaHqr/DmThZtIqDO0dznAeQpUPPVv52xl2z38D+PU7CbHG6ftKylbApKt9IUiVYv5un5WQezMf/igtVdduqcqwyRew5PtCtLB0xCFXI4j87Q1g4pboxbRpVCEeZgiyxRukso5gGgXYNBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsZQF7a/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsZQF7a/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26E4C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745014793;
	bh=kb4GAmEtBHt3Rp+Aw+M/0Bt0bYxGUDefALlV9GmZIiE=;
	h=To:Subject:From:Date:From;
	b=rsZQF7a/Wu6CFyzDAbsn0vwd9MX+DFX0vl1O+1p1rasQRioxQAhPaQebRcjUUOxFR
	 S80CawJi9pgepU9NCZhA3OF6AAVk1h7QLuWx3HvyW8WoU0cV+W+v404yn9BtpAAKQL
	 VrJT5k0kuFq49zplK/4N0UaW/nY2OZRO83idrILjqW1pmLuMekWkmnjqshMiMYJzq6
	 0MGETPhh408pdUo2Ns7AV/0P3MoaFWAwIOjl7+VvFLVoz7VzDoinlHk8oJksuPIhJd
	 sHglsb9met3uUDlQDGNYiSVh3y4JTvcHNAVt1d105aQNkkWLUOpo8aAuEIFVmO2yDZ
	 2IArtL4M2isrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FAAC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501479361.18481.11449978081236816765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966a6f40e2462d7402763d778ade58c6e6fa4c65694db02a0020c6b2ddabce04
Date: Fri, 18 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745014793
