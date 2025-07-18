Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155D62AD2F
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752845994; cv=none; b=TAdMcYwJ7hMhS2P2ll7TtA+t3LrYehomr84/NpRD7i5mWAGYFkjVhtNYeaKJZ3EtQ4fkMQCdSqWfW44FueStA0ppht0rT3t0ZtXG2zhP3DAroPIuES6MIj3xCgIewg+WFZ257CSEeas8oU3E4xE5j/aEUM8+Ui1R8fSVdXX/9QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752845994; c=relaxed/simple;
	bh=/5MfEgYyM1L8Nf3ZTDrPU6ORirFzwTH+m2aIUxtDccM=;
	h=To:Subject:From:Message-Id:Date; b=RR8UB+VedlRXZkgZgsGnNx0EbsFUOIj4VOfqeFu93Ku4UUpg+D5xujrhB5IWgsWElcV1CvRaMCPPGYrWLIzd8hE6v6yYTDmglCKpfsGXXeWUXBp0QjHXQDh593rRbsrcKsiCG5PLHnV9f+mECDPERYK+szyMLvPj3Pgal90S4S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQsMVCtr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQsMVCtr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48D0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752845993;
	bh=/5MfEgYyM1L8Nf3ZTDrPU6ORirFzwTH+m2aIUxtDccM=;
	h=To:Subject:From:Date:From;
	b=QQsMVCtr4fMHTh9uJbDQhxOSd5nLa5W4Cof/IFfzfn4nzOlZmIzl8mLVbtyrdYxfX
	 OjrLzHIA4k4u0NUGBWRJXAFMd7YjM5P6fOljI8Dk6bPq8wWZisNJxM3cDfeaXIbDIN
	 5oNfMVIp5NAQe+lpkzziN8/NqTvcXMYI2SlPjVk8gBorz7A1XDGfiAbHNyXe3dRYA0
	 hvV8jnFY2ZAvqLkj1yDxsh2tdOAoW0oOhqmX+EYB8FGD6MZ8xEyDr+2RGCyflTTFaQ
	 8/gFSytjsJrj7Uu9ROcygDNJPh6EQ5410DV1BSSAPZsS4j+z/i86lB/w4AuVRCR7Hy
	 GjvKbOe3j3XhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93944C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284599357.16526.15470945771517635793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c8b7f1b318da92b214322b9f6c8ab5a96908d2885b3dfab73a473633836a7c
Date: Fri, 18 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752845993
