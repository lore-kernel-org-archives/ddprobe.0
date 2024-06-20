Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEB14175A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718866163; cv=none; b=k+ez6V9qvIhbSF+N71e8Vy0v+IRUdZFQW5zzkGNelrSWnCLjSLZVf0u4GalV/BcFEsxju8zZEETz3nzOGNSds0zwsMWJ8TcJv5Xg8KKr4TZTTpa9sIaXbjLM5IFq0yaagLHBxt8X93R+ksA3TT+NkC9pbdRyqoFi+mjArFbdXf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718866163; c=relaxed/simple;
	bh=K0lhPMvuojK/XHxrdEM6AU+8EZNJTd9jZv7tgh+fpKc=;
	h=To:Subject:From:Message-Id:Date; b=JDSWYXAEKalQwfRI7ZWhL1SZPIP6q7CvHUZrBtBi6wyGTCECtuBfjPkLfV8T6PKyxWtuTFJQ2kf9sqTzdZj5IYghXCZ5G2kgcbLkLEH137vY9QjcAhhCBm+NgjoILnz+0GT8A01ClL4sHpTn4zEB3xfKExUPd04HkEzsokNK6C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5bWKI/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5bWKI/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F78C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718866162;
	bh=K0lhPMvuojK/XHxrdEM6AU+8EZNJTd9jZv7tgh+fpKc=;
	h=To:Subject:From:Date:From;
	b=t5bWKI/Y1vHbn8UeB7sBHt4EiJKAVTtpuYAQOpQ23S0td85z4qckZ6MD4rSrFQOzE
	 ydy8HjUkK89r/8sxPLmVmEuaBiN5WB6StRqOn++PczMQSyTfK1Zv0EQ1VC2Gqf+hJb
	 b18ef9pwTbjbawbO376aZde+7Pi+7q5zwUCP3VxhnqpAXrBfcTtf6ySpg0jSR2wKXL
	 JUqmUDv8uN2pNv9K8bImp6pK0gBao1iXgp+oGhETZAE8U3PkT9fu/OjjsvqFEGTDrg
	 6Zyt1fcAq6fovPgi74iKIjRCzbY0by1Z/dYicclmeF2nXdELP3XMLk0KbU57Paf8zr
	 LCewmuubmFw5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5456C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886616277.31091.14444136190654877724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4f93206d3264686283abcf97669064bac03962f5880eaf7444a686f88862ed
Date: Thu, 20 Jun 2024 06:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718866162
