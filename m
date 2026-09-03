Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48919278161
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788403234; cv=none; b=OWSh7w6Os8DVQoH+59kjn2uvuOc3LSvWYHvftpYg6RGvkfGkgFXoyAc/lHy85cZrixqUJTarO2Y7oZ7XRIG581M8e+xQJ4ZjzKUF25j7qyaMogPExgqPN6NctAmz5+8YsPTYtv1nB+lZWLSVZDw1znNt2bP3XcJm3VbY/yi/+3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788403234; c=relaxed/simple;
	bh=ABTwOt87DFzSRsYyFWBg//L08EoulcQ0RETDBPPyldc=;
	h=To:Subject:From:Message-Id:Date; b=L3zrw1EwsHT7lRJiREFZiGODW3zjL79n2q1n9D6Bxp22F5j8uK0kj1DlldEwQHU3BB1Zgwz88d080XolqCwdjqQxzF8CVodvDw7WCGZp6Zh4KleXy51PP6IqwB3udIkFWLmYN4+FpDcUmlpErYgghmqDZZstHgS3kRqg3/BaLI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJBuSYeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJBuSYeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4841C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788403233;
	bh=ABTwOt87DFzSRsYyFWBg//L08EoulcQ0RETDBPPyldc=;
	h=To:Subject:From:Date:From;
	b=pJBuSYeBvASbPB3WNKW3tspDSn3wFVS7ysz9NYTgj6/dVYxnTo34/Ixi69rVfoxSG
	 DjKDmJyRzdqB5j0uyqaH9c7VGeRKY9A1NUFPgsprUXermxMhXpXeUAM9l/oofmECm8
	 xl8q1+6gNJ0p6QOzDuBJnDnuUFgtwYushcJutSkdoYQ/IW5tFkDgvosD2sXK9Hp4RN
	 vbp/sTpm/GL26ot1vk47P0qUc54neEjDMn91U7qp0awqX4D0rgpMUkr8Bt6/LAPNdw
	 NTN+708c/QbTfpcIdda3ZsDvBCKT/VS1zD7QceXo4EUeFVvd25pKKq050LQGi/haPS
	 iRxx17QJ1Dwjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD35C61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840323369.27533.9053528153842971211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3630ef8d03d7215a759447caf000f950d5d9552b5b9d21a761c51d15e12d984a
Date: Thu, 03 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788403233
