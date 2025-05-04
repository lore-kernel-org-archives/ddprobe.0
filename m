Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD8F8479
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746360594; cv=none; b=sDLkEC4GpQWt2o9IvTrOBbsSqOEpRNMXSDsfD9Uf+d6cYZPvea3E+yL5ZAM5WMb6zOQ7oPnokseTwtSXtRjzyu75Y5TLiVqrqqwR/R7r/nOCGamWj5AHw5+/rpDpeso3WmUPbI05ki3fE7u/NZ7TEsqZG0Opipydz2Gupz3/oiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746360594; c=relaxed/simple;
	bh=Bsp+lBhdvJIhjeih6VW/yVszaOdwtJW8yCxymhbMHOE=;
	h=To:Subject:From:Message-Id:Date; b=ck4hEST+VCAgxbz50fb8hpI39SFgK8WqkzHlMRIl0nTQxXVPE38iEUAGZXMhmNhE5kKD4b4Tpi5Z+brGgCG/qbKJZ/IIUR5hLqeZclrp2GAXeFWPhkyjPOiIHMqXdvXu1PZdcXCHLb/4asxFP13arc5xhT48CX3mytbQtszTZhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbWV2JIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbWV2JIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4772C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746360593;
	bh=Bsp+lBhdvJIhjeih6VW/yVszaOdwtJW8yCxymhbMHOE=;
	h=To:Subject:From:Date:From;
	b=CbWV2JIUswo/g6pN+bLW5zDYmtIGNL4J+QynTfhP7YsgRyq3kksZm6UK9wkGL0Kdp
	 ntZpGjTUUEyUzH6kCGevykhNzthF3R2WMyddZldOLdvqh6MIDaG11ZtQu6FtPnksZq
	 fUXF8XxjoJveXfoTzi72P3mexQQMZR82qi2kQygP/15esXlr+xteFyk8s/4Tp2+d53
	 ikg3/5RF7ZpcFEeftBX0EnDRlao1n+XheEerOTXe7lt0qS0GfGbUyncTPXXRHB3RUa
	 0j+DG2iI5lAAeWXqsm3gDIhQ6isJkHLe+Yk9ZxtVubci6RqRrc/KAU/HCmBW8GQ9A+
	 32QjwjiuoxzUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C7EC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636059357.1261.17284541945960848875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfa94f4e4b9962e662289aa0d615f7d59b16cce043471b41e75e549b950150d
Date: Sun, 04 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746360593
