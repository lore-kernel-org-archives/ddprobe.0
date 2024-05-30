Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608366AB8
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717032263; cv=none; b=ZwviQhc4Ud4gKA41jTm1burCK7QC+gatt9Mv7NEjzOo48LdA5EtXGg50i6x3ftZ+DJ+KixaMW2A4LBtKp3XknAtOnn/OCn+BnteMslQzZ2EcfufJd8dPa/BW8NiupU2W2tao2sQGfve0t6kq/XUfaAWILhQ1lWAfjqZwyXQQA54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717032263; c=relaxed/simple;
	bh=WmBKpZ17Pl+slUBQm78O+hAGXgEHZ2uaDZ5J4DGSJe0=;
	h=To:Subject:From:Message-Id:Date; b=dlPCjgggrXVF1vCV4TIyy0n0clPiVUxlrB7ATzwRfeo0VyTqPwZ5ZdBpN2VGxO8JHW5E7dqC/WOFpDqbi9tsKJVNktyR4dhuuTSMQzrjJPweWFqYEk/QHJc+Q4Dn/+x/9wIgdU5K77wgFFJiNNynEZFgpj6+9L2AzI2Tr+SlLa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pi1OfQGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pi1OfQGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D6AC113CC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717032262;
	bh=WmBKpZ17Pl+slUBQm78O+hAGXgEHZ2uaDZ5J4DGSJe0=;
	h=To:Subject:From:Date:From;
	b=Pi1OfQGHha3UXh8KEVJCUjB5WYAI4n1Rwc7T9oGF8vA6c3mlCSTP102yLrzbGHdvN
	 PuRWR3R6LA0O9zeb2/+J+O0cZ5dmj3mm/pE0BHE3yIddAD4MRSt6O6g3wSTWVatrNQ
	 TQ2M1dBWxF8KU1h/Rpc5kCJuSE/aGA/i6vYTFYTr8GsEJOBnwWRB2s+2ec3c1QkRJH
	 ejN7iOd+rdPLuRiqXaD3ytcGslfGJSvExnKZN667Jk/k0Y2y2PkU27DbCq0KI1kTSh
	 JnEhvkewhb7okvkBz2CERQkAmu1YOPYO4HWxtkGyXwu/XCEqWQSssPrLz2jlgjH3OF
	 pYGn3n3kFNNPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C451BC25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 01:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171703226277.15398.7927347639191075819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec6b58e58c58f08fbf5ab627026a0bb18615b39cbb802903611e190b5534e0e
Date: Thu, 30 May 2024 01:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717032262
