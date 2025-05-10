Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA141EB18D
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746905994; cv=none; b=b6wmYg8rfC1P468VXhrIN4Qu7s226h+Zd1cZjOG3SflsZhKmFbU4tCtWRIRV2uI+z+43Ca6TLpPEXuZLSuJVW1JRUjfT3eNPmZSgsk15AOEMqJdltFMlmTHkt3Tzi8Geqyq5x0403nvNe50kR6JvZBOj0iNMHyton4lBNybxvtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746905994; c=relaxed/simple;
	bh=SvCL1gXi2xfM9O/pD+tA5mW6+a6CoqJ0ZlYVNhNa+Jk=;
	h=To:Subject:From:Message-Id:Date; b=bGtkry7MhUROGdlkRkAMGMpdFDxzYaXEBZ4OyjJV2VSSrgE1KoSJfMGyOFhtpSk0ypRLEfn4Jgo8Q9tMYAU3xiv6sPHcpsA5Pmvn+TB/s0qBXCmesCdI+mK9AfFB1UKnNb3uN5HhmDyoWnw1VG+qzGdmiZt5Nl81LQ00q657IJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msFBRhsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msFBRhsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69FDC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746905993;
	bh=SvCL1gXi2xfM9O/pD+tA5mW6+a6CoqJ0ZlYVNhNa+Jk=;
	h=To:Subject:From:Date:From;
	b=msFBRhsGR5Fx9qOimpx/mIT4Dak9BaNPDeRU9asjUvFz6wC9lQdAINmUGXwt/aSl/
	 QWVyd7TZiJejke/i7kxNfMv0zdmm9Zgiz/UGXImi5765kFwtsWqhePtz6+mSepRrtn
	 FbXRzygPdRTRpzQk0zzPDg7FdaUSXGf1QiFkpVa8ixkZ+tkLJC01g+YDeq/01x+SOD
	 oFThaFhRP3JXQ/E4ysA3nEGEFPufKAVQRAu+k+PIofbXWL6Tr5/hFD4pFqjrVpFayd
	 xQzYYyPYQm5nOZLjog9krFaRqTjf58WjRLLMGXm/VHjPhskxc1yk3H2pNd7NHQVtWv
	 W/5RDzGc6hZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9382FC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690599357.8282.10044140456940207082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f93e07ffc3b503caa5a733e062d8afe9d5cfc5bb9695e936956293849c38ef
Date: Sat, 10 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746905993
