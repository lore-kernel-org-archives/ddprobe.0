Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB132F4321
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749728393; cv=none; b=BeEIo4MD7YpQK8jnj4oVP4v90R4se3apjTxT+kutE44Jt/ALCpXRrifDREWt0eB6VEaZ9fFDn+mtgtqDIrKf8McydSErHmzZdKqosmeiwuWphoUz8UXmEq1OAZG3S63rvzerM41dU3saAXdU8qwfnUUazVKF1FRtU6DQMVnyFfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749728393; c=relaxed/simple;
	bh=Ch+cjBqs08oy/N82FZNGZuvigGewUAYYCHITO5RWEcs=;
	h=To:Subject:From:Message-Id:Date; b=ummArLrRTAzmHU8Hi2vMsqi91lX6EAUKmiurzbGjxdUdZ8JlVPtVyt/oi1+GdJIjLYjHuCTeJo1Glj67qy7UobXcZC4G0f3io6DA1wRo6O+vHhPcAzVjkw7H6aOd8GcyuNSszxxCmJKYEWr0RVfWiZIns4E4IT+HoegzTbLsJUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6nwwbnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6nwwbnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DBFC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749728393;
	bh=Ch+cjBqs08oy/N82FZNGZuvigGewUAYYCHITO5RWEcs=;
	h=To:Subject:From:Date:From;
	b=l6nwwbnPdDfSh3mH8ehr2oHwx13dufFeSIQQ671AGfvpRNdipfyY7Y7sF9AU7xlYn
	 UDSQvf05R1UIhAAO4Ie+nguqXcprbPTj6uWADrn0KpI2t77al4vaOtzvNaQCPfQvkv
	 I1N3yIoEzWx5QGSfcpt72ZiGlkxTIg2SJQRN6TXtWvlH6HDRm4B/1gIkdRarsugKcM
	 a3HphctTgiJkVTrvNmUi56nqv0Vv4uFvMVyqD9N5Z1HyCAnNYNOv1LxT4odN+pUIi3
	 0shcgOy69FlkFP3+9RoyBSYazYNaoGc9WFDR9vhmdZnKaGJUsPGmoGIEkKLTytGcwJ
	 /LhWq465V0HPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9572CC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972839359.15561.16820902765778361181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9993387b9a3304f4b7c3e905e2e5f385a2ffcb67a27210ddbaed5192c88a393a
Date: Thu, 12 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749728393
