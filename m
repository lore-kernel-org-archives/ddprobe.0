Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A2826A0DD
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780718074; cv=none; b=kwZkf8tviaScs8mo3A4k7gEes+uBZ1YBdpunuahD5rNNr3OCNoxHsablWXKKPgWfailAAx15fPbZp5Bi1xifDyjR79B4rPDuZ9DzHnic95oi0+D8thlpm8Oo/1ZySUvZecr000jbMpUMk1M4tbrin6r86SOY3tlXrnUuO4ntHwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780718074; c=relaxed/simple;
	bh=a6j+0kIuOJbnfVRwn5pBt+74hhs0MvWMRS0XrVaBwzc=;
	h=To:Subject:From:Message-Id:Date; b=ZiyJG6/x8EL2jmqNysnxcxA2HCRHu7MiiXM10xnqNxIlgKS/Y87WSLsQIhifAB50kNtwOZOJKnV7ioVjW1P0EGFmbIM8rwnvAzRdRDOfn3KNYkzfoee5OEpOg9ek+hutfdXoIfBdJoIZ+ymLLNz4NhqbczAGqJNJcibB+d/8biU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkyfcCCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkyfcCCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4C7C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780718073;
	bh=a6j+0kIuOJbnfVRwn5pBt+74hhs0MvWMRS0XrVaBwzc=;
	h=To:Subject:From:Date:From;
	b=JkyfcCCOE9kGOcAZvL/ReubCPYzZn/pdjO1HIqMyDCZ6aS++lQR1qKpkm3t4MbUlq
	 U1anGW5so/PWzFGv3nVWDGrviOe4n4NShnvK8hsn1viyXn+Uhb6CfPQ5WL9zkyFiVD
	 tV+ql4N/cDUNNL83DfrlNEpIyUVD7Mt8ceyU0tYl+J5DnOoUhEAFss0GcsN9gMqewx
	 FC88eEbxBXnf4sbL4ecOTdve7pO+oubbI8SSDFbgDkeJMp2ccx3cmvFtbpV4339X02
	 jHT/d/KIq/QKxjXSRBFV1kZdLLVEzPAizKc3wkXfESI7KgT/0MnJ3LQnJw3VCKFxde
	 7rqWlTTS8Qy7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC18ACD6E55
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071807368.9187.1259003206938556755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76edd9381a041e13ce26577e20496e9c8591d17f12f0d1c5743ba95c9c420807
Date: Sat, 06 Jun 2026 03:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780718073
