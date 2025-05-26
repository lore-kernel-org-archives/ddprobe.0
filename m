Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4118E3C465
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748296195; cv=none; b=i482tCVW5T6xAsjixvGLc/3KMBSGavjZZjBMbiSbYBeDA32SG6bV4J8BphTKAaYnZZTovvDigMByDuCRoWq/STpQh0jqEz9qDSGyoLG4khNDcBtNCcvmooxQ5Vout8FGQhlH4DKc/Xk1Hr82ZqN4EEOAHJvDUWqYyyvasB1EpdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748296195; c=relaxed/simple;
	bh=PR5svwYXMYFbxm8IChCmGyrPpoGGCemlgrHhLcd7XeI=;
	h=To:Subject:From:Message-Id:Date; b=Irg2I/pHGKZyWbD+gCFsvPmAmwebHw8m+AHkK2pzXd/mzEXMmgs0/zdpeCEgQOk7oLPstlFLRcEbP+SZGCO4BGgiondimU9h84ofapYm/aOBk//4NveTgu+eRbMHTbSx5bRtVJsLCUkLXthYaLniJzG1i1tkr8TsO1NuA0QvXx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHy/NUWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHy/NUWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F64C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748296193;
	bh=PR5svwYXMYFbxm8IChCmGyrPpoGGCemlgrHhLcd7XeI=;
	h=To:Subject:From:Date:From;
	b=GHy/NUWCZNP94FZyKnFvjzBMeaKBYLUi/nHhqOcRzopfRcBZMvfvkkdiLxfO9aMH9
	 Phu5B9lHHf8Icr0e1PDBSmGaG04w9VCXEg+QW+dGTD3zwQkNttF9YA8x/yTXOJk1jw
	 1oN989tHqdVIL4R53Z4OPO2K2DrJVYxvnqpfFF2y/OIYg1v4u8PB1pf/SXO/aQz5kl
	 hw4fSNjGSLH6AUCHr+6083z+QD23wD19w0wOSKlghcs6A15mUKGhwxqOgGvMpR5R3a
	 qt0Cz6L/tDQyZ7PfJ8TeONzJ7h1uAtdiYWZmjLA2ehTerCwE0N/i0zeyK5jxYnQfr2
	 nI2vBy6qEnQDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9173CC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829619358.13762.7027856351995799548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34458e773f8e8c1fe7e9ceb29dc1f669611bb96337a51ad8e0b3d114fee10ab5
Date: Mon, 26 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748296193
