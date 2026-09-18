Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6C32E737B
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789707634; cv=none; b=lP2kVem3zyioPZMRzAgAbUM6RJbQ2Zy7oeQarZ7CnUjOXt/BhintsSZwtZ1uzKMejmAlwqV4rpTDrD6/LiSxeLINZlWWUF3/RYAEz7Y3LzW8DHK3oYMpZFz4+v2/0TSr/pri7VjUnwZoLoDZPWA+LYRbyyMJ5M2HvitE+ghnNGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789707634; c=relaxed/simple;
	bh=RX0KdZZWdCfSscdgfaFX/ZMeoMtjEYRm5GOUTwoMKco=;
	h=To:Subject:From:Message-Id:Date; b=CNW/4Pr6pAXzS3SwxY2kz/9av+/FgzMS/cNsWUaiD5KN+7EfOk17bMGrKHN/CDF/bL5t9CoEKGjQzC0m5UFkkw2LsEj6zcn3v7tB0w46lCilrf9yAEVlpUmTOL/ojO5S/E4z2cwYxzuaBEvgdQu8gzzO1tbLj2jSp45qxRVo4PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shS4pwoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shS4pwoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED01C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789707633;
	bh=RX0KdZZWdCfSscdgfaFX/ZMeoMtjEYRm5GOUTwoMKco=;
	h=To:Subject:From:Date:From;
	b=shS4pwoC++LStsuLFWcbA/LWuWaHXDRIEagRiy3b2XmdYYQj9X2yF1S3FcerTxNDN
	 IUv267zCzBhmuR7bHEH5xCIjQfRZLkc5ojFEmJ/9JWYe5nO6aTt0D/VDO9gbE3iivD
	 nKYbXpQ2oFPYcw8E1F0Oybhn/A8V/6vRcig8ntUj1/2O08tNByV7j4Av3z/th9c1ji
	 GDdSPJkNaLg+pQOhkHt3VU3/4Z6QBBaH/jvYrtA/Un+gMhm6mo1ewMDBkR9IpztR/0
	 MtMJOs5wSGDTQfg2EoXle2QvlAND0A1W4VcmuhwHY4Yessb0L4kca2iLnsYkEmthna
	 8FAzk2tyCzTcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5F9C88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970763368.13404.16756124475723359434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646dfe2a19c9cb641c9752b9444dc358cfc1f790b1ea4e211fed802205ef5456
Date: Fri, 18 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789707633
