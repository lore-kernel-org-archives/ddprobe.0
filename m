Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2247B3AF647
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774505694; cv=none; b=rfcfEoILbdLIwAeucG+X+3HDpkTzCP/udnUtnURNoD9F6pvUN+HWF3mojAmD0AW4CbSF8O5Kjw9XZDR72pI4z7SGCSgGAdsVqC8PDO+qv3kyKq0ht8ANVDKefQ8kjC7dX1ifJ7H1G/Qj0TY8lJPDkxP0VIvQ0IC1kara6vIG2Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774505694; c=relaxed/simple;
	bh=/DPP7IboVXZKjV4eS09mqb61jkKqPtvO9gWB1tny8FA=;
	h=To:Subject:From:Message-Id:Date; b=P/+YVwiLh3zXjsJXsBnQmjt2t++9agGYqK90NEE8pmIxBTKG46ioZfjCrZoREgo5PWEMF+LbhQSovwvBB2d4qmUMesrs73IdzF55RGDLF/uSX+YwV0zz554dkgv291YZatO50f7DYRCy+UBuQg5dpBS01rBJ8LbwS+b6scMogdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaE82SGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaE82SGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1F1C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774505693;
	bh=/DPP7IboVXZKjV4eS09mqb61jkKqPtvO9gWB1tny8FA=;
	h=To:Subject:From:Date:From;
	b=YaE82SGvH7SnHzuppB9vrnpea1XSgBXGDo2oqv/KmPtAxOJZZyeGdZ/Lx1wf6eIUP
	 LCHc1pw9MCswirpE4qqSCPr5jZfyl+5VrRWoJUOz4ZoIFwcF5RDrqPpqhR+I1l+t6k
	 GRjW63KNisfLeN+ZNu2tuP1FnXcxC39WrmaSVlwE+nQurbv9vhoqb9SFKQjfAWOV0E
	 pliWoFPNF7aSYXbPR35YLnipmzh6EEc+DdN5qicqVzgTaYP8cEzvCmoXkE4Ky48ULm
	 7uplR4Ru8YOqIFhpCo+2HJB8ZDqVTvdU6yyBUJB5Dzo/Fks7438mGhRU1IAbPn+Ji9
	 PSjMGHglAlAPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96039109E558
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450569359.10805.1601913816933727604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2dd7c3e1e4a901925eb87610b6456d7060506458db467ce92d863bc2ae7cebf
Date: Thu, 26 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774505693
