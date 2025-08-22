Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4C227EFE9
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755884394; cv=none; b=X80zON7SAd0btpdkpEuaNUutwBngMtu1tmKxZsOwpRsddPpud8gnQT0POKc61chwd5AgUrGsP23aSjEkFF1xhW2xQZZ6OkMiD64ITBCTRgzYcD3p3U/X1BmiLbh4GiMFZcxXmvw+eiSC5dJCekO7lpE0a4PNFeoiyDB44UXuMc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755884394; c=relaxed/simple;
	bh=Z0AEHAc/OTNSJd7JQ8EJrCLkcPS0eXqu2uq2gzw9n8s=;
	h=To:Subject:From:Message-Id:Date; b=fRWInIR6T31ELV2EQkcmPPmHzLVSpjSHQ9UjoEDttVeHBjz63OfS+AEDCIVlFETeZSYb2+EAJOFQvUXTbkm7v4+A1nhxAZFfWQ9vozFPhTQ5otIeD6QA0q/n6AMn+Z7lLCd7iub+m92O36arpu8dU7tmoyVtWNRLbyPuS+Knzro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnByAAzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnByAAzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7F1C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755884393;
	bh=Z0AEHAc/OTNSJd7JQ8EJrCLkcPS0eXqu2uq2gzw9n8s=;
	h=To:Subject:From:Date:From;
	b=ZnByAAzCD1DOThmwgb+bfwxSqrpeHaSRPVhh9oo+yZGyXkGYK7t41VEIGv+gXbSWT
	 ai8jH0XWKP4MImw233VeM2VaT/HMfh/OMsSLzKaO0Db5LXJ/SVZwzfFL7bs1T6MLkD
	 TsdHImjg+43kg6g0uanQEjNrxodcivJWc5Llds7V0FDONqBWIeyPkWRN6a5M2l+viL
	 HdqvHKeVg7LRHK1EgOEnzQwThxs5FqUjFhBY6a0itlVBFQJf7A0X/RTeKB3i32ByhH
	 wGezYeMWhSx7mUhP4DuA5eRE+yBA23POWq5fOVkw8h5cyHTsMqozf00CzLFB+sJyd6
	 EctwJrn9gxz6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE3CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588439357.17278.14449705070974238798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97207f1934a71de24d32f0b80870b7211d8c391ce8256f5acf889c443b1a7a5
Date: Fri, 22 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755884393
