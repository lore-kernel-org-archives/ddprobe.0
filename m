Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F4B333437
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761000594; cv=none; b=BeFRolHxrVMuwyegsUlACzoSXa/Hp8WLi29rQ1pxFK6jyaJRC6uZ8SU4Ss11txMLS17fU/AGeL4trXSzrdJATA8UG2WzazeAXeDUiQDfdg4QL4B/FtRRbLXLxwuvgFfBcygGGsBhzrWhTB2bHs8MEgw5TxwvP2GPP5lEj7z8X1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761000594; c=relaxed/simple;
	bh=4apiVPhVuAK7nSUrDhBgKbvDrSGdSiyza7/cKhNCLu0=;
	h=To:Subject:From:Message-Id:Date; b=AdTIDvMzNRAwfE2+OLxvQj0mmMQ5ctazJ0UdxSMmz+MzIrIXkO52jBUQeXJtDm2v226hrIxc0xWey1UstPhEbcxeLzPsnnPQHrh52iMTLc8EAbv9wfMfowvUVTVs1EBXs4J0tyMOzTUtPv21aWJ/WGa8D5iC+nwWbeREnD7TJJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2nw41J1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2nw41J1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E40C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761000593;
	bh=4apiVPhVuAK7nSUrDhBgKbvDrSGdSiyza7/cKhNCLu0=;
	h=To:Subject:From:Date:From;
	b=F2nw41J1iQepdmEH5DoC4Uuu04ZUZPuxtw+Jys9NA13MzWko4PEGm3C7/8rtj1k3w
	 QDk27dXefYBypzZxF9GOK5zSgK+Yt/u+JCE6E34R2CQ1ahAPeZAJBWEDAPvqiFJ4/T
	 f6FlNH9oZTR90LM69BWvzIA99jhaVbCnU3Tk7y/H4qqMUxnFUbPCcxOjhl1A4fLwkE
	 3sut7wkccennHlUG07vE/cEe7738nslGTKFQgjOWMRSBVuQEVirYljLdKSvNx6JuSi
	 IR2d+9wHphToaqDXVbeb1WuSnJBsoqW0bwzr+payJzxIvOZocy7kUMp5QxjmiQ94rA
	 Gvf/zzmjfZoGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90087CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100059358.32398.1527784531036146164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c64e6fb55cf604a17472bd0009c14033438f6cbefff97c7f196f256adbac29e
Date: Mon, 20 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761000593
