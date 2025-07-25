Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20134232368
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753440594; cv=none; b=MaJyKDJ5v2lW4al3sVL60lk309JFYNjKBQH3oKR9qcg2IlBEG/1rcjIQEsC/qEt11ldn+PWaBPR9327fVoQkTCfdJfHgQBeEpsQArjXGLrmTWcQlveHXpN+Dk/3vb/bQ9xIpHd/cKvYYkt5zCnPUAOiEvZROYk6Z7WQPXxd/zTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753440594; c=relaxed/simple;
	bh=pXAZdIJK0675EU1ww6AWyQBWh5bo/3stFIJClPh95bU=;
	h=To:Subject:From:Message-Id:Date; b=eDaWf1Lpw7odgmErjTfjE8/D1iQ9NcD9XvyzjTK7QfQLF9sSl1CzWFHxRZbWM8K+HJkLjY50rBU/gXkfIb4wFFNBlB/z+0fIS8KlB9gRlWMZnIav+yhVH6soS1pkhZlfyzqhtZeH0SzMXxzoT5/dRP7NUyKkdwR5kFhBp731oFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGDQeQPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGDQeQPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCF2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753440593;
	bh=pXAZdIJK0675EU1ww6AWyQBWh5bo/3stFIJClPh95bU=;
	h=To:Subject:From:Date:From;
	b=mGDQeQPh1mLjOxK8YgU3YxU3weo5eMw+DzQhIr4kodVcMolXvFu6+ofE4Ln33sAJD
	 8iBLnoImUhYCHEK1wSQcod3SZCoygyyxj1VB2nxUOJ0k4hcjH3p9GvnuIsHGyMrnIR
	 qfOWswgCyxq5u2hDNJrO/N8AxSf5BacL2I848RCsYI0b1OrM67BHmbcUpxzIqU1Ucj
	 RahCoh8FaFbTY6suK+lj/qztcXcY2LvR8uSAvoP1Iz284w67v7u5zvxO7QJGdRJZtV
	 ysYVTVSJmmS1HOyxVFznH93nFipOh7VE010XoqpGRcqJz8FkFrnoLCJtcQ34JyE/D6
	 GvHZbvId3gClA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3CC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344059357.30488.756636360125548545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c91799d5a7c9ce798254e7cc33eacf89e6a81e0156230e397f8cd3239e26c9b
Date: Fri, 25 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753440593
