Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AB31E5B7A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765364574; cv=none; b=Gt5KTT63Kld9FL77zRsytkPkswOU22MRh4ZvjUQqbmr+lwQpzoBkIb1E4yMjKWeigjT8zgRbuHYxFsjtl33F88dP3LwOL71ZDMLJvFJ2dC+tIVk5rJQinZSAK0Fv5qj+M2Gv4BDZDSTLj86ptaUwxeun5yyJjE2/UkuGCsr7Vxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765364574; c=relaxed/simple;
	bh=ztqtFbL285Dad6BnZqkBD31ohfmWnKNDeBS1pE5NTXY=;
	h=To:Subject:From:Message-Id:Date; b=jSqqX4hmc0RASi4gRwV8qJ4m7jfUFGclkQn9pvixZCYwW1DLZyuZtwA7inxPtqQLwtAHoQWiSbSpkM7JaxZXN2AESfG+pN/4EHq2afzlZdZHL+7RZa8zthfLMolOe/toTF83mCCfTkS0tcj6pBCjo3yaTfezCcjrJ9S4m6LnDLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vbi8O/wU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vbi8O/wU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38DCC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765364573;
	bh=ztqtFbL285Dad6BnZqkBD31ohfmWnKNDeBS1pE5NTXY=;
	h=To:Subject:From:Date:From;
	b=Vbi8O/wUBRf5rkmPSdU931XnuxRvVwH29FJUEWCWkzte2s5/c4knBeOZGcLhjugLD
	 iJY2HElT9VmHXdT2yqByQe0TVIsZINb5x46ANvz6BQxzT8d1wJMEk/nf9h3ZM/YK0K
	 3zWqkwi/RQ4nJry7WquL81cNGNbJxZpZJ5dx7XoTZ2oKrZixQk1Jm/FxxloFiDwdp+
	 Pk2Z2l55DNIvaqxQc2hA3ULq62JmqtUTTgQCDp1+FKHgq/qL+aD5ngQunKFeWMAe6D
	 jbL6PTxQAXd5Zdwx2mn0SNK5tDJUygCHAuPFZx+XbwQKcO0kSBPggoY2Pm8q1KsCaA
	 AGsmZyJIn6QXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A2DD3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536457358.16602.13867211362242793669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f317ff0297f4ea095652d7cfec1e8be009024c2168ea7ff5c432a0da128bf4
Date: Wed, 10 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765364573
