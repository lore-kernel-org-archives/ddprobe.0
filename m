Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308AC140E38
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732736154; cv=none; b=OJnfSVM8M3qqZdgQambthVaEVi1NkR6b97C73xo3vRoBuIPAXkboSs+LxKMwvuau8KXE4yZ36wwab60F6M8bCzuNgbtpYPbp4Sz3it5pz3RvlqyMZHaIGRroXdDUI1WTUAmPnnJn9wQCbvdWfJnT6JHjQm4WXvg+Saethh70BEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732736154; c=relaxed/simple;
	bh=R2rnX4sjGv4GwmGmeUDA23vc96wIiL2Eol15uc9cA0Y=;
	h=To:Subject:From:Message-Id:Date; b=fXcrbCPY2OY5qdgHtb79JL59+UlLdL5KKB/l/r4siDz+TKb7HzMpBD2NR5zr3FQ+i8XMZ1kp3F+CY8+VAZzBPv1R5FO0IK1OOYjSQJmo/IPEkExI3oQzfwxYiHuqJzDhEw617vhPVFanGh3e9ri9YxoKSpO6BH/EYJfdc9+eUbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwjbPCUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwjbPCUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FC0C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732736153;
	bh=R2rnX4sjGv4GwmGmeUDA23vc96wIiL2Eol15uc9cA0Y=;
	h=To:Subject:From:Date:From;
	b=jwjbPCUD4eQhj3yyb+T5X0lehICop8+Rm87zxFzJKziPboRQATpUTTr1xD0wOWr5/
	 m8TnUd31QJ3C1ufVQyfubuSmMLZdkF1gr3CQJZJad5Xt5RlwN+cpuZ92y4D1qtCQ+n
	 ZWHnShHZ9X+wai8tf6v3QwDHZThbZbfDCX+McTVfrV9kQfoJ/h9BZ2UUoNEZ+AMNDg
	 ctonBLNHUCd82dVEb0+SQ4u4zGYK5b2O+4WR7BIn2wIcw/ugy7+WibLYTTXrqHfffC
	 GZ/aKvwI7qhnL7+iN1ff2H8awjRvBnWjgSO3reh9D6X8z/8ns7/MrPBLDt79RpCwzx
	 0917iwqDHGnAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B60D6D227
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173273615360.27623.11596441375932976177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696f0cf0c39e1676c587bf448e9febbc368a79c80e2a7813e135cb09af5dad57
Date: Wed, 27 Nov 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732736153
