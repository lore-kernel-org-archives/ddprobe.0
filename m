Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABFA53AD
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720916423; cv=none; b=pVySpYR90o8QOVC2585alkuS10hhM88qq4E+PdMPHLm0dWgkWqtHtFFGPHwEkJAQ9ixQ6+H5EvgPIqFBuRZGOh5cNRgMzJm4R2wXp37wjKgZDfXVRbdEVd2z4YiBw967CwDx6T0LBM7OLAZyoxDLh672O3ub2AHusLWE9+WltVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720916423; c=relaxed/simple;
	bh=UdD8gwAjCT/k8yVytxDX78zBXT7KWefqy94zS0hKh2A=;
	h=To:Subject:From:Message-Id:Date; b=Qg3xkawXLBvbtBPLiIxQF6E+b6kSH8PyovAc2Opyb3HrfLWew6n0yQhLOz+OBCzwyk/KzYRCVML1PkJdJ++38Oej6TsmVnASeOh2l3kZ5ZL063UYLxX2fJL/xhftg4HuXBupa3KrSBHr0SHzxmdgqmjA+ywOdbLaw+2++19euIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMoa0ikB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMoa0ikB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7081C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720916422;
	bh=UdD8gwAjCT/k8yVytxDX78zBXT7KWefqy94zS0hKh2A=;
	h=To:Subject:From:Date:From;
	b=PMoa0ikBKjShkbhVkvfubhQfXyNZrX+XL20tbD7SjXX+Y/hyG5C93l1WT7SD9i5QO
	 F7AKiBoDy/KTU0n7nG7oX2m+9lgojPcqJgs7SQLChzsqs8Ci8verd1PV9CGVcVHZlA
	 bAIXSILLT4KuMGp2nwl6N60d3dlhy+Z2GPbiraGlk1eTxs11YsW6vzIibkfKPGINw5
	 5P166h8krO4fJusP48Sl1dYGANLxropXS8Uj8HDInmqMzspMtkL1ZvNSMYyCmd0Iwn
	 MyskcNUYVc5v2xLC69ZgWTpfAWWrquMK5KLn2Xbh2uely0HKySRJOJeHOhgsP9nAN1
	 5NHNn0f8ok0/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0E0C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 00:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091642280.25511.13992227137034687171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22091d44709121b8378917b98c07bfb5ef049e975ea26948cd39beed74a98e2f
Date: Sun, 14 Jul 2024 00:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720916422
