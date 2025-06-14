Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AF627726
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749872394; cv=none; b=jeEC36r4BE9IO2XLFHOTwWimnXxS8YGIARPF7Jj+aa4H0NDil7rGs+tVR/ZJeMe463OSQqos3nc3FRt7ZtuevbqqHRqQXvp5xAmdQxQsyg52XjZFg6PQVqkiYydDm8nYebYgJGs69u0y8CHeE7n2cgM2wiIxicORmylRMYlPjo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749872394; c=relaxed/simple;
	bh=1phz/A0K5TcZ5ZObUaxJgZ/7Nj9y+WjfLPEZpyiLYoQ=;
	h=To:Subject:From:Message-Id:Date; b=hYN6GZaiNUzrgmgqoDjzjZqdJFr+y7TyCIVfAUBMYcExAjMLZeYsMb5AoFDImrTbCCUk1RRNVpZLsiATV206xt96nJeXl2HymP6BAsfzzTJH/L2PCbzhvvSad1gGuExeC036Vej+KwVpAMI4QUcif33ntHhZtLs6kavw5uudFtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBv2rmee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBv2rmee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD6C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749872393;
	bh=1phz/A0K5TcZ5ZObUaxJgZ/7Nj9y+WjfLPEZpyiLYoQ=;
	h=To:Subject:From:Date:From;
	b=gBv2rmeeTJCpVUiuoK7h6e0N9BqQN93pymZyOKUCZtjhQHnIQtzw7e5lT8/k9/VSf
	 kuObxJ1s0vmu/b4/nw4z2pWOlo6LsVhIrbAzzIXqp+EHxTzKP3Ss5k6gUUvzqqDk3M
	 Cs540tnSqQceqB+OQbb8EJeywKFoRZKYRkvb97cIMgcnC9eqhUEYqDxi9abd6j3JFV
	 zsT328BtnqbF+SJXbt2FijdLXhDOUM7GoyFvWobdHkdmB3KX1CJNOqzl7dQok/sNN6
	 P3Nj/70soYLxjmj8+qqFNs/E52YbVPbwVmzEkOaHvR54i+17Rmb77/8KUn7hs/IHCR
	 KN6DwT1i7flDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939A5C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987239357.29210.14974779030484405599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ba28321e924d694f509a732ed2f47d44dc8d9c8928dcf7b7c1a6c70cfa08fa
Date: Sat, 14 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749872393
