Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4674E17C64
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719540863; cv=none; b=ODTB2X2LmqS6WCdTzoMwMGF9OoUALJe+gqMy/YAfM3f1wMiJ7qtaTV8pMd2QDPnBPe70eUagZ37E6A0n5GMCPMRSkRHHdvsRfFOFCENJt5WUQ3l5wUH5h24LG1PI19S5GY6n5jGxpAeYWJIYKPDYPdOBjKVBtTy1wvMrQgggxYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719540863; c=relaxed/simple;
	bh=GW7WIaj65g7+0Jknlith7FCIxj4VEh1Od1lWT8UajJg=;
	h=To:Subject:From:Message-Id:Date; b=Vpblp/C/9Hk2tOcodXkstNnVTEBNVzRgSKdg54S4JuezceSyqVgOQaNLEyLRoPz4W4Sj189QhbpGEynJiOSB39bhIonjduJz8+tcOF7B4qIAHUoFlo0lVDwGezHwAZmG2Xdwh5XgZwtvQhNsZ9c0Ch2imnh13ho9ixPZXXATpG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISaAPg1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISaAPg1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD07CC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719540862;
	bh=GW7WIaj65g7+0Jknlith7FCIxj4VEh1Od1lWT8UajJg=;
	h=To:Subject:From:Date:From;
	b=ISaAPg1ChWVMDG5vLMAvTB7ehjXMVulY8hfnj38EkbI9wXM9XKqtjPCl/OW8PmwZC
	 CxJjrFyYIO6HQbZNr6hseauPBpTvJtr3A6bfqw42sD+wMe8B5L2hPOFTxh/CQLUXVy
	 u12palTZrf8YvkOXJffcZP4X45WCROPJRDa6ZawJNHuyYML0lkoHEGNLCp3rSoklkN
	 KWq/2BVXVrXqSXluImHkdJJv0sp2XsP9gq7q8zyOuvpZKQsTxx8Ndq8n5UwFwzFSvJ
	 Pj0u03bdj02zIBRQ2UHmgM2/HeOkMZURv+RZimO9fNKWAfRiZQDWjTsuvfswA4co+E
	 /qyccfF1ntpYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1E7C30653
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954086276.6568.2540478599541338397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1109536643728a19ffdb98f5f64cf335b6f10744a9995015aad21b81f04cbdfd
Date: Fri, 28 Jun 2024 02:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719540862
