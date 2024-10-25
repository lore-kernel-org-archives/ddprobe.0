Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8721F76A9
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729864554; cv=none; b=LadaYUjH8N6v2L3T6KlnFMW2X37El2SC4yO0r6T16Z9VDu5zf3BrOAkz0Dlr1L23EQFj6O0PzDRnSX8CcPkZboilX9WuDxSfoEKUIflh6QNWSLyewO5Us4pR32jzVIgUBpmWAXLpivVnH+++TIrfw0a0LlaJtxTpcMzmAmNGocY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729864554; c=relaxed/simple;
	bh=2PD5ciu23lKN/ruuq8du31T3pLARUVPBETLenswY6ak=;
	h=To:Subject:From:Message-Id:Date; b=bXvjMxEW3jNo2iCcnfIVuZNoIcIbFi0fROlhIWgm+fuaU8bDt1isgDGT6l7Qt46w3E3uNvFB2rhZ6VgGzqeO5QlEkbClol3aQHBH7G78P37zi0uK/KqFV0ieCTb+FxsmBqM84Hd3nPJF7iNckB6WbU6njW0sLx3Ju2y3GJ8xD+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbbfDJLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbbfDJLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3110C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729864553;
	bh=2PD5ciu23lKN/ruuq8du31T3pLARUVPBETLenswY6ak=;
	h=To:Subject:From:Date:From;
	b=DbbfDJLEQ1pj4sv/Ao7fi51yfNr93cSViB6CGW+QBrOQOC76s8kkNuxAHVhKwEMv8
	 61dZTBpONwE1FywivjP5BOTs54tOZdaj4EDDgiAgJt43eHV6hfZCrc5A6FKxhHlHk1
	 vIbflTp8TO/+4oFuQ/iUD11JQMTDn9Ee1C7C/jK4NQxX72Exzgwfs0xZ2qf9THxWBv
	 gu1y2puMA8BMqm2CL7m56SZpjN3aDgeukpb4umMUWb13gp5w57asN+OJbmVhZq2UDh
	 BxU/x0VgzlqdsOa2V7PJRhe3dClU2KXH8Ec9k0+j6gN8tX1ZBpw6qKxFDXRZKjnKMw
	 8HJo/V9u7Ri6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92631D0C612
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172986455359.22239.11093928946629045869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b9e0cdcd4a3e6aca5b64f34b21b60f7fe87fd60211800e1fce085c12b97d96
Date: Fri, 25 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729864553
