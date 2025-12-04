Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AF6314D34
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764823974; cv=none; b=m+x3B/xzvHM4W7k3zN7l9qtwtcCCNLGk3aqqdyOdb08WcIlrP2eTU/5I7+FjhKGsNMlmls9YjjEFxVDT4A6rzYfA1xvaIww+w508OcsLi6lbUsZNUUkL2OyjhFltcUk5LxVU02dc5oqEpjvLYVwriHk2WOUSgIAHxbuLEmPy/Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764823974; c=relaxed/simple;
	bh=PeqNfl57rtRG7FHKdY2QJd6A8ZMOCNd+9H9ETa5U0BI=;
	h=To:Subject:From:Message-Id:Date; b=EiH9Njs9SgIjJlzTm+riA5Ki4jTsn0V2QgU21ZMrcmR/94yucNv/AU7dj3TuN6BgbiaBZe2ZdkuQ7JpC43yEJrap3B89nlNe/IHEhS/IG2L3pZ9aAqQJzMRhmcTPjQuPjVmXM9XLujlS9BVlmWeiQKE0Gz38+CDl0Ho3LT7wBec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/TIc7E2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/TIc7E2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CB5C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764823973;
	bh=PeqNfl57rtRG7FHKdY2QJd6A8ZMOCNd+9H9ETa5U0BI=;
	h=To:Subject:From:Date:From;
	b=X/TIc7E2LOM7nGAePeI2PJtMvMMOdRqbO0bqNjm+K6rl6NoG3ZezgMWeP6qq0qq9o
	 ZuDD91E/6cg2sUd93SF6/zD9b3fvnL026zaRegawccng1EX7uJspoqXVNjQ+HJ9s2N
	 hRvONahBO6Gs0Z3dY39O4oTOVjnJ/hS9LhWtGBBdPXJ3OUwyDw33Rjbvz/tccGEOU3
	 5BqWqhFpIRKQhytdHysEBFmU/hFIVLe94Om+8jVC3fUlxVWCkBBn7B0f0GAtQ7F8h7
	 +hS+Qdb9Ar1zhCAHnTmItLa/MiLjegM9ZxH6I4q4hDJt0LZPLFo7Gjn+UpzupHKk/M
	 i815gZQtQ9wsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBDED1CDD0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482397363.6713.2567736899935504076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14589d8d7d4d0b6fbb91d981fcee69de3cfb546be2a00ae1c13c6c859200d63
Date: Thu, 04 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764823973
