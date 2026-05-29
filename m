Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C1D30F815
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780071154; cv=none; b=rSROpNZ3zpZZPm4TLnxGgT+dow+EpkmltnI4Njgi5bFlxJ1O5GXjiqJ4mYu7CsKGt+cShzdexeNj8Zl/pF3KrkiVhfXiQQAB3ngULZJTLOhY+M47Ya50zuK7KYu/TexfNTqexv1q4f0tet8lb/BNjjSW7QZIWnsmiBymmJgz5wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780071154; c=relaxed/simple;
	bh=fz/7C7AutvfriZMNwCh5oNTwA8fMGODnHtjragIuia0=;
	h=To:Subject:From:Message-Id:Date; b=pFSBTVh8pvmbtG/bAPusdBq91pZSSE79O1UQXdACHT6Hd37giUbeL9G365fsLcCt8oyS5NE3EAid9iLk7awhfYxgknkJsS1uCI1xD9/3HVX2/YpbsST0+CfakLHhtYjYkrtWx46UEnNO+Dj64Lm3DsquM81TheGbUEUSnoQjyFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLj1d1YZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLj1d1YZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D266DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780071153;
	bh=fz/7C7AutvfriZMNwCh5oNTwA8fMGODnHtjragIuia0=;
	h=To:Subject:From:Date:From;
	b=fLj1d1YZzIH4J6VUmy/j6QX4FHu1nN9d1CVdql4cqExt8VYVwUTGvrTrsoU3AuxlN
	 svl41cSwVEXu1STObjnOYetDNa8ciRyllFB2eTkCnpyruFjPlquiNQcJ3uOQK258WI
	 sSNtcNtS2kuRTpHSpFIXVyb27mzc+1QqbUXqUydcW4VgE5pZptXwGuMiR35BDCo29X
	 C545kCORGwkmH5f79xXu6iFbBH1zCt38uY9dDUav+lZrjxTp/YVpF0R5dk5JOrc2Oj
	 Faaqbi8yRMjZ+nAb2iOpfVPTiIgfeKUJn/lBLSaVNbp80tIwmjz3/ZTZ8HVZ4tThCp
	 znszqtVDGt9UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72FDCD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007115374.24677.7498666762437743153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1c286d7bbc99620234e72fdf3a7291107f65df0a6e384b6ae70c35e3b2dd5e
Date: Fri, 29 May 2026 16:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780071153
