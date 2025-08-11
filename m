Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C427023F41D
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754922593; cv=none; b=JIJE0wIjdFSgLh7iI0ri2IGpyO9hD79InX5MXSAHV0fpDuQ2SlA133kiOATC3UffgP/XHjT0OS+xnR8TBkna2FkyL5KdrVjplp5kpbxgboAUHae2XqK89ymDJGeGQHSRpMym+d98gMcF1/69MmF0XqoN45ULD0oxZgb6RQheqCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754922593; c=relaxed/simple;
	bh=f4C+JycnYuMuggxZD9W0m2VIeW739ACqmNKgq33GO3A=;
	h=To:Subject:From:Message-Id:Date; b=dY9iPy0/lsmni0xIp1BIwuU54cWUPpY8n1dpgmcnKbi1pZXng/6wfDPd9CgW6OJewhKUFyEIn2/CrNU8CrDg3mZpFZx+5Is7+00SeOAF3aZ5QJlkQxtCWjBgg5rnw/7GbJsKIdfRY4VEwcCnJ2u40gLPX0yljsG54ZAe6qt4ls0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USJXw2Ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USJXw2Ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF80C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754922593;
	bh=f4C+JycnYuMuggxZD9W0m2VIeW739ACqmNKgq33GO3A=;
	h=To:Subject:From:Date:From;
	b=USJXw2EczdXFJEujBnVXR9BILZPrVe8V7N7dx/eN9S+UI+kCTfynwitK/Hh6TRpbW
	 2HkOnPIcFWCuEkzxkmCgq44T/SLnA66+arj0++d4GmJAyNFsVtDzrXeXo6lUPUCvVg
	 w7HFXwCZHCppFvsK3X/4oIF4lSo2z/v/TX/0Yu+buYtLyqb+YBNZRj36YeQvSq98rO
	 e7qTg8ieSTh5N8FsRuY38SqLTwo2M4Fk7liL/6omH8spFGedW95uzSfMmmPwDNxDSK
	 xvpX51RkTywzlf+0tOcHTID3SOx6RzDl0g3CMbyGOdlWPQY0jsGWQvUYhOKz29PliR
	 QmweW7XLphNRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917AEC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492259358.7130.16797892130232917746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9508949d23e5125a85aa0d2166f3490b637b93b1a1d2db1d050f604eb139898
Date: Mon, 11 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754922593
