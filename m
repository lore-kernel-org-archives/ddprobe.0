Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8E214C5A7
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725716754; cv=none; b=VP8P5aXiih1W/gsq6SPeQ+aHuhrvAvHh6klQhM/zlf+ltHbLeAToVwMoN0ZboBnhWvvaN3L1tKDiUEqMyw99vIJ2iZ2Nd/cX+uZAt7dLFY0xY0WaKcyD9qDIg29iVXTBRH0mb9zRAV0nukiD2TANm3fcIjdoD8fhw9RiZYiVYxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725716754; c=relaxed/simple;
	bh=3PjHYU2jN2VVJEeF2FeLvj67S6gqEp7EEPmTOOQhFOE=;
	h=To:Subject:From:Message-Id:Date; b=ffOHgpq6Tkh5809PMw/gx4PvJ7ExQshFdzpXiBoKWgkTfgZIPnW67j03hiiOSEikVlOjlxv83VY9neKxLr2cfC5ebmxqAtRhzAfxnZJReX2eg5kVfAmtOLvyKXEOeLpyelUMlYKCYHDK6LPmKRPjUW43Xm8Yi7Iom6PATVl1WX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkG4HjmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkG4HjmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA629C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725716753;
	bh=3PjHYU2jN2VVJEeF2FeLvj67S6gqEp7EEPmTOOQhFOE=;
	h=To:Subject:From:Date:From;
	b=VkG4HjmJ+BDlQfP2hQK/46GT4nhlTCXnFt7N+/Q9/sSPrpNzMJpdRsl+Z8TtOkY0F
	 XlZ8PbXihlb+2Ub6tGh+IGiGjSLgbuSv3za5exrAQHYNA6fJPzlagYlSSzLegEN5OD
	 D1SWpb//Ob/kPn8Ubl4SncRRtvttlGLVJxLdZRUtky9aympN26ZNeDDGt5Atpf8Jc7
	 k+8C+6tulUFoK1Yve09NMtt3zRXiUIJp5n010dinM3qUX0cljnDwFYs+qGWzKK/+jT
	 ppzZDzEMlpYQ5AboIepqzO1ypy/gxRUq8AhHP7ltSqDqkL7p2197LftWRJKxe9DofO
	 R74+d1QZW8cWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97727E6FE4C
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172571675361.23803.13605368236728015121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2f8787fdc8cedca59d006daa62d851008e31abc460bb41cae6eaf0650abd9d
Date: Sat, 07 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725716753
