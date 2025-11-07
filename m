Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B0F1DA60D
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762499994; cv=none; b=rhXmo/4UdoCDEOtob+JJHKXEvhdnVT1XzQ8THbEUrtOWsIKrD5KCYAW4BrWjZUjZLxdkBJYrOBNuikUlhIWkD7W53bX/oUUFS+e52oem6lMXWU9KLR3iDk4kA/0zye72yDzhi6f4npBcIkhkU7r7/sxChn5E9MVW+R2vlVwyXkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762499994; c=relaxed/simple;
	bh=yZsqOuWHofJn491+tp5WteKVKrMCIRA/S1CSBDQ/ao8=;
	h=To:Subject:From:Message-Id:Date; b=aerh0sS1IZsZXK06/df3WBD2jQhf+Ca5IzQKbPqsGEML1jAEwe4pm1WvwYoVmuoDJai1RRkFR61rM3L2Zs8FITld/0B7f9jst7Zw8Yy2S/8QLaMiq7grYqdlIvdhE9QJefKh8AkHxJGmftiF8M7cLbxWB9SBXMV0Bnh1J7/uKTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkCokcVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkCokcVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFEE0C116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762499994;
	bh=yZsqOuWHofJn491+tp5WteKVKrMCIRA/S1CSBDQ/ao8=;
	h=To:Subject:From:Date:From;
	b=NkCokcVgf/8tY+mLC3lvgnrnx2AK2OH5x4B87FfxlEArkXmXNbTx7bXCGUM8/aP+U
	 GgUVjCmY0vqgGGJ11geUeqV0xWs02TSvjinVwlrmI/d9hSDKF40UlaVdKA3IMfBr7e
	 Bp5+6oxGA5GsUinHojxXRP8jAlG4cgnPEKuflUh1g+/kiwYXFJgEvBmyefe0PaGydE
	 GqfmxAMCU0s3leumUG0sGcybG8ehUTJH+FR1bhxqXSd1k2J+qWr4tNx7Hlmyb4duYl
	 S6+b9EHNHfKhLW6UuS3yk2tk1UvVKmi2uwRKEdviGUCZRnxJflF/I2PwcpbMIhvGO+
	 TRuemHi+osUeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28E7CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249999376.16508.17856965499260762038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d81fe34f229410190aa638dea29771b5532261e18ff36b2cc5e5da2afbbd683e
Date: Fri, 07 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762499993
