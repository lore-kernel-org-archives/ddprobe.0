Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EB733FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729824354; cv=none; b=u00UMx7xwTEwyPacVPDBKdHMa5GnUlZzpjHTTPhkbr6FL49HNMn8SEeqspi73U6I4gsNrhgSf09Q8ysXNOlVEOwGa41YvsohhpzvlD9GfwVjQf8swwWjgDayWljHWVUm7d6RtXs4DWP0d8HTGFGomrMQFMaspCuHQ/aiiYLPHkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729824354; c=relaxed/simple;
	bh=KuyCkFiZC6XuSpZpN3/IYVCMju/BfzZUXY89FnDHBxQ=;
	h=To:Subject:From:Message-Id:Date; b=UfTyxojHTfi5c30NGJeeoPx/eTqu6JTNa0EcRqfBETLZbqHNbcmpa3o+nG+HgKLPb884ioaJ6uSwI1HwxZ9SSTX64Tsu6fVEHHYq8Spq5fHuW2bRYxC52X/KG5cSfSF0VEmVS722nnX8TIDDNz57aJOg8T6N1EeIlSm5YBTirKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3Of5+vG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3Of5+vG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C8FC4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729824353;
	bh=KuyCkFiZC6XuSpZpN3/IYVCMju/BfzZUXY89FnDHBxQ=;
	h=To:Subject:From:Date:From;
	b=A3Of5+vG/HF2V2rNfGhPQjFm6i9gFWio3ZB6Xd/VpcBECGXD/VTEqJMlLZsteTwko
	 8gslo56O2JjQJJcmI/8NQ5K61pgMN1pwJefjYR7MD4rH9jZ7HKA1eHLmMurzgHjq+7
	 POLayX+qa9crIJrs5rbw5ZN7Eerf0fITVOATkTCm9PnnGtvIs0WNBNmL1sHR/M7E20
	 8FXz1t7hyOES6KWJ/1DUCMAIhQRtL35lARmoCL6jWRJTGPvYXjOIcSvbUCQGa8HsV0
	 cCZN/VDI37y0y/9LQeF9JDBQGo5B4gFWKkMUNDjzwfj1VKjSN6GJDdqBp0zTs3Qf2B
	 NxanBtSAofoQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD47D116E1
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172982435362.26537.17764381946000034938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e1c246c0a729d719bff05195fe859778456856eb0b90199220d7cc3e22bd9d
Date: Fri, 25 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729824353
