Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2785521E0AD
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750330794; cv=none; b=PDAwfJKCGIpJhjcSLezj5GyLIqvMWrTeBlhhFrawClFJXpuszIjcONVBWOXu3t/hwhKCPXpLM91VHpDUA3BI7HbioxDbCxq+kbKGWSSRwXCioE1LLIEWHlap6pYaHRLHMa7Je55cjmWWVlvcKQN2+HkKmqe4GySa/zC/mj5gYR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750330794; c=relaxed/simple;
	bh=XvrouYwZjoVnlHEv/C6EpoDX9rIUlKFGi00284awXbo=;
	h=To:Subject:From:Message-Id:Date; b=Buk6myNRQYD5QSZv5TtYMxzqKJMXXcV0yXFA7WHW+wb0aVRF2iCBIn8Dx1ObjqGmslBCAG444muWB/LG72I3jeyWttmroDLb1QzAs6Y+6FvC0IuGP7keIzLXG7fITRLUPW9KbJiWauHMso/6LokclQZvOB+z3aO8OUroz4w85LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxkVzHBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxkVzHBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EF2C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750330793;
	bh=XvrouYwZjoVnlHEv/C6EpoDX9rIUlKFGi00284awXbo=;
	h=To:Subject:From:Date:From;
	b=dxkVzHBW/NAtyYoVvdvJ6RVi6VtYd8Qf9/8mnEZKqI1GrBQlx4YJL0Y5BWqqEqMND
	 J1mfQ2LIP/4ydRnLVWkClh3u64j103vibjmV02DX8SOJYSt7eQQdfuuExV7WtKdwvF
	 +46tfFatIMYtAKAfLQ2Zwg85pSEuHkNEPCHeM40ngLselpwrMSElzZ0zd+oFDSJT8E
	 wehL75VT8nTHqQ196tOvXvpitzjK2CAIBc9g9wdJBHIHWMGYlaMC25t2yQdDbp0M+1
	 WUghf6y74MIOSEEbhwhdCzCv8m2ujnT87HpNE3EPj28VCc7QFtWSLEe/nhZ4ZUQ4ya
	 nkHEHlSNiYjcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE2C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033079357.13136.4632190325044589394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7398ee6235ee7ce86da5237c63d70199f7bf0fdc5f88c84e67bed5bd30edc4f
Date: Thu, 19 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750330793
