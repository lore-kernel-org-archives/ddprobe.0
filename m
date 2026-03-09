Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CEE199920
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773020694; cv=none; b=ISDVu3lD5s7o1MQQTCHcHMGknvls5TzKL8j7qSK69TG9ArsSm+cM9XKOsOnhYAHja9EBJZSdW38zm0qlFPuhLrOA5pU+UKgzg4EY7kNMJJNOBBIv6N6s6QCouRrbXeDAZsNW8Hp93/nrVmOryxkXsITWX9uXb50tcwsIDYmGnLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773020694; c=relaxed/simple;
	bh=YI6wRMWahf1iNmJMvhzwjJ8Mqw1hPC4IX/qlusLmacA=;
	h=To:Subject:From:Message-Id:Date; b=Wl72aNrmRPJrT6FLePAj0G2qXR8KiWJrwaeg/5HqFuM9kjHbWLpqqZaYqGYqw43RdLWZv+vYzD4qty/Aq+M0siEqKoV//2+99Vwn8hVziYkj1fPF1BHMk9pWXOk2iEBWJe8477mTX/vXNBzQq7k9TDObOBqrJTTCxhcRZjIjlek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtfKgdjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtfKgdjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A40C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773020693;
	bh=YI6wRMWahf1iNmJMvhzwjJ8Mqw1hPC4IX/qlusLmacA=;
	h=To:Subject:From:Date:From;
	b=NtfKgdjGoIFEtLvy88elYEdLO1DyvOaW5zOfsdH/5xM8j8D+hHXF9SpqYaQbLCEHC
	 DirfBHWyUODZyPjtqpcweKs8zpMHYp41o2RLP5t3Z/nmIH42UMLdzv+NqlBmX+cB/V
	 HSWAZsJET1gKVdwuTmIgDKt2CEmKAaWPLVLMjQnn4LXOoPufN198m87ZE1Tozd1Isy
	 9Svea8wc8tudrlaPNom5V6BrGbA2GNjPy+5HEShDRomQ2F6A38fD3L8V3LYft/SGOr
	 hl/bhKlcWqltfJqdJ1OLtuIX6Ky6AJUas+GFSNyncg/w0TUKQS6m79a9g5QHrhKYcP
	 nwUc9PTWvEUSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ABCEA8549
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302069358.11017.14582901226826585838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23959f783eb3a6cfb56151980d395d06c2752fbd39c36a43f5bfa91787839eb1
Date: Mon, 09 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773020693
