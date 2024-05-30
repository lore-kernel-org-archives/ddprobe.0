Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C3C18641
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717101263; cv=none; b=OF2yCiPI9AZ3grexmMtE/c3lUsnDBsTh94sJiVySnVJAlQmqDkHanXjPr7gG5em/d0bjz/3tA0CD873W4Dkyzi8GpiRQHpleHTKwpwXThPfJyzymMoRwqwQ7u6I4s400xZ6iQQlBO6EJ2ZHwk0sMOx/Me+I0Osbu0ZP8ksr2Oig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717101263; c=relaxed/simple;
	bh=widIGDitEiM+MBgNnNnX3GKM6VAYqI0fa+hXYJVyPds=;
	h=To:Subject:From:Message-Id:Date; b=cnoK1mFcBfFYn/mKq8VWXHta0pxZ9HaHRY3AOD5Qhjxre5uOHzuknUHF09gvCgRLQbsg33z3itS+7dt7REvdaL9z706ImRvyuJ0DGlvtVcey90cMey8VVad8awHdyWJ0au38r63PO7wnN45vC2trEgywvv0moOAtae3q7+M+6QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOb5DK2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOb5DK2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0499C3277B
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717101262;
	bh=widIGDitEiM+MBgNnNnX3GKM6VAYqI0fa+hXYJVyPds=;
	h=To:Subject:From:Date:From;
	b=lOb5DK2U9UB9pKPVujzXtjYsCCGN8sbR4smjWq8+/u7VIF5sacuLJgeeQELCuAigr
	 DQkKlPQkp2W1TnD8P/lNEYK4t3VaCUjTeM0Z2i/ftZR9sg1jJDwZvPAQ7wa7cedPpl
	 CqU/ya4PUhkshoCj+RLoacJkEIgumizHsjjDr74ZESg2ARmuK+/mG6pPe3eiuz5Hys
	 0aOzfZe5BQelmtTXuApONmG0NHpzB8+XEVlczdypxl+MEfb+5KcrmOKr4YPapaDHsa
	 iFGS5dRjoqSkFyj5LKDP8wXt47AFr9gNNTJ2A+hUSdCYOoJrjXifq9tybwE3EjCkDd
	 SE8bYfxBzAn6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F5CC25B7E
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710126281.6094.12000587307561792475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c1a5828af77811ea74f0ff035870b3675d4da696fa452f8d801d4954edefd4
Date: Thu, 30 May 2024 20:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717101262
