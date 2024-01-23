Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89EE66B3B
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706024297; cv=none; b=Cp2g9R1lGVtI48GJMXnO8cGhkxPmjaf/XpvvhabymZzj0tZkLzBvGc8PFHxxIUXyiE/IJl97kLk45HkJS/fjH5DayguVSMYB9KSKVIBcdUNOavkSZk3Dir7Wnmvc9n3ntcUITqc4THKjpMHJjPa8qIfvkxKk/EO85jvhHvzSV8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706024297; c=relaxed/simple;
	bh=DNOpJCLsO+cr7KAxKQkcZvevslVjRxT1XaVPqJPsQ6M=;
	h=To:Subject:From:Message-Id:Date; b=t54pXQTmgoIuFQw4Mkkw9uk23juS194Hdy7H7Tj9VzJCy9QFhizcQ1kpu+OUdcEwbi8ErHAdXM61J+YffPZv7faTUHnRowlnNqkJiPd5llJgy3iARCU+kA1J40KgdfyEkBKb94uoFb00gk9BffKMCJOTWnsxGavdwOeET9DYfoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BkVUf8kQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkVUf8kQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73696C433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706024296;
	bh=DNOpJCLsO+cr7KAxKQkcZvevslVjRxT1XaVPqJPsQ6M=;
	h=To:Subject:From:Date:From;
	b=BkVUf8kQJTK/BQtn9LQ/dA+9SbkbqlVwSNYOWtqsla+0LvkZeSkadOomhEoOXIPWb
	 TvUbAeY6FECviB3clcWamGPN9+mcxNZrFgbVyB9mWUU6cl94uNx2ui4nZgd+ZVyhnG
	 QVClwx4kovzkqQnTdVAXKLZqotDP1y34xp7CRY2oV/xyzShMszKRD04uxjHWVsBiyc
	 C2RU2Qz5hxD2Nk36f41KOZI/vz09sIUSnkF6OaCgpZvTTyjo0g/INAM0vOHG/grkKy
	 w5XEGmkCJrDtKMiw5gUNRVgB9jFqn3C15/v/jRjNp+Cab10rQOHNy4f1v409ETUxjk
	 R1MBEgNroA9gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9D2C47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170602429638.28149.4743430044431064144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2285308a9a709762c79bd191bbac209e108c664fd3ded61b029b865487827e3c
Date: Tue, 23 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706024296
