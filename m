Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126A328D830
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755094194; cv=none; b=T+bf1tgJ3T5hfTSPle+a+eK90w/9CQJLvW28ZKZo0r6ktImYQUTlIeNM6Pj0VahCDQci+GFPmqEiWx0OYRpvvzrx+q+5QBfmrA7fPFs6JApi7Vfk1HrABKj/RLqWStKSmVi4fdrYvArnltQkMEhXaPtvwGn2m22jSQqcOQqyOgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755094194; c=relaxed/simple;
	bh=wZjeaIOZz9F6QkY9QzfHDLqP17C+ZiNbCS9jjrVB6E8=;
	h=To:Subject:From:Message-Id:Date; b=K8bUAaUraATlYb5WHZuEuEnBFyD+fAYtNa85ed43KLFW4XpfkNdm9KddtKik8u8LkrQJ7fvPWGXhG3wJOtiXvp4UcCeb8SdhWJFFNJR0mrVj2KS/5zp6qlaV+NRQTFc5Vga4ND+MeQPOaHR57xBfUG+fc4mUCp+/5zViJEvKewY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDzqggPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDzqggPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC9AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755094193;
	bh=wZjeaIOZz9F6QkY9QzfHDLqP17C+ZiNbCS9jjrVB6E8=;
	h=To:Subject:From:Date:From;
	b=kDzqggPn6nNTOewM2lmPwTXysBggfI4DUhZ+TsDLXP3G94GhmsANobl04Ry/bskET
	 qv54Cl1eAwSgyABR218fXSmUh2pHjd7SmoTtqcflw5DU1uFYtOaX2ZPW3PAV/73DpH
	 tRJF+L44pOWT0WCU3m+Pi56Sr07aliTPW6ONIzEOPZKjCf1ZIwL679vHQADJRd4LN4
	 plicZyYmOu95eNmNdPECHwIsVt1tYWRw5ecBQRUe3ctLPJyQczoOV7Nf3MahpTsozt
	 eE0sCUZHO8Nxau1F0+9PHBZwbovts01ubQEMOrwUQ+nffJNKhdTffbpzvwpEjPXrOu
	 6DkROMi59+KFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E586CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509419357.9904.14753573175154763615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e41d37d07d6190051bc5afb24be37f1509a136223523c80d5436d49bf77a48
Date: Wed, 13 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755094193
