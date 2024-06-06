Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531AD1802DA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717668443; cv=none; b=hHXPnKAt1jE78OTgtKUYPolEB/DegZK6mSeN6kFQZ0ZouO8z/qntbe4/TPlOo3/yETWpjPkouLZ8uaKSeRpjBLVCPBkO6iv2whR4lm6zAbwAd2SFGhKoK8bOKDVnDj3EyzVBfMLXTId3QheOjGPTkPckAlpFXHxQK7CE8BH/KjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717668443; c=relaxed/simple;
	bh=vpFi+7sql0kuUwelhreM+4bfcK8Hueifvfl5D4btFNY=;
	h=To:Subject:From:Message-Id:Date; b=BPTGCHRUYx/u1OMvEkkw5uprj7tZNkgxLiixoTpQp1FT8WmxZLL2vSguEVcPGdWF6WyTaR5cwDmyAVerW6FKUyeNovHAuWt2BdGgBVX77mhES5O23E/K2sumOW2hLwt2uBq4EcmzYZjKYXVz8J7iazoXqIl8h4zUfcX58gwxP6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDAduILL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDAduILL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF5DC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717668443;
	bh=vpFi+7sql0kuUwelhreM+4bfcK8Hueifvfl5D4btFNY=;
	h=To:Subject:From:Date:From;
	b=SDAduILLKgv2xJwclnz8U5WAJiuYkzNhHc5q5PpDyw6e37goQTNsAcqX1+qOvxk03
	 CHdfTNdPkx4XrFpPNTZUZY6fJZL4Xqg+QUbrUo6WDeUhVawCYuiYqhff6ALDz5G74i
	 NW57k+PQCFdY4LYTMI31lDCDvQ3WpcHXigg+qJINL4/pNx40HppdDZI9zK5HlRg1/J
	 Xoy0wQppFKjBaLXg5T2eV/gIk5uIUUkLGvxrW8Lb7PsFvQTvofBiI6r9yXfHiTkycV
	 Z1suqQ5w7dC2jniVINpLxOlmOXlKNyufIVGQRw8u/dT4Y6iMEa50lEITYS9QvUEG5j
	 +HLWEqfVRo0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0936C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 10:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766844284.8621.953955546580270292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c00b78734e8be6c26d58c5b9a3e2894c4d8fd5ad53ad6dbfe606e46d9a260f
Date: Thu, 06 Jun 2024 10:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717668442
