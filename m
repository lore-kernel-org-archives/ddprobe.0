Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219A3214A9B
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751743194; cv=none; b=aK6CzGOCnOuqmN6Z243C8wmclhGXVgRNsPbfjt4NU7b6gSI5JDYjhmq4nEHdQ21+0lpGXRtvTvshWxCGjPNwJ1fTJL21NbaONljil2Nl5DUppsTEUMOrf4gE/SnKnVvGhLT27iXeR5piMwQFaAm3KMklB56zttjyrQNXnkaorA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751743194; c=relaxed/simple;
	bh=qyRI+cd19jeux3k7A/k2MGt+5FS89eaIJfvtK/a8slY=;
	h=To:Subject:From:Message-Id:Date; b=Efx2wBMTOTZ8d1Q3TtZUcgkXWJnYI2ADEOARSEZ+GqhCW9I6xFOC8vlD7ezOUCqS17t2zWaw0m433Z4KmzcZOzhaPP8OJqL8T2qUXoaldKGJr/PwB9jceHP67ZEO278ESbS+8QGnZ0Crk5rfEp6DR6RCi/9lHkwbXpRI3vYoR8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPsb14M8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPsb14M8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E345C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751743193;
	bh=qyRI+cd19jeux3k7A/k2MGt+5FS89eaIJfvtK/a8slY=;
	h=To:Subject:From:Date:From;
	b=DPsb14M88qzktiGyAvlUfyC10pNLBdLgU55MHNnCV7H9Wxd/DPqjN1i/1TKYpXyVN
	 fpFhUpK0RG0fYq0cqLfjcBgYckFy7Bw54j84oXJj33jct+uFnOSXCESW8u0fK+GWp5
	 AcX21biHeRfCHb4M0G1PN0HuPAG7KgxS5DAIMvN7SqS3M1sKBchCZnZd4BVi28+85x
	 jm0bpeZCnrRhXNu90NhVvYK5agBxVMKiR/7mWmCFb+mILYhGbyuEocx+YqWWkMIzCi
	 iPoLXzTQIUa1rqmFcoiMTsGgyHDvTx3B0w5XIjJ/8wZ/qCJl/GPhi+trfO6Jj3rWET
	 WF4CGK1cU/U+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63AC83F0A
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174319358.24068.582457204745819149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9590c542d22a8ee30ceba0f2362c09ed9a601de262a7fd431af5f2fab4d51a0
Date: Sat, 05 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751743193
