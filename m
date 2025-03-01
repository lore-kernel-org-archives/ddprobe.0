Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B00E23C9
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740872334; cv=none; b=pPu6p9A7IO8antwo/1LSBZa5u3CbgTXyK3mq6C6izJfgouMgw0UQsvB5hsvyOu+q+W5KCa4QLGDm5h8feQsBrzx76p2oHEL+s7gc9CuJIGgpLloWYr4ZzCGQRoTX8EA38N4/9GB4mKojutg10VFlS5mvRM3VqwlRNOEOTc5IAQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740872334; c=relaxed/simple;
	bh=sEi0BzV64bcXEbQb0cXkYBhMEu7s/eMBhhs7vYEm7uE=;
	h=To:Subject:From:Message-Id:Date; b=eEDoMgIIg3w197Tyyv0lUaWZ4IJzmAhlDFnunwSFPsnM8Dtj4nuySNK3+/T2j12JIYHMJ+ZdkOcTiTjkTIb2IT8A8HABLUI17HPntuqVKG+DZmBdxdickSYXBXgLmzXegTxiRDRaW0/rh3VJnpAc971v5HyxvMNgdrxmVpob+Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbiXas5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbiXas5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD637C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740872333;
	bh=sEi0BzV64bcXEbQb0cXkYBhMEu7s/eMBhhs7vYEm7uE=;
	h=To:Subject:From:Date:From;
	b=HbiXas5dvInFSPcg22S5acb5ioSDH6SgCV49oLS3vIRiCdW9DYWFVgn7fdL50PZtJ
	 7Wo6qB9BWP8ysdPPgq0jiiCRmbXyE3+rj97qCpNx0LZC6eBvCQ1WZk9NJBARx3MabU
	 fyd6sNx+V1m+jzbYl/T/cXhd8vhxmYtTUDmGnZpzQKLNVn0uZV8UnqKywBFhB0Prra
	 hXMAec70Udi4E9ZqL5gZXVqF/26ZE8hTbcxT208u8cZCOShIe+3No9SWGDxVnW8O7c
	 FplafiFW9zWGgyCDZQo46Q+bXeTMYCfJ7F9ePSP8y/8Qpq2nPMhoLdd5iABtWJvPlD
	 WloGuPMQ3+N8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2870C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174087233362.2368.3879879509367265979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd92a399bc4ef751589b3e4a0716a6781375a8689d1dc6b7193d8aeeb908beda
Date: Sat, 01 Mar 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740872333
