Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AFD34D38E
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762624194; cv=none; b=tdKz+UQqYU0YG7BtDh6iBL8Wiqox9HQ6nCTp84vi7b8o3w1O/HiWswnN4lNy9WNo/W+nPtLnJ5r00vyXQeXwZfurgKZPUTDNHVp/+hyyDejQulA87E5dBUBCDCwfi6R4CRKNGsEFawwaO4f/2ssmH/qFKYFczDIBB0b6iBr+XvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762624194; c=relaxed/simple;
	bh=4/Ync2Xn9LEg5crRGIEIwTkUiLagcmbr8iltxSdq31Y=;
	h=To:Subject:From:Message-Id:Date; b=t/JLz4gaIFtTMPuT/OUvKZF+qttKbdzxvMTtb/rJ7b5CHndTLRGdcFbAvvPFOl4IiZLoKQpKhsG7NwRgjU7kdSQYiyGHt5xJ93V47KcIO0nlJQmXHQbnUHQqASBeRplhrQMPMIxJf9PpjvVgyJV1SFebLKMjwU/aCgLdY33BLS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ricpmLu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ricpmLu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A714EC4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762624193;
	bh=4/Ync2Xn9LEg5crRGIEIwTkUiLagcmbr8iltxSdq31Y=;
	h=To:Subject:From:Date:From;
	b=ricpmLu1OuFbL5G4jz3mbtCaBzEciC7Y5umcAjOI5qEMlrTldqKGZBwEassTot5m9
	 yZFBMoyN81ulY5BdHi4kj1P1xUMNjRFeINP2Nn2HwNxVMyO6AGmCjl0UJsRKUn4Fwz
	 rvyBb/VwzCd6kpqTvcKY8NEtV0hF26zGEVQpJzP4DbROc4tDc5T/Q9Y5ufBnvO8qjs
	 OVDi+jv/TYa+5BzO2cRaN5ChnDWyYZ3iQMNkKB5L+w1Hoa3PmwLhHA0tzjyaw5614E
	 5Wii3EBQnxtBcIKE5kN3vJnhl0GbLEdqiG7VHtiKAzNoxF6yro2RJI36Zg5X1yB0M6
	 hAIKbCfcxVvRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98030CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262419359.19694.11479192886009950601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00d9a03c4d8c64450941b79a9416691eb7bf5efee5e6b505c7b5ac05352b51e
Date: Sat, 08 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762624193
