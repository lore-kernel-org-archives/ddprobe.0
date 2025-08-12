Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18ADE23D7C0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755013794; cv=none; b=TFu6jQ0Ez/iJw00DjoezPr7LGloRP9wU8CDWz7XdsjNErOx6nfiZJ815f74QhyTUbOamVFZsAcFLfBAE9nLi5T/5zWCChPdmZXryX3X2RR/eRiRAXy6rpn7wrRJl0wFgn8twLGy0OiFeCn/Bfc2Ajwc0aFkAX4xDak74q79JxqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755013794; c=relaxed/simple;
	bh=kp+T/0P8VqZC7K58Be0aa7A+L3Z12TKZKmTdoU1cJKE=;
	h=To:Subject:From:Message-Id:Date; b=P8XsU075fyFwVz/i9r7MFjOCM5Lanuez4Gj9XrkEXtKtj3uRnwK/EMSVQue9RDON53UYabdBsr71ehK3Vtowxwv4DsMucdOCJXrn1YSWFpdmaNbO0SuWXjDPbmvgvAYVO3dsqaBkk0tVlwoBZdq2wduw53WzjwU3X13HF5x4h6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXAL/xZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXAL/xZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C887C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755013793;
	bh=kp+T/0P8VqZC7K58Be0aa7A+L3Z12TKZKmTdoU1cJKE=;
	h=To:Subject:From:Date:From;
	b=CXAL/xZfiefkot/AnTl3wLo0HpUAOsYyZH8NIoXuUr3ZnOMwymX1rHk89G84Vv8Jz
	 Xg/nw7dkZWiU3gtaREIZpes7vGL9t9mLxPierztvG/ItxGcCXuaI7PKUP9KVnINHPp
	 l4k+QZ7/Hd/yfgfFPD+Rko9v/K7VMJxcg9H6ST8UbeeioKANUYDbqMRn6PzEXM8Yju
	 D7pcPqDoPl9PTHcBkfwlYcOgqdT9CQhC9YDNSryTXe7Da+Te+ZnkKzSwoiNUhGDuM9
	 GyayA47g54hoJXeyDg2dix87MJz0NFQqkP7e6B3KAEkWUqkR+ScKVyNZMmAW2fAXW4
	 jWeURQ2AlF0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED84CA0EDC
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501379357.26214.6755409086825893523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db8998f36dff1753fa44a9268cb10f0db7ffa9c6193ffedff1e890d69b2f8bb
Date: Tue, 12 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755013793
