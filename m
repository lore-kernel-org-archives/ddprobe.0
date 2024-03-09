Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD35171AA
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709956097; cv=none; b=a+3HC12YrSj389SiHUEPylY+vf9kpSaD/k7aEXOday1sQUt1TgIXe7NOWI0Y1CFJTSqdaAtAqeHxCCW/NphEUqQrO8Bq1o0hQn+aoa4nUqsL3uJ8CVgbeRckVphtUBhspgnyPz/i5DhwjLOJEMU5Q5MtBX08r91tJ1wQULLsDos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709956097; c=relaxed/simple;
	bh=C6L7tD4NCOS8fNFBoBYdU4MpBek9bmXaXnwXG+I0zUs=;
	h=To:Subject:From:Message-Id:Date; b=pl7AVu312d3+FeRh5qAUmcyW8KI3Fiv1BWt2DSDxK5UzaLpbzmk7o4DkVPWBRJGPqRhe/CcigSp3K4nqv1ez8gN5M0uHzLv2Hv1a0qg5uGy/3EbkE9Q4NXPqWJUPEOATnyOOnXLJGAvXZlqWQ6CTaLzv4X847H7TqcfjeSn3awM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oS9G/Apr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oS9G/Apr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87AD0C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709956096;
	bh=C6L7tD4NCOS8fNFBoBYdU4MpBek9bmXaXnwXG+I0zUs=;
	h=To:Subject:From:Date:From;
	b=oS9G/AprgEb1GFIj9AYzKEXzec2fRP6ci4Nrun0WycqjA3z7x2qj0HAPKep7dHQaA
	 pONx5eGvAHIEPCQwnX4VWEB7C/YcqvU3TqzJV/U6mLORMGDeA+J/wrvSLb3YPljNc8
	 1WM74hU/JYJmDdbdwghZqIGELXFHPKdRwBzVoAsalBlVABTNGbS8fh0LjbyUuNKeDu
	 OQifwEhT1+u214nBMqZovb3CRinvrQjXytsKHevC84weO0dPNGeaOE7TMUZG1qJXYX
	 lZURExB46nTfZL7+tkjDG2LMiMLm/J77XJ6Az+EvLTOVKjSZzviaxome4JZzlBiedz
	 GiD23nMFKSe/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63914C54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170995609638.1165.11738383355377937270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002b404484bfbd34754f09c523690e7e2979a67b0926c00616918c492e93eb30
Date: Sat, 09 Mar 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709956096
