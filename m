Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E82318FDB2
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734947754; cv=none; b=fdd50DH/BOtyQOMjE+FmPvXGlJwWQkHSPHmopfj00X3oZ7lwY3wiJtlbJ9ieMXoORZ46w+pf++6NeALMcxA6LvwQt6myj8KjG+Vd39wcPupv6OvsILYzfmVNSsAwhpwUsjA9PkcvjfavNAcVliWqiSkan0Y2IXqzdpAYg3PpSKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734947754; c=relaxed/simple;
	bh=Fgw7NJ/519CPS0c6KHC1aVfGzcfAaZxJys60HOAL8m8=;
	h=To:Subject:From:Message-Id:Date; b=AsCLBKdwwJ8KoHhLj/9TCJ7I8mlJN0PS4BblzdRi4HtLM7jHkuERohBZFbwpQqJubarR49j97SQj2ce+MWRj7RVigMMN+mURpIDHP3JxhUBbZWlgr+FUfK2AP+GrIrq5r1GRgniHNtyIcvnp1KuJYbH/lJUkPtYMqjyofnTgcyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUTim3MO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUTim3MO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CFEC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734947753;
	bh=Fgw7NJ/519CPS0c6KHC1aVfGzcfAaZxJys60HOAL8m8=;
	h=To:Subject:From:Date:From;
	b=rUTim3MOEz0ENvOqw4PxxWv8rmvUA8yIu4FF6UxX0yHRDK648yO5BWejOuG6tpi/9
	 mahjE5cXf6ZnRlOkNANn06Wb2EufMJ4CUzVE7ERXiwi90aazcVoXz+ooeiUpUTdFr3
	 1cPI+BUoNjXU/pn6Els2svyOrTO66tXoLfxehLwI7DUGl118yuwS+oPu3r2HqeYv+B
	 Q9jTSb+d1K6KaciIyXhyifTd1qqICtN3eWBGeRLGIbjJF5c9T58p/A5y30oSI6XmKW
	 yEnbizfb/HW2dty4Y3HBr2aiWVozlwbN0nKJ+1gXdnCKiycOuCfhf2F+AwPBMmUDGs
	 gwqaFtmyIOTVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D0E7718D
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173494775360.5326.10039970770644158090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038e72f6317f83afdf0a8fe88137dc29c34487e111314059650dbbd7ebaea7ad
Date: Mon, 23 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734947753
