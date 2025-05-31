Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CE313CA97
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748717394; cv=none; b=NXqAyEbIQdTJkYqHUjhJPtQXf5hPwnqShERAncl76bSHiVh1+c3Ql9pkMjMEzayDB1YZK7cvd2f1vvaJbhZajGB5iklb5dwF8FKeMwAlSa8WW3k1uLe472fmF/EUSV9DX1PXOYaNgwqfmwoU6qC2tQ4VXpJ3FKu1TSvPW1bUwy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748717394; c=relaxed/simple;
	bh=ffloeab+e0eU9fguFHMltAETTlSvlUrT3QUy6Q/G7Xc=;
	h=To:Subject:From:Message-Id:Date; b=h+KcU6g0ltwpjFPEVO8Gt+vDueLzY3Uh/7WHZea6ojEmaar3CoJg+OMz1JD3hNXxSn4lSW7k6vIxrk6lKzOBiviFpVqhe3btcKwzWn8fYe2Xpw+CGEBBoWx5eo6sfLMabQS2HLdRx0yjBEP+LLxjrNPPbTE+z6KHCiwAppDNFqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tyl22IgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tyl22IgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FDDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748717393;
	bh=ffloeab+e0eU9fguFHMltAETTlSvlUrT3QUy6Q/G7Xc=;
	h=To:Subject:From:Date:From;
	b=Tyl22IgVCFqDV5hh4tDtZ/dAGOdvdqWKI0+9iFiiIKSoHUHbAf2EXrzEcfa7trTPh
	 1eZgHhr0MjS/+hlXl/Ltf5FbAcDEfu0j33xvn+XyftLR9Ji9RwK8OeaFTWbt1Sw0x4
	 ya/rkRcip4GN8dWZW+aDr5gYCOX39eUceAPsh3VXjjneJaU6z/sLdYF+1HDsiiPI3z
	 le9mIEagQyYsRyAN/CmtzbDAY5wiGcK+ZpfraWUVcwgsOs7+ZgFRow8kogGVCttAb4
	 G/8fokDvmIal6n5P6Umb0SFNSNcRrjbSwD1I38m64lZ4mXdvVI9tH68vwqrJqaPqpo
	 SvvVJEDFPaMKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E714C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871739357.21104.10048986064949307154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2a0e7f2673369215426930940816972ecde75a5e5c3024ecddd853a2df2a1f
Date: Sat, 31 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748717393
